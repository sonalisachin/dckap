<!DOCTYPE html>
<html>
   <head>
      <title>CheckOut Page</title>
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
      <main class="my-8">
         <div class="container px-12 mx-auto">
            @if ($message = Session::get('success'))
                  <div class="p-4 mb-3 bg-green-400 rounded">
                     <p class="text-green-800">{{ $message }}</p>
                  </div>
                  @endif
            <div class="justify-center my-6">
               <form action="{{ route('cart.userdata') }}" method="POST">
                  @csrf
                  @foreach ($cartItems as $item)
                  <input type="hidden" value="{{ $item->id}}" name="id[]">
                  <input type="hidden" value="{{ $item->quantity }}" name="quantity[]">
                  @endforeach
                  <div class="card border-primary rounded-0">
                     <div class="card-header p-0">
                        <div class="bg-info text-white text-center py-2">
                           <h3><i class="fa fa-shopping-basket"></i> Checkout</h3>
                        </div>
                     </div>
                     <div class="card-body p-3">
                        <!--Body-->
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-user text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="email" class="form-control" id="email
                                 " name="email" placeholder="abc@gmail.com" required>
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-mobile text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="phone_number
                                 " name="phone_number" placeholder="Phone Number" required>
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea class="form-control" name="address" placeholder="Address" required></textarea>
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Submit" class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </main>
   </body>
</html>