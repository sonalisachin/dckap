<!DOCTYPE html>
<html>
   <head>
      <title>Cart Page</title>
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
         <div class="container px-6 mx-auto">
            <div class="flex justify-center my-6">
               <div class="flex flex-col w-full p-8 text-gray-800 bg-white shadow-lg pin-r pin-y md:w-4/5 lg:w-4/5">
                  @if ($message = Session::get('success'))
                  <div class="p-4 mb-3 bg-green-400 rounded">
                     <p class="text-green-800">{{ $message }}</p>
                  </div>
                  @endif
                  <div class="flex-1">
                    @if (!empty($cartItems) && sizeof($cartItems) > 0)
                     <table class="w-full text-sm lg:text-base" cellspacing="0">
                        <thead>
                           <tr class="h-12 uppercase">
                              <th class="hidden md:table-cell"></th>
                              <th class="text-left">Name</th>
                              <th class="pl-5 text-left lg:text-right lg:pl-0">
                                 <span class="lg:hidden" title="Quantity">Qtd</span>
                                 <span class="hidden lg:inline">Quantity</span>
                              </th>
                              <th class="hidden text-right md:table-cell"> price</th>
                              <th class="hidden text-right md:table-cell"> Remove </th>
                           </tr>
                        </thead>
                        <tbody>
                           @foreach ($cartItems as $item)
                           <tr>
                              <td class="hidden pb-4 md:table-cell">
                                 <a href="#">
                                 <img src=" {{ url('/public/images/products') }}/{{ $item->attributes->image }}" class="w-20 rounded" alt="Thumbnail">
                                 </a>
                              </td>
                              <td>
                                 <a href="#" >
                                    <p class="mb-2 md:ml-4">{{ $item->name }}</p>
                                 </a>
                              </td>
                              <td class="justify-center mt-6 md:justify-end md:flex">
                                 <div class="h-10 w-28">
                                    <div class="relative flex flex-row w-full h-8">
                                       <form action="{{ route('cart.update') }}" method="POST">
                                          @csrf
                                          <input type="hidden" name="id" value="{{ $item->id}}" >
                                          <input type="number" name="quantity" value="{{ $item->quantity }}" 
                                             class="w-6 text-center bg-gray-300" style="width: 4em;border: 2px solid #000;border-radius: 10px;text-align: center !important;padding: 10px;margin: 0 0 0 -50px;"/>
                                          <button type="submit" class="px-2 pb-2 ml-2 text-white bg-blue-500" style="padding: 10px;">update</button>
                                       </form>
                                    </div>
                                 </div>
                              </td>
                              <td class="hidden text-right md:table-cell">
                                 <span class="text-sm font-medium lg:text-base">
                                 ${{ $item->price }}
                                 </span>
                              </td>
                              <td class="hidden text-right md:table-cell">
                                 <form action="{{ route('cart.remove') }}" method="POST">
                                    @csrf
                                    <input type="hidden" value="{{ $item->id }}" name="id">
                                    <button class="px-4 py-2 text-white bg-red-600">x</button>
                                 </form>
                              </td>
                           </tr>
                           @endforeach
                        </tbody>
                     </table>
                     
                     
                     <div>
                        Total: ${{ Cart::getTotal() }}
                     </div>
                     <div class="col-sm-12">
                        <div class="col-sm-6">
                          <form action="{{ route('cart.clear') }}" method="POST">
                           @csrf
                           <button class="px-6 py-2 text-red-800 bg-red-300">Remove All Cart</button>
                          </form>
                        </div>
                         
                        <div class="col-sm-6">
                        <button class="px-6 py-2 text-red-800 bg-red-300" style="float: right;margin: -40px 0 0 0;color: rgba(0,128,0,var(--tw-text-opacity));
    background-color: rgba(60,179,113,var(--tw-bg-opacity));"><a href="{{ route('cart.checkout') }}">Checkout</a></button>
                        </div>                        
                     </div>
                     @else
                     <div style="text-align: center;font-size: 20px;font-weight: 600;">Your Cart is empty</div>
                     @endif
                  </div>
               </div>
            </div>
         </div>
      </main>
   </body>
</html>