
@php
$img = json_decode($pro['images']);
@endphp

   <div class="ProductItem ">
      <div class="ProductItem__Wrapper">
         <a href="{{route('detailProduct',['cate'=>$pro['cate_slug'],'type'=>$pro['type_slug'] ? $pro['type_slug'] : 'loai','id'=>$pro['slug']])}}" class="ProductItem__ImageWrapper ProductItem__ImageWrapper--withAlternateImage">
            <div class="AspectRatio AspectRatio--tall" style="max-width: 2319px;  --aspect-ratio: 0.6665708536935901">
               <img class="ProductItem__Image ProductItem__Image--alternate Image--lazyLoad Image--fadeIn" data-src="{{count($img) > 1 ? $img[1] : $img[0]}}" data-widths="[200,300,400,600,800,900,1000,1200]" data-sizes="auto" alt="{{languageName($pro['name'])}}" data-media-id="24655208120482">
               <img class="ProductItem__Image Image--lazyLoad Image--fadeIn" data-src="{{$img[0]}}" data-widths="[200,400,600,700,800,900,1000,1200]" data-sizes="auto" alt="{{languageName($pro['name'])}}" data-media-id="24655207694498">
               <span class="Image__Loader"></span>
               <noscript>
                  <img class="ProductItem__Image ProductItem__Image--alternate" src="{{$img[0]}}" alt="{{languageName($pro['name'])}}">
                  <img class="ProductItem__Image" src="{{$img[0]}}" alt="{{languageName($pro['name'])}}">
               </noscript>
            </div>
         </a>
         <div class="ProductItem__Info ProductItem__Info--center">
            <h2 class="ProductItem__Title Heading">
               <a href="{{route('detailProduct',['cate'=>$pro['cate_slug'],'type'=>$pro['type_slug'] ? $pro['type_slug'] : 'loai','id'=>$pro['slug']])}}">{{languageName($pro['name'])}}</a>
            </h2>
            <div class="ProductItem__PriceList ProductItem__PriceList--showOnHover Heading"><span class="ProductItem__Price Price Text--subdued">Giá {{number_format($pro['price']-($pro['price']*($pro['discount']/100)))}}₫</span>@if($pro['discount'] > 0) <del>{{number_format($pro['price'])}}₫</del>@endif</div>
         </div>
      </div>
   </div>