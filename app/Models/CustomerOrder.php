<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CustomerOrder extends Model
{
    protected $table = 'customer_order';
    protected $fillable = ['pro_ids','pro_qty','name','email','phone_number','address'];
}
