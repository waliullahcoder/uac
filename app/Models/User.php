<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasFactory, Notifiable, SoftDeletes, HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    protected $fillable = [
        'name',
        'user_name',
        'email',
        'phone',
        'address',
        'image',
        'cover_image',
        'version',

        // Student Information
        'mother_name',
        'father_name',
        'date_of_birth',
        'admission_date',

        // Academic Information
        'blood_group',
        'group',
        'exam_name',
        'institution',
        'board',
        'edu_group',
        'year',
        'grade',
        'gpa_with_4th',
        'gpa_without_4th',

        // Payment Information
        'payment_method',
        'payment_mobile',
        'trans_id',

        // System
        'role_status',
        'status',
        'email_verified_at',
        'otp',
        'otp_expire',
        'password',
        'created_by',
        'updated_by',
        'deleted_by'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    protected $appends = ['role_names'];

    public function getRoleNamesAttribute()
    {
        return $this->getRoleNames();
    }

    public function investors()
    {
        return $this->hasMany(Investor::class, 'user_id');
    }

    public function investor()
    {
        return $this->belongsTo(Investor::class, 'id', 'user_id');
    }

    public function wishlists()
    {
        return $this->hasMany(Wishlist::class);
    }

    public function orders()
    {
        return $this->hasMany(Order::class);
    }

}
