<?php

namespace App\Http\Controllers\Admin;

use App\HelperClass;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Spatie\Permission\Models\Role;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules\Password;

class AdminController extends Controller
{
    public $path;
    public $title;
    public $create_title;
    public $edit_title;
    public $model;
    public function __construct()
    {
        $this->path = 'user';
        $this->title = 'Admin Setup';
        $this->create_title = 'Add Admin';
        $this->edit_title = 'Update Admin';
        $this->model = User::class;
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $addition_btns = [[
            'parameter' => true,
            'target' => '_self',
            'title' => 'Change Password',
            'route' => 'admin.user.password',
            'icon' => '<i class="fal fa-key"></i>',
            'class' => 'btn btn-sm btn-primary mw-fit border-0 fs-15',
        ]];

          $query = $this->model::with('roles')
                ->whereNotIn('id', [Auth::user()->id])
                ->whereNotIn('user_name', ['admin'])
                ->orderBy('id', 'desc');
            if (request('college') == 1) {
                $query->where('exam_name', 'SSC');
            }
            if (request('school') == 1) {
                $query->where('exam_name', 'School');
            }
            if (request('university') == 1) {
                $query->where('exam_name', 'HSC');
            }
        return HelperClass::resourceDataView(
            $query,
            null,
            $addition_btns,
            $this->path,
            $this->title
        );
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $title = $this->create_title;
        $roles = Role::whereNotIn('name', ['Software Admin', 'Investor'])->orderBy('name', 'asc')->get();
        return view("admin.{$this->path}.create", compact('title', 'roles'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
    
        $user = new User();

            $request->validate([
                'name'  => 'required|string|max:255',
                'email' => 'required|email|unique:users,email,' . $user->id,
                'phone' => 'nullable|string|max:20',
                'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048',
            ]);

            $user->name               = $request->name;
            $user->email              = $request->email;
            $user->phone              = $request->phone;
            $user->address            = $request->address;

            $user->father_name        = $request->father_name;
            $user->mother_name        = $request->mother_name;

            $user->date_of_birth      = $request->date_of_birth;
            $user->admission_date     = $request->admission_date;

            $user->blood_group        = $request->blood_group;
            $user->group              = $request->group;

            $user->exam_name          = $request->exam_name;
            $user->institution        = $request->institution;
            $user->board              = $request->board;
            $user->edu_group          = $request->edu_group;

            $user->year               = $request->year;
            $user->grade              = $request->grade;

            $user->gpa_with_4th       = $request->gpa_with_4th;
            $user->gpa_without_4th    = $request->gpa_without_4th;

            $user->payment_method     = $request->payment_method;
            $user->payment_mobile     = $request->payment_mobile;
            $user->user_name     = $request->user_name;
            $user->version     = $request->version;
            $user->role_status       = 0;
            $user->password     = Hash::make($request->phone);

        
            /* ===== IMAGE UPDATE ===== */
            if ($request->hasFile('image')) {

                // delete old image
                if ($user->image && Storage::disk('public')->exists($user->image)) {
                    Storage::disk('public')->delete($user->image);
                }

                // save new image
                $user->image = HelperClass::saveImage(
                    $request->file('image'),
                    800,
                    'users/profile',
                    $user->image
                );
            }
        
            $user->save();

     

        return redirect()->route("admin.{$this->path}.index")->withSuccessMessage('Created Successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $additionalData = ['roles' => Role::whereNotIn('name', ['Software Admin', 'Investor'])->orderBy('name', 'asc')->get()];
        return HelperClass::resourceDataEdit($this->model, $id, $this->path, $this->edit_title, $additionalData);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'user_name' => ['required', 'string', Rule::unique('users', 'user_name')->ignore($id)],
            'email' => ['nullable', 'email', Rule::unique('users', 'email')->ignore($id)],
            'phone' => ['nullable', Rule::unique('users', 'phone')->ignore($id)],
            'role_id' => ['required', 'exists:roles,id'],
            'role_status'    => ['required'],
            'image'      => ['nullable', 'image'],
        ]);

        $data = $this->model::findOrFail($id);
       
        if ($request->hasFile('image')) {
                // delete old image
                if ($data->image && Storage::disk('public')->exists($data->image)) {
                    Storage::disk('public')->delete($data->image);
                }

                // save new image
                $data->image = HelperClass::saveImage(
                    $request->file('image'),
                    800,
                    'users/profile',
                    $data->image
                );
            }
         $data->update([
                'name'                => $request->name,
                'user_name'           => $request->user_name,
                'email'               => $request->email,
                'phone'               => $request->phone,
                'address'             => $request->address,

                // Student Information
                'father_name'         => $request->father_name,
                'mother_name'         => $request->mother_name,
                'date_of_birth'       => $request->date_of_birth,
                'admission_date'      => $request->admission_date,
                'blood_group'         => $request->blood_group,
                'group'               => $request->group,
                'version'             => $request->version,

                // Academic Information
                'exam_name'           => $request->exam_name,
                'institution'         => $request->institution,
                'board'               => $request->board,
                'edu_group'           => $request->edu_group,
                'year'                => $request->year,
                'grade'               => $request->grade,
                'gpa_with_4th'        => $request->gpa_with_4th,
                'gpa_without_4th'     => $request->gpa_without_4th,

                // Payment Information
                'payment_method'      => $request->payment_method,
                'payment_mobile'      => $request->payment_mobile,

                // System
                'role_status'         => $request->role_status,

                // Image
                // 'image'       => isset($validated['image']) ? HelperClass::saveImage($validated['image'], 300, $this->path, $data->image) : $data->image,

                'updated_by'          => Auth::id(),
            ]);

        $role = Role::findById($request->role_id);
        $data->syncRoles($role);

        return redirect()->route("admin.{$this->path}.index")->withSuccessMessage('Updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        return HelperClass::resourceDataDelete($this->model, $id, ['image', 'cover_image']);
    }

    public function changePassword(string $id)
    {
        $data = $this->model::findOrFail($id);
        return view('admin.user.password', compact('data'));
    }

    public function passwordUpdate(Request $request, string $id)
    {
        $request->validate([
            'password'   => ['required', Password::min(8), 'confirmed']
            // 'password'   => ['required', Password::min(8)->letters()->mixedCase()->numbers()->symbols(), 'confirmed']
        ]);

        $user = $this->model::findOrFail($id);
        $user->password = Hash::make($request->password);
        $user->save();
        return redirect()->route("admin.{$this->path}.index")->withSuccessMessage('Password Updated Successfully!');
    }
}
