<!DOCTYPE html>
<html>
   <head>
      <title>Shop Page</title>
      <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
      <link rel="stylesheet" type="text/css" href="{{ url('/public/css/') }}/style.css">
      <link rel="stylesheet" type="text/css" href="{{ url('/public/css/') }}/tailwind.min.css">
   </head>
   <body>
      <section class="sec">
         <div class="container">
            <div class="row">
               <nav class="navbar navbar-expand-lg navbar-light bg-light">
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                           <a class="nav-link" href="<?=url('/');?>">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="<?=url('/cart');?>">Cart</a>
                        </li>                        
                     </ul>
                  </div>
               </nav>
            </div>
         </div>
      </section>
      <section class="sec bg-light">
         <div class="container">
            <div class="row">
               <div class="col-sm-12 title_bx">
                  <h3 class="title">{{ $moduleTitle }}</h3>
               </div>
            </div>
         </div>
      </section>
      
      <section class="sec bg-light">
         <div class="container">
            <div class="row">
               @foreach ($data as $product_data)
               <div class="col-sm-4 title_bx">
                  <form action="{{ route('cart.store') }}" method="POST" enctype="multipart/form-data" class="">
                     @csrf
                     <input type="hidden" value="{{ $product_data['id'] }}" name="id">
                     <input type="hidden" value="{{ $product_data['name'] }}" name="name">
                     <input type="hidden" value="{{ $product_data['price'] }}" name="price">
                     <input type="hidden" value="{{ $product_data['image_name'] }}"  name="image">
                     <div class="item">
                        <div class="sq_box shadow">
                           <div class="pdis_img"> 
                              <span class="wishlist">
                              <a alt="Add to Wish List" title="Add to Wish List" href="javascript:void(0);"> <i class="fa fa-heart"></i></a>
                              </span>
                              <a href="#">
                              <img src="{{ url('/public/images/products') }}/{{ $product_data['image_name'] }}"> 
                              </a>
                           </div>
                           <h4 class="mb-1"> <a href="details.php">{{ $product_data['name'] }}</a> </h4>
                           <div class="price-box mb-2">
                              <span class="offer-price">Price <i class="fa fa-inr"></i> {{ $product_data['price'] }}</span>
                           </div>
                           <div class="btn-box text-center">
                              <input type="number" value="1" name="quantity" style="width: 5em;border: 2px solid #000;border-radius: 10px;text-align: center;">
                              <button class="btn btn-sm">Add To Cart</button>
                           </div>
                        </div>
                     </div>
                  </form>
               </div>
               @endforeach
            </div>
         </div>
      </section>
   </body>
</html>