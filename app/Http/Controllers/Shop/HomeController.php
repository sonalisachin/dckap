<?php
/*###################################################################################
# Sonali Vispute - Copyright (C) Sonali Vispute
# This code is written by Sonali Vispute, Its a sole property of
# Sonali Vispute and cant be used/ modified without license.
# Any changes/ alterations, illegal uses, unlawful distribution, copying is strictly
# prohibhited
#####################################################################################
# Name: HomeController.php
# Created on : 17th Nov 2021
# Update on :
# Status: open
# Purpagese: Controller for Shoping management.
#####################################################################################
# ALSO STRICTLY MAINTAINING THE LOGS OF CHANGES AND PERSON NAME
#####################################################################################
*/
namespace App\Http\Controllers\Shop;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Product; 
use App\Models\ProductCategory; 
use App\Models\ProductImage;
use App\Models\CustomerOrder;
use DB;
class HomeController extends Controller
{
	public function __construct(Product $Product,
		ProductCategory $ProductCategory,
		ProductImage $ProductImage,
		CustomerOrder $CustomerOrder){
		$this->ModuleView  = 'shop.';
		$this->BaseModel   = $Product; 
		$this->ProductCategory   = $ProductCategory; 
		$this->ProductImage   = $ProductImage; 
		$this->CustomerOrder   = $CustomerOrder;
		$this->ViewData    = [];	
	}
    public function index()
    {
    	$this->ViewData['moduleTitle']   = 'All Products';
    	$object =   $this->BaseModel::select('product.id','product.name','product.price','product.status','product.images')
	        ->leftjoin('product_category', 'product_category.id' , '=', 'product.product_category')  
	        ->where('product.status', 'active')
	        ->get('*');
	    		$data = [];
	     if (!empty($object) && sizeof($object) > 0) 
            {
            	
                foreach ($object as $key => $row) 
                {
                	$images = $this->ProductImage                
	                ->whereIn('id', [$row->images])
	                ->where('status', 'active')
	                ->first();
	                $data[$key]['id']       = $row->id;
                    $data[$key]['name']     = ucfirst($row->name);
                    $data[$key]['price']   = $row->price;
                    $data[$key]['image_name']   = $images->image_name;
                    $data[$key]['status']   = $row->status;
                   
                }
            }
            $this->ViewData['data']   = $data;
        return view($this->ModuleView.'index', $this->ViewData);
    }
     public function addToCart(Request $request)
    {
    	\Cart::add([
            'id' => $request->id,
            'name' => $request->name,
            'price' => $request->price,
            'quantity' => $request->quantity,
            'attributes' => array(
                'image' => $request->image,
            )
        ]);
        session()->flash('success', 'Product is Added to Cart Successfully !');

        return redirect()->route('cart.list');
    }

    public function cartList()
    {
    	$this->ViewData['moduleTitle']   = 'Cart List';
        $cartItems = \Cart::getContent();
        //dd($cartItems);
        return view($this->ModuleView.'cart', compact('cartItems'), $this->ViewData);
    }

     public function updateCart(Request $request)
    {
        \Cart::update(
            $request->id,
            [
                'quantity' => [
                    'relative' => false,
                    'value' => $request->quantity
                ],
            ]
        );

        session()->flash('success', 'Item Cart is Updated Successfully !');

        return redirect()->route('cart.list');
    }

    public function removeCart(Request $request)
    {
        \Cart::remove($request->id);
        session()->flash('success', 'Item Cart Remove Successfully !');

        return redirect()->route('cart.list');
    }

    public function clearAllCart()
    {
        \Cart::clear();

        session()->flash('success', 'All Item Cart Clear Successfully !');

        return redirect()->route('cart.list');
    }
    public function cartCheckout()
    {
    	$this->ViewData['moduleTitle']   = 'Checkout Page';
        $cartItems = \Cart::getContent();
        return view($this->ModuleView.'checkout', compact('cartItems'), $this->ViewData);
    }
    public function userData(Request $request)
    {
    	if(!empty($request->input())){

    		$ids = $request->input('id');
    		$quantity = $request->input('quantity');
    		$pro_ids = implode(',', $ids);
    		$pro_qty = implode(',', $quantity);


    		$name = $request->input('name');
    		$email = $request->input('email');
    		$phone_number = $request->input('phone_number');
    		$address = $request->input('address');

    		$data = array(
    			'pro_ids'=>$pro_ids,
    			'pro_qty'=>$pro_qty,
    			'name'=>$name,	
    			'email'=>$email,
    			'phone_number'=>$phone_number,
    			'address'=>$address);
	    		$userData = $this->CustomerOrder::create($data);
	    		if($userData){
	    			\Cart::clear();
	    			session()->flash('success', 'Order Place Successfully !');
	        		return redirect()->route('cart.checkout');
	    		}
	    		
    	}
    }
}
