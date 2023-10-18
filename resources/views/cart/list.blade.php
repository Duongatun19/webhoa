@extends('layouts.main.master')
@section('title')
Giỏ hàng của bạn
@endsection
@section('description')
Bún đậu mắm tôm Lynh
@endsection
@section('image')
{{url(''.$banner[0]->image)}}
@endsection
@section('css')
@endsection
@section('content')
@php $total = 0; $qty = 0 ; @endphp
@foreach((array) session('cart') as $id => $details)
            @php 
            $total += ($details['price'] - ($details['price']*($details['discount']/100))) * $details['quantity'] ;
            $qty += $details['quantity'] ;
            @endphp
@endforeach
<main id="main" role="main">
   <div id="shopify-section-template--15290673922210__main" class="shopify-section shopify-section--bordered">
      <section data-section-id="template--15290673922210__main" data-section-type="cart" data-section-settings="{
         &quot;type&quot;: &quot;page&quot;,
         &quot;itemCount&quot;: 1,
         &quot;drawer&quot;: false,
         &quot;hasShippingEstimator&quot;: false
         }">
         <div class="Container">
            <header class="PageHeader">
               <div class="SectionHeader SectionHeader--center">
                  <h1 class="SectionHeader__Heading Heading u-h1">Giỏ hàng</h1>
               </div>
            </header>
            <div class="PageContent">
               <form action="/cart" method="POST" class="Cart Cart--expanded buunto-theme-prestige-form" novalidate="">
                  <input type="hidden" name="attributes[collection_mobile_items_per_row]" value="">
                  <input type="hidden" name="attributes[collection_desktop_items_per_row]" value="">
                  <div class="Cart__ItemList">
                     <div class="Cart__Head hidden-phone">
                        <span class="Cart__HeadItem Heading Text--subdued u-h7">Sản phẩm</span>
                        <span class="Cart__HeadItem"></span>
                        <span class="Cart__HeadItem Heading Text--subdued u-h7" style="text-align: center">Số lượng</span>
                        <span class="Cart__HeadItem Heading Text--subdued u-h7" style="text-align: right">Tổng</span>
                     </div>
                     @foreach ($cart as $id => $details)
                     <div class="CartItem">
                        <div class="CartItem__ImageWrapper AspectRatio">
                           <div class="AspectRatio" style="--aspect-ratio: 0.6666666666666666">
                              <img class="CartItem__Image" src="//cdn.shopify.com/s/files/1/0601/5277/4818/products/design-by-nature-dried-flower-bouquet-nationwide-delivery-London-Florist_8f80203f-244c-4304-b980-f63e2ca268c4_240x.jpg?v=1641579866" alt="">
                           </div>
                        </div>
                        <div class="CartItem__Info">
                           <h2 class="CartItem__Title Heading">
                              <a href="javascript:;">{{ languageName($details['name']) }}</a>
                           </h2>
                           <div class="CartItem__Meta Heading Text--subdued">
                              <div class="CartItem__PriceList"><span class="CartItem__Price Price">{{ number_format($details['price'] - ($details['price']*($details['discount']/100))) }}₫</span></div>
                           </div>
                           <div class="CartItem__Actions Heading Text--subdued" style="text-align: center">
                              <div class="CartItem__QuantitySelector">
                                 <div class="QuantitySelector">
                                    <a class="QuantitySelector__Button Link Link--primary" title="Set quantity to 0" href="javascript:;" onclick="qtyminus({{$details['idpro']}})">
                                       <svg class="Icon Icon--minus " role="presentation" viewBox="0 0 16 2">
                                          <path d="M1,1 L15,1" stroke="currentColor" fill="none" fill-rule="evenodd" stroke-linecap="square"></path>
                                       </svg>
                                    </a>
                                    <input type="text" name="qtybutton"  value="{{$details['quantity']}}" class="QuantitySelector__CurrentQuantity quantity-{{$details['idpro']}}" pattern="[0-9]*">
                                    <a class="QuantitySelector__Button Link Link--primary" title="Set quantity to 2" href="javascript:;" onclick="qtyplus({{$details['idpro']}})">
                                       <svg class="Icon Icon--plus " role="presentation" viewBox="0 0 16 16">
                                          <g stroke="currentColor" fill="none" fill-rule="evenodd" stroke-linecap="square">
                                             <path d="M8,1 L8,15"></path>
                                             <path d="M1,8 L15,8"></path>
                                          </g>
                                       </svg>
                                    </a>
                                 </div>
                              </div>
                              <a href="javascript:;" class="CartItem__Remove Link Link--underline Link--underlineShort" onclick="removeCart({{$details['idpro']}})">Remove</a>
                           </div>
                        </div>
                        <div class="CartItem__Actions Heading Text--subdued" style="text-align: center">
                           <div class="CartItem__QuantitySelector">
                              <div class="QuantitySelector">
                                 <a class="QuantitySelector__Button Link Link--primary" title="Set quantity to 0" href="javascript:;" onclick="qtyminus({{$details['idpro']}})">
                                    <svg class="Icon Icon--minus " role="presentation" viewBox="0 0 16 2">
                                       <path d="M1,1 L15,1" stroke="currentColor" fill="none" fill-rule="evenodd" stroke-linecap="square"></path>
                                    </svg>
                                 </a>
                                 <input type="text" name="qtybutton"  value="{{$details['quantity']}}" class="QuantitySelector__CurrentQuantity quantity-{{$details['idpro']}}" pattern="[0-9]*">
                                 <a class="QuantitySelector__Button Link Link--primary" title="Set quantity to 2" href="javascript:;" onclick="qtyplus({{$details['idpro']}})">
                                    <svg class="Icon Icon--plus " role="presentation" viewBox="0 0 16 16">
                                       <g stroke="currentColor" fill="none" fill-rule="evenodd" stroke-linecap="square">
                                          <path d="M8,1 L8,15"></path>
                                          <path d="M1,8 L15,8"></path>
                                       </g>
                                    </svg>
                                 </a>
                              </div>
                           </div>
                           <a href="javascript:;" class="CartItem__Remove Link Link--underline Link--underlineShort" onclick="removeCart({{$details['idpro']}})">Remove</a>
                        </div>
                        <div class="CartItem__LinePriceList Heading Text--subdued" style="text-align: right"><span class="CartItem__Price Price" id="cartprice-{{$id}}">{{ number_format(($details['price'] - ($details['price']*($details['discount']/100)))*$details['quantity']) }}đ</span></div>
                     </div>
                     @endforeach
                  </div>
                  <footer class="Cart__Footer">
                     <div class="Cart__Recap">
                        <p class="Cart__Total Heading u-h6">Tổng tiền: <span>{{number_format($total)}}₫</span></p>
                        <a href="{{route('checkout')}}" name="checkout" class="Cart__Checkout Button Button--primary Button--full">Thanh toán</a>
                     </div>
                  </footer>
               </form>
            </div>
         </div>
      </section>
   </div>
</main>
@endsection