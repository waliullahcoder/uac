<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Slider;
use App\Models\HomeSection;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Sales;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\ProductVariant;
use App\Models\Collection;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Models\Coa;
use Illuminate\Support\Facades\DB;
use App\Models\Client;
use App\Models\Region;
use App\Models\Area;
use App\Models\Territory;
use App\Http\Controllers\Controller;
use App\Services\FrontEndService;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Log;
use App\HelperClass;
class UserController extends Controller
{
    protected $frontEndService;
    public function __construct(FrontEndService $frontEndService)
    {
        $this->frontEndService = $frontEndService;
    }

    public function signinPost(Request $request)
    {
        $request->validate([
            'phone'    => ['required','regex:/^01[3-9]\d{8}$/'],
            'password' => 'required',
        ]);

        $credentials = $request->only('phone', 'password');
        $remember = $request->has('remember'); // ✅ remember me

         if (Auth::attempt($credentials, $remember)) {

            if (auth()->user()->role_status != 0) {
                Auth::logout();
                return redirect()->back()->with('success', 'You are not allowed here');
            }

            return redirect()->route('frontend.user.dashboard')->with('success', 'Logged in successfully');
        }

        return back()
        ->withErrors(['phone' => 'Invalid mobile number or password'])
        ->withInput();
    }


        public function signupPost(Request $request)
        {
               
               

            //     function sms_send() {
            //     $url = "http://bulksmsbd.net/api/smsapi";
            //     $api_key = "your api key";
            //     $senderid = "your sender id";
            //     $number = "88016xxxxxxxx,88019xxxxxxxx";
            //     $message = "test sms check";
            
            //     $data = [
            //         "api_key" => $api_key,
            //         "senderid" => $senderid,
            //         "number" => $number,
            //         "message" => $message
            //     ];
            //     $ch = curl_init();
            //     curl_setopt($ch, CURLOPT_URL, $url);
            //     curl_setopt($ch, CURLOPT_POST, 1);
            //     curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
            //     curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            //     curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            //     $response = curl_exec($ch);
            //     curl_close($ch);
            //     return $response;
            // }
          $request->validate([
                'name'  => 'required|string|max:255',
                'phone' => [
                    'required',
                    'regex:/^01[3-9]\d{8}$/',
                    'unique:users,phone'
                ],
            ],[
                'name.required' => 'Name is required',
                'phone.required' => 'Phone number is required',
                'phone.regex'    => 'Please enter a valid Bangladeshi phone number',
                'phone.unique'   => 'This phone number already exists',
            ]);
            try {
            DB::transaction(function () use ($request) {
             // Create User section
                $user = null;
            if ($request->phone || $request->name) {
                $user = User::query()
                    ->when($request->phone, function ($q) use ($request) {
                        $q->where('phone', $request->phone);
                    })
                    ->when($request->name, function ($q) use ($request) {
                        $q->orWhere('name', $request->name);
                    })
                    ->first();

              if (!$user) {

                    $image = null;

                    if ($request->hasFile('profile_photo')) {
                        $image = HelperClass::saveImage(
                            $request->file('profile_photo'),
                            300,
                            'admin/avatar'
                        );
                    }

                    $user = User::create([

                        // Basic Info
                        'name'              => $request->name,
                        'mother_name'       => $request->mother_name,
                        'father_name'       => $request->father_name,
                        'phone'             => $request->phone,
                        'email'             => $request->email,
                        'address'           => $request->address,
                        'date_of_birth'     => $request->dob,
                        'admission_date'    => $request->admission_date,
                        'version'           => $request->version,

                        // System Fields
                        'user_name'         => strtolower(str_replace(' ', '', $request->phone)),
                        'password'          => Hash::make($request->phone),
                        'role_status'       => 0,

                        // Academic Info
                        'blood_group'       => $request->blood_group,
                        'group'             => $request->group,
                        'exam_name'         => $request->exam_name,
                        'institution'       => $request->institution,
                        'board'             => $request->board,
                        'edu_group'         => $request->edu_group,
                        'year'              => $request->year,
                        'grade'             => $request->grade,
                        'gpa_with_4th'      => $request->gpa_with_4th,
                        'gpa_without_4th'   => $request->gpa_without_4th,

                        // Payment Info
                        'payment_method'    => $request->payment_method,
                        'payment_mobile'    => $request->payment_mobile,

                        // Profile Image
                        'image'             => $image,
                    ]);

                    Auth::login($user);

                }
                $user_id = $user->id;
                }
                // End Create User section

                 $parent = Coa::findOrFail(7);
                $prefix = $parent->head_code;
                $maxCode = Coa::withTrashed()->where('parent_id', $parent->id)->max('head_code');
                if ($maxCode) {
                    $next = str_pad((int) substr($maxCode, strlen($prefix)) + 1, 2, '0', STR_PAD_LEFT);
                    $headCode = $prefix . $next;
                } else {
                    $headCode = $prefix . '01';
                }
                $account = Coa::create([
                    'parent_id'   => $parent->id,
                    'head_code'   => $headCode,
                    'head_name'   => $request->name,
                    'transaction' => true,
                    'general'     => false,
                    'head_type'   => $parent->head_type,
                    'status'      => true,
                    'updateable'     => false,
                    'created_by'  => Auth::id(),
                ]);

                Client::create([
                    'user_id'  => $user_id,
                    'region_id' => $request->region_id,
                    'area_id' => $request->area_id,
                    'territory_id' => $request->territory_id,
                    'coa_id' => $account->id,
                    'code' => $request->code,
                    'name' => $request->name,
                    'contact_person' => $request->contact_person,
                    'phone' => $request->phone,
                    'email' => $request->phone.'@email.com',
                    'address' => $request->address,
                    'bin_no' => $request->bin_no,
                    'credit_limit' => $request->credit_limit,
                    'created_by' => Auth::id(),
                ]);

            // Order create (NOW WITH TOTALS)
     
            $product = json_decode(Product::find($request->product_id));
       
            $order = Order::create([
                'user_id'        => $user->id,
                'order_number'   => 'ORD-' . time(),
                'subtotal'       => $product->sale_price,
                'discount'       => 0,
                'tax'            => 0,
                'total'          => $product->sale_price,
                'payment_method' => 'cod',
                'status'         => 'pending',
            ]);

            // Order items + stock reduce
           
                OrderItem::create([
                    'order_id' => $order->id,
                    'product_id' => $product->id,
                    'product_variant_id' => $product->variants->id ?? null,
                    'qty' => 1,
                    'price' => $product->sale_price,
                    'total' => $product->sale_price,
                ]);

                //SMS Integration
                $url = "http://bulksmsbd.net/api/smsapi";
                $api_key = "uXKvElJjc5Ay2QcFNGQI";
                $senderid = "8809648909116";
                $number = $request->phone;
                $message = "Congratulations! You have done registration successfully! Thank you. Please click on this link for Download the Invoice https://uac-bd.com/my-orders";

                $data = [
                    "api_key" => $api_key,
                    "senderid" => $senderid,
                    "number" => $number,
                    "message" => $message
                ];

                $ch = curl_init();
                curl_setopt($ch, CURLOPT_URL, $url);
                curl_setopt($ch, CURLOPT_POST, 1);
                
                // ১. ডাটা অবশ্যই URL-encoded কোয়েরি স্ট্রিং এ রূপান্তর করতে হবে
                curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data)); 
                
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
                
                // ২. লাইভ সার্ভারে টাইমআউট হ্যান্ডেল করার জন্য এই ২টি লাইন যোগ করুন
                curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 10); // কানেক্ট হতে সর্বোচ্চ ১০ সেকেন্ড নিবে
                curl_setopt($ch, CURLOPT_TIMEOUT, 20);        // মোট রেসপন্স পেতে সর্বোচ্চ ২০ সেকেন্ড নিবে

                $response = curl_exec($ch);

                // ৩. cURL এ কোনো এরর হলে তা লগে দেখার জন্য
                if (curl_errno($ch)) {
                    $error_msg = curl_error($ch);
                    Log::error('BulkSMSBD cURL Error: ' . $error_msg);
                }

                curl_close($ch);

                // লগে রেসপন্স চেক করুন
                Log::info('BulkSMSBD API Response: ' . $response);
               


                // Variant stock reduce
                // if (!empty($product->variants->id) || !empty($product->id)) {
                //     ProductVariant::where('id', $product->variants?->id)->orWhere('product_id', $product->id)
                //         ->decrement('stock', 1);
                // }

            });
        } catch (\Exception $e) {
            dd($e);
            return back()->withErrors($e->getMessage());
        }

          

            return redirect()
                ->route('frontend.user.dashboard')
                ->with('success', 'Welcome 🎉 Account created successfully');
        }

   
    public function forgotPasswordPost(Request $request)
    {
        // Step 1: Validate phone first
        $request->validate([
            'phone' => ['required','regex:/^01[3-9]\d{8}$/','exists:users,phone'],
        ]);

        // Find user once
        $user = User::where('phone', $request->phone)->firstOrFail();

        // Step 2: If password submitted, validate and update
        if ($request->filled('password')) {
            $request->validate([
                'password' => 'required|min:6',
            ]);

            $user->update([
                'password' => Hash::make($request->password),
            ]);

             return redirect()
                ->route('auth.signinPage')->with('success', 'Password changed successfully!');
        }

        // Step 3: If no password yet, show the forgot password form with user info
        $menus = $this->frontEndService->getMenu();

        return view('frontend.auth.forgot_password', compact('user','menus'));
    }


    public function dashboard()
    {
        if (auth()->user()->role_status != 0) {
            abort(403);
        }
        $menus = $this->frontEndService->getMenu();
        
        $client = Client::where('user_id', Auth::user()->id)->first();
        $clientid = 0;
        if($client){
            $clientid=$client->id;
        }
        $sales = Sales::where('client_id', $clientid)->sum('net_amount');
        $collection = Collection::where('client_id', $clientid)->sum('amount');
        return view('frontend.user.dashboard', compact('menus','sales','collection'));
    }

    public function invoiceHistory(){
        $menus = $this->frontEndService->getMenu();
        $client = Client::where('user_id', Auth::user()->id)->first();
        $clientid = 0;
        if($client){
            $clientid=$client->id;
        }
         $sales = Sales::where('client_id', $clientid)->get();
        return view('frontend.user.invoiceList', compact('menus','sales'));
    }

    public function salesInvoice($id){
        $data = Sales::withTrashed()->findOrFail($id);
        $report_title = 'Sales Invoice';
        return view('frontend.user.salesInvoice', compact('report_title', 'data'));
        // $pdf = Pdf::loadView("frontend.user.salesInvoice", compact('report_title', 'data'));
        // $pdf->setOptions(['defaultFont' => 'solaimanlipi']);
        // return $pdf->stream('sales_voucher_' . date('d_m_Y_H_i_s') . '.pdf');
    }

    public function updateEditProfile()
    {
        $menus = $this->frontEndService->getMenu();
        return view('frontend.user.profile_edit', compact('menus'));
    }


        public function updateProfile(Request $request)
        {
            $user = Auth::user();

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
            $user->version            = $request->version;

            $user->save();

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

            return back()->with('success', 'Profile updated successfully');
        }




    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect()->route('auth.signinPage')->with('success', 'You have been logged out successfully');
    }

    
}