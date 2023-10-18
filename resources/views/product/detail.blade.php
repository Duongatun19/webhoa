@extends('layouts.main.master')
@section('title')
{{languageName($product->name)}}
@endsection
@section('description')
{{languageName($product->description)}}
@endsection
@section('image')
@php
$img = json_decode($product->images);
@endphp
{{url(''.$img[0])}}
@endsection
@section('css')
@endsection
@section('js')
@endsection
@section('content')
<main id="main" role="main">
   <div id="shopify-section-template--15290674249890__main" class="shopify-section shopify-section--bordered">
      <script>
         // To power the recently viewed products section, we save the ID of the product inside the local storage
         (() => {
           let items = JSON.parse(localStorage.getItem('recentlyViewedProducts') || '[]');
         
           // We check if the current product already exists, and if it does not, we add it at the start
           if (!items.includes(7299848372386)) {
             items.unshift(7299848372386);
           }
         
           // Then, we save the current product into the local storage, by keeping only the 8 most recent
           try {
             localStorage.setItem('recentlyViewedProducts', JSON.stringify(items.slice(0, 8)));
           } catch (error) {
             // Do nothing, this may happen in Safari in incognito mode
           }
         })();
      </script>
      <section class="Product Product--large" data-section-id="template--15290674249890__main" data-section-type="product" data-section-settings='{
         "enableHistoryState": true,
         "templateSuffix": "",
         "showInventoryQuantity": false,
         "showSku": false,
         "stackProductImages": true,
         "showThumbnails": true,
         "enableVideoLooping": false,
         "inventoryQuantityThreshold": 0,
         "showPriceInButton": true,
         "enableImageZoom": true,
         "showPaymentButton": false,
         "useAjaxCart": false
         }'>
         <div class="Product__Wrapper">
            <div class="Product__Gallery Product__Gallery--stack Product__Gallery--withThumbnails">
               <span id="ProductGallery" class="Anchor"></span>
               <div class="Product__ActionList hidden-lap-and-up ">
                  <div class="Product__ActionItem hidden-lap-and-up">
                     <button class="RoundButton RoundButton--small RoundButton--flat" aria-label="Zoom" data-action="open-product-zoom">
                        <svg class="Icon Icon--plus " role="presentation" viewBox="0 0 16 16">
                           <g stroke="currentColor" fill="none" fill-rule="evenodd" stroke-linecap="square">
                              <path d="M8,1 L8,15"></path>
                              <path d="M1,8 L15,8"></path>
                           </g>
                        </svg>
                     </button>
                  </div>
               </div>
               <div class="Product__SlideshowNav Product__SlideshowNav--thumbnails">
                  <div class="Product__SlideshowNavScroller">
                     @foreach ($img as $key => $item)
                     <a href="#Media{{$key}}" data-offset="-25" data-focus-on-click data-media-id="{{$key}}" class="Product__SlideshowNavImage AspectRatio {{$key == 0 ? 'is-selected' : ''}}" style="--aspect-ratio: 0.6666666666666666">
                     <img src="{{$item}}" alt="{{languageName($product->name)}}"></a>
                     @endforeach
                  </div>
               </div>
               <div class="Product__SlideshowNav Product__SlideshowNav--dots">
                  <div class="Product__SlideshowNavScroller">
                     @foreach ($img as $key => $item)
                     <a href="#Media{{$key}}" data-offset="-25" data-focus-on-click class="Product__SlideshowNavDot {{$key == 0 ? 'is-selected' : ''}}"></a>
                     @endforeach
                  </div>
               </div>
               <div class="Product__Slideshow Product__Slideshow--zoomable Carousel" data-flickity-config='{
                  "prevNextButtons": false,
                  "pageDots": false,
                  "adaptiveHeight": true,
                  "watchCSS": true,
                  "dragThreshold": 8,
                  "initialIndex": 0,
                  "arrowShape": {"x0": 20, "x1": 60, "y1": 40, "x2": 60, "y2": 35, "x3": 25}
                  }'>
                  @foreach ($img as $key => $item)
                  <div id="Media{{$key}}" tabindex="0" class="Product__SlideItem Product__SlideItem--image Carousel__Cell {{$key == 0 ? 'is-selected' : ''}}" data-media-type="image" data-media-id="{{$key}}" data-media-position="{{$key+1}}" data-image-media-position="{{$key}}">
                     <div class="AspectRatio AspectRatio--withFallback" style="padding-bottom: 150.00000000000003%; --aspect-ratio: 0.6666666666666666;">
                        <img class="Image--lazyLoad Image--fadeIn" data-src="{{$item}}" data-widths="[200,400,600,700]" data-sizes="auto" data-expand="-100" alt="{{languageName($product->name)}}" data-max-width="750" data-max-height="1125" data-original-src="{{$item}}">
                        <span class="Image__Loader"></span>
                        <noscript>
                           <img src="{{$item}}" alt="{{languageName($product->name)}}">
                        </noscript>
                     </div>
                  </div>
                  @endforeach
               </div>
               <div class="Product__SlideshowMobileNav hidden-lap-and-up">
                  <button class="Product__SlideshowNavArrow Product__SlideshowNavArrow--previous" type="button" data-direction="previous" aria-label="Previous">
                     <svg class="Icon Icon--media-arrow-left " role="presentation" viewBox="0 0 6 9">
                        <path d="M5 8.5l-4-4 4-4" stroke="currentColor" fill="none" fill-rule="evenodd" stroke-linecap="square"></path>
                     </svg>
                  </button>
                  <div class="flickity-page-dots"><button type="button" aria-label="Show image 1" class="dot is-selected" data-index="0"></button><button type="button" aria-label="Show image 2" class="dot " data-index="1"></button></div>
                  <button class="Product__SlideshowNavArrow Product__SlideshowNavArrow--next" type="button" data-direction="next" aria-label="Next">
                     <svg class="Icon Icon--media-arrow-right " role="presentation" viewBox="0 0 6 9">
                        <path d="M1 8.5l4-4-4-4" stroke="currentColor" fill="none" fill-rule="evenodd" stroke-linecap="square"></path>
                     </svg>
                  </button>
               </div>
            </div>
            <div class="Product__InfoWrapper">
               <div class="Product__Info ">
                  <div class="Container">
                     <form method="post" action="" accept-charset="UTF-8" class="ProductForm" enctype="multipart/form-data">
                        <script type="application/json" data-product-json>
                           {
                             "product": {"id":7299848372386,"title":"{{languageName($product->name)}}","handle":"dried-flower-bouquet-xa49z-btfz7","description":"\u003cp style=\"white-space: pre-wrap;\" class=\"\"\u003eThese flowers will last forever, all natural flowers they have delicate colours and tones.. The image shown is of our medium £40 size.\u003c\/p\u003e\n\u003cp style=\"white-space: pre-wrap;\" class=\"\"\u003e\u003cem\u003e*Please note due to seasonal availability and stock we may need to substitute the dried flowers from time to time. We will choose new beautiful flowers that we will colour match and create in the same style as the bouquet shown.\u003c\/em\u003e\u003c\/p\u003e\n\u003cp class=\"\"\u003e\u003cstrong\u003eHow will we deliver your bouquet.\u003c\/strong\u003e\u003c\/p\u003e\n\u003cp class=\"\"\u003e\u003cstrong\u003ePlease note delivery order cut off is 12pm for the next day. If your order after these times your bouquet will be sent on the next available delivery date.\u003c\/strong\u003e\u003c\/p\u003e\n\u003cp class=\"\"\u003e\u003cstrong\u003eHow will we deliver your bouquet.\u003c\/strong\u003e\u003c\/p\u003e\n\u003cp class=\"\"\u003eNationwide deliveries will be sent in our special bouquet box. It will be delivered on an overnight courier service and costs £5.50.\u003c\/p\u003e\n\u003cp class=\"\"\u003e\u003cstrong\u003eHow to ensure your dried flowers last forever!\u003c\/strong\u003e\u003c\/p\u003e\n\u003cp class=\"\"\u003eDried flowers have an amazing shelf life and if cared for correctly will last you a lifetime! The main points of care is to keep them away from a humid environment (i.e bathroom), the moisture can damage the leaves. Keep them away from direct sunlight, this will fade any colour and may cause them fragment more quickly. Finally they do enjoy a little dusting every so often.\u003c\/p\u003e\n\u003cp style=\"white-space: pre-wrap;\" class=\"\"\u003e\u003cspan style=\"font-family: -apple-system, BlinkMacSystemFont, 'San Francisco', 'Segoe UI', Roboto, 'Helvetica Neue', sans-serif; font-size: 1.4em;\"\u003e \u003c\/span\u003e\u003c\/p\u003e","published_at":"2022-01-07T18:25:14+00:00","created_at":"2022-01-07T18:24:04+00:00","vendor":"Design by Nature Flowers","type":"","tags":["dried flower bouquet","Dried Flower Bouquets","dried flowers","flower delivery","flowers","import_2022_01_07_182313","london florist","north london florist","Shop","validate-product-description"],"price":4000,"price_min":4000,"price_max":7000,"available":true,"price_varies":true,"compare_at_price":null,"compare_at_price_min":0,"compare_at_price_max":0,"compare_at_price_varies":false,"variants":[{"id":41522047713442,"title":"Medium","option1":"Medium","option2":null,"option3":null,"sku":"SQ4465540","requires_shipping":true,"taxable":true,"featured_image":null,"available":true,"name":"{{languageName($product->name)}} - Medium","public_title":"Medium","options":["Medium"],"price":4000,"weight":0,"compare_at_price":null,"inventory_management":null,"barcode":null,"requires_selling_plan":false,"selling_plan_allocations":[]},{"id":41522047746210,"title":"Large","option1":"Large","option2":null,"option3":null,"sku":"SQ5008186","requires_shipping":true,"taxable":true,"featured_image":null,"available":true,"name":"{{languageName($product->name)}} - Large","public_title":"Large","options":["Large"],"price":6000,"weight":0,"compare_at_price":null,"inventory_management":null,"barcode":null,"requires_selling_plan":false,"selling_plan_allocations":[]},{"id":41522047778978,"title":"X Large","option1":"X Large","option2":null,"option3":null,"sku":"SQ6036633","requires_shipping":true,"taxable":true,"featured_image":null,"available":true,"name":"{{languageName($product->name)}} - X Large","public_title":"X Large","options":["X Large"],"price":7000,"weight":0,"compare_at_price":null,"inventory_management":null,"barcode":null,"requires_selling_plan":false,"selling_plan_allocations":[]}],"images":["\/\/cdn.shopify.com\/s\/files\/1\/0601\/5277\/4818\/products\/design-by-nature-dried-flower-bouquet-nationwide-delivery-London-Florist_8f80203f-244c-4304-b980-f63e2ca268c4.jpg?v=1641579866","\/\/cdn.shopify.com\/s\/files\/1\/0601\/5277\/4818\/products\/IMG_9354_3af892d9-3f61-4259-957f-64c55d257e7a.jpg?v=1641579868"],"featured_image":"\/\/cdn.shopify.com\/s\/files\/1\/0601\/5277\/4818\/products\/design-by-nature-dried-flower-bouquet-nationwide-delivery-London-Florist_8f80203f-244c-4304-b980-f63e2ca268c4.jpg?v=1641579866","options":["Size"],"media":[{"alt":null,"id":24655207956642,"position":1,"preview_image":{"aspect_ratio":0.667,"height":1125,"width":750,"src":"https:\/\/cdn.shopify.com\/s\/files\/1\/0601\/5277\/4818\/products\/design-by-nature-dried-flower-bouquet-nationwide-delivery-London-Florist_8f80203f-244c-4304-b980-f63e2ca268c4.jpg?v=1641579866"},"aspect_ratio":0.667,"height":1125,"media_type":"image","src":"https:\/\/cdn.shopify.com\/s\/files\/1\/0601\/5277\/4818\/products\/design-by-nature-dried-flower-bouquet-nationwide-delivery-London-Florist_8f80203f-244c-4304-b980-f63e2ca268c4.jpg?v=1641579866","width":750},{"alt":null,"id":24655208186018,"position":2,"preview_image":{"aspect_ratio":0.667,"height":3750,"width":2500,"src":"https:\/\/cdn.shopify.com\/s\/files\/1\/0601\/5277\/4818\/products\/IMG_9354_3af892d9-3f61-4259-957f-64c55d257e7a.jpg?v=1641579868"},"aspect_ratio":0.667,"height":3750,"media_type":"image","src":"https:\/\/cdn.shopify.com\/s\/files\/1\/0601\/5277\/4818\/products\/IMG_9354_3af892d9-3f61-4259-957f-64c55d257e7a.jpg?v=1641579868","width":2500}],"requires_selling_plan":false,"selling_plan_groups":[],"content":"\u003cp style=\"white-space: pre-wrap;\" class=\"\"\u003eThese flowers will last forever, all natural flowers they have delicate colours and tones.. The image shown is of our medium £40 size.\u003c\/p\u003e\n\u003cp style=\"white-space: pre-wrap;\" class=\"\"\u003e\u003cem\u003e*Please note due to seasonal availability and stock we may need to substitute the dried flowers from time to time. We will choose new beautiful flowers that we will colour match and create in the same style as the bouquet shown.\u003c\/em\u003e\u003c\/p\u003e\n\u003cp class=\"\"\u003e\u003cstrong\u003eHow will we deliver your bouquet.\u003c\/strong\u003e\u003c\/p\u003e\n\u003cp class=\"\"\u003e\u003cstrong\u003ePlease note delivery order cut off is 12pm for the next day. If your order after these times your bouquet will be sent on the next available delivery date.\u003c\/strong\u003e\u003c\/p\u003e\n\u003cp class=\"\"\u003e\u003cstrong\u003eHow will we deliver your bouquet.\u003c\/strong\u003e\u003c\/p\u003e\n\u003cp class=\"\"\u003eNationwide deliveries will be sent in our special bouquet box. It will be delivered on an overnight courier service and costs £5.50.\u003c\/p\u003e\n\u003cp class=\"\"\u003e\u003cstrong\u003eHow to ensure your dried flowers last forever!\u003c\/strong\u003e\u003c\/p\u003e\n\u003cp class=\"\"\u003eDried flowers have an amazing shelf life and if cared for correctly will last you a lifetime! The main points of care is to keep them away from a humid environment (i.e bathroom), the moisture can damage the leaves. Keep them away from direct sunlight, this will fade any colour and may cause them fragment more quickly. Finally they do enjoy a little dusting every so often.\u003c\/p\u003e\n\u003cp style=\"white-space: pre-wrap;\" class=\"\"\u003e\u003cspan style=\"font-family: -apple-system, BlinkMacSystemFont, 'San Francisco', 'Segoe UI', Roboto, 'Helvetica Neue', sans-serif; font-size: 1.4em;\"\u003e \u003c\/span\u003e\u003c\/p\u003e"},
                             "selected_variant_id": 41522047713442
                           }
                        </script>
                        <div class="ProductMeta" >
                           <h2 class="ProductMeta__Vendor Heading u-h6">{{languageName($product->cate->name)}}</h2>
                           <h1 class="ProductMeta__Title Heading u-h2">{{languageName($product->name)}}</h1>
                           <div class="ProductMeta__PriceList Heading"><span class="ProductMeta__Price Price Text--subdued u-h4">{{number_format($product->price-($product->price*($product->discount/100)))}}₫</span> @if($product->discount > 0) - <del>{{number_format($product->price)}}₫</del>@endif</div>
                           <div class="ProductMeta__UnitPriceMeasurement" style="display:none">
                              <div class="UnitPriceMeasurement Heading u-h6 Text--subdued">
                                 <span class="UnitPriceMeasurement__Price"></span>
                                 <span class="UnitPriceMeasurement__Separator">/ </span>
                                 <span class="UnitPriceMeasurement__ReferenceValue" style="display: inline"></span>
                                 <span class="UnitPriceMeasurement__ReferenceUnit"></span>
                              </div>
                           </div>
                        </div>
                        <div class="ProductMeta__Description" >
                           <div class="Rte">
                              {!!languageName($product->content)!!}
                           </div>
                        </div>
                        <div class="ProductForm__QuantitySelector" >
                           <div class="QuantitySelector QuantitySelector--large">
                              <button type="button" onclick="var result = document.getElementById('quantity'); var qty = result.value; if( !isNaN(qty) & qty > 1 ) result.value--;return false;" class="QuantitySelector__Button Link Link--secondary">
                                 <svg class="Icon Icon--minus " role="presentation" viewBox="0 0 16 2">
                                    <path d="M1,1 L15,1" stroke="currentColor" fill="none" fill-rule="evenodd" stroke-linecap="square"></path>
                                 </svg>
                              </button>
                              <input type="text" class="QuantitySelector__CurrentQuantity" pattern="[0-9]*" id="quantity" name="quantity" value="1" onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode) )) return false;" onchange="if(this.value == 0)this.value=1;">
                              <button type="button" class="QuantitySelector__Button Link Link--secondary" onclick="var result = document.getElementById('quantity'); var qty = result.value; if( !isNaN(qty)) result.value++;return false;">
                                 <svg class="Icon Icon--plus " role="presentation" viewBox="0 0 16 16">
                                    <g stroke="currentColor" fill="none" fill-rule="evenodd" stroke-linecap="square">
                                       <path d="M8,1 L8,15"></path>
                                       <path d="M1,8 L15,8"></path>
                                    </g>
                                 </svg>
                              </button>
                           </div>
                        </div>
                        <div class="ProductForm__BuyButtons" >
                           <button type="button" onclick="addToCart({{$product->id}},1)" data-use-primary-button="true" class="ProductForm__AddToCart Button Button--primary Button--full" data-action="add-to-cart">
                              <span>Thêm giỏ hàng</span>
                              <span class="Button__SeparatorDot"></span>
                           </button>
                        </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <div id="shopify-section-template--15290674249890__product-recommendations" class="shopify-section shopify-section--bordered">
         <section class="Section Section--spacingNormal" data-section-id="template--15290674249890__product-recommendations" data-section-type="product-recommendations" data-section-settings="{
            &quot;productId&quot;: 7299848372386,
            &quot;useRecommendations&quot;: true,
            &quot;recommendationsCount&quot;: 4
            }">
            <header class="SectionHeader SectionHeader--center">
               <div class="Container">
                  <h3 class="SectionHeader__Heading Heading u-h3">Sản phẩm liên quan</h3>
               </div>
            </header>
            <div class="ProductRecommendations">
               <div class="ProductListWrapper">
                  <div class="ProductList ProductList--carousel Carousel flickity-enabled is-draggable" data-flickity-config="{
                     &quot;prevNextButtons&quot;: true,
                     &quot;pageDots&quot;: false,
                     &quot;wrapAround&quot;: false,
                     &quot;contain&quot;: true,
                     &quot;cellAlign&quot;: &quot;center&quot;,
                     &quot;watchCSS&quot;: true,
                     &quot;dragThreshold&quot;: 8,
                     &quot;groupCells&quot;: true,
                     &quot;arrowShape&quot;: {&quot;x0&quot;: 20, &quot;x1&quot;: 60, &quot;y1&quot;: 40, &quot;x2&quot;: 60, &quot;y2&quot;: 35, &quot;x3&quot;: 25}
                     }" tabindex="0">
                     <div class="flickity-viewport" style="height: 639.516px; touch-action: pan-y;">
                        <div class="flickity-slider" style="left: 0px; transform: translateX(0%);">
                           <div class="Carousel__Cell is-selected" style="position: absolute; left: 0%;">
                              @foreach ($productlq as $item)
                                 @include('layouts.product.item',['pro'=>$item])
                              @endforeach
                           </div>
                        </div>
                     </div>
                     <button class="flickity-prev-next-button previous" type="button" disabled="" aria-label="previous">
                        <svg viewBox="0 0 100 100">
                           <path d="M 20,50 L 60,90 L 60,85 L 25,50  L 60,15 L 60,10 Z" class="arrow"></path>
                        </svg>
                     </button>
                     <button class="flickity-prev-next-button next" type="button" disabled="" aria-label="next">
                        <svg viewBox="0 0 100 100">
                           <path d="M 20,50 L 60,90 L 60,85 L 25,50  L 60,15 L 60,10 Z" class="arrow" transform="translate(100, 100) rotate(180) "></path>
                        </svg>
                     </button>
                  </div>
               </div>
            </div>
         </section>
      </div>
      <script>
         window.ShopifyXR=window.ShopifyXR||function(){(ShopifyXR.q=ShopifyXR.q||[]).push(arguments)};
         ShopifyXR('addModels', []);
      </script>
   </div>
</main>
@endsection

