@extends('layouts.main.master')
@section('title')
{{$setting->company}}
@endsection
@section('description')
{{$setting->webname}}
@endsection
@section('image')
{{url(''.$banner[0]->image)}}
@endsection
@section('css')
<style>
   .shopify-section--header {
      margin-bottom: calc(-1 * var(--header-height));
      }
      .supports-sticky .Search[aria-hidden="true"] + .Header--transparent {box-shadow: 0 -1px rgba(255, 255, 255, 0.678) inset;color: #ffffff;
      }
</style>
@endsection
@section('script')
@endsection
@section('content')
<main id="main" role="main">
   <div id="shopify-section-template--15290673987746__slideshow" class="shopify-section shopify-section--slideshow">
      <section id="section-template--15290673987746__slideshow" data-section-id="template--15290673987746__slideshow" data-section-type="slideshow">
         <div class="Slideshow Slideshow--fullscreen">
            <div class="Slideshow__Carousel  Carousel Carousel--fadeIn Carousel--fixed Carousel--insideDots"
               data-flickity-config='{
               "prevNextButtons": false,
               "setGallerySize": false,
               "adaptiveHeight": false,
               "wrapAround": true,
               "dragThreshold": 15,
               "pauseAutoPlayOnHover": false,
               "autoPlay": 5000,
               "pageDots": true
               }'>
               @foreach ($banner as $key => $item)
               <div id="Slideslide-{{$key}}" class="Slideshow__Slide Carousel__Cell {{$key == 0 ? 'is-selected' : ''}} " style="visibility: visible" data-slide-index="{{$key}}" >
                  <div class="Slideshow__ImageContainer   hidden-tablet-and-up"
                     style=" background-image: url({{url('frontend/images/LowRes_Billy_Bolton_Carl_Hansen_Cafe_004-Edit_1x1.jpg')}})">
                     <img class="Slideshow__Image Image--lazyLoad"
                        src="{{url('frontend/images/LowRes_Billy_Bolton_Carl_Hansen_Cafe_004-Edit_1x1.jpg')}}"
                        data-src="{{$item->image}}"
                        alt="">
                     <noscript>
                        <img class="Slideshow__Image" src="{{$item->image}}" alt="">
                     </noscript>
                  </div>
                  <div class="Slideshow__ImageContainer   hidden-phone"
                     style=" background-image: url({{url('frontend/images/LowRes_Billy_Bolton_Carl_Hansen_Cafe_004-Edit_1x1.jpg')}})">
                     <img class="Slideshow__Image Image--lazyLoad hide-no-js"
                        data-src="{{$item->image}}"
                        data-optimumx="1.2"
                        data-widths="[400, 600, 800, 1000, 1200, 1400, 1600, 1800, 2000, 2200]"
                        data-sizes="auto"
                        alt="">
                     <noscript>
                        <img class="Slideshow__Image" src="{{$item->image}}" alt="">
                     </noscript>
                  </div>
                  <div class="Slideshow__Content Slideshow__Content--bottomLeft">
                     <header class="SectionHeader">
                        <h3 class="SectionHeader__SubHeading Heading u-h6">{{$item->description}}</h3>
                        <h2 class="SectionHeader__Heading SectionHeader__Heading--emphasize Heading u-h1">{{$item->title}}</h2>
                        <div class="SectionHeader__ButtonWrapper">
                           <div class="ButtonGroup ButtonGroup--spacingSmall "><a href="{{$item->link}}" target="_self" class="ButtonGroup__Item Button">Chi tiết</a></div>
                        </div>
                     </header>
                  </div>
               </div>
               @endforeach
            </div>
         </div>
         <span id="section-template--15290673987746__slideshow-end" class="Anchor"></span>
      </section>
      <style>
         #section-template--15290673987746__slideshow .Heading,
         #section-template--15290673987746__slideshow .flickity-page-dots {
         color: #ffffff;
         }
         #section-template--15290673987746__slideshow .Button {
         color: #363636;
         border-color: #ffffff;
         }
         #section-template--15290673987746__slideshow .Button::before {
         background-color: #ffffff;
         }@media (-moz-touch-enabled: 0), (hover: hover) {
         #section-template--15290673987746__slideshow .Button:hover {
         color: #ffffff;
         }
         }
      </style>
   </div>
   <div id="shopify-section-template--15290673987746__1641840661e7535f73" class="shopify-section shopify-section--bordered">
      <section class="Section Section--spacingNormal">
         <div class="FeatureText ">
            <div class="FeatureText__ContentWrapper">
               <div class="FeatureText__Content">
                  <header class="SectionHeader">
                     <h2 class="SectionHeader__Heading Heading u-h1">Về chúng tôi</h2>
                     <div class="SectionHeader__Description Rte linea">
                       {!!$gioithieu->content!!}
                     </div>
                  </header>
               </div>
            </div>
         </div>
      </section>
   </div>
   <div id="shopify-section-template--15290673987746__collection-list" class="shopify-section">
      <section id="section-template--15290673987746__collection-list" data-section-id="template--15290673987746__collection-list" data-section-type="collection-list">
         <div class="CollectionList CollectionList--grid CollectionList--spaced">
            @foreach ($categoryhome as $item)
            <a href="{{route('allListProCate',['danhmuc'=>$item->slug])}}"  class="CollectionItem CollectionItem--expand Carousel__Cell " data-slide-index="">
               <div class="CollectionItem__Wrapper CollectionItem__Wrapper--normal" style="background-image: url({{url('frontend/images/LowRes_Billy_Bolton_Carl_Hansen_Cafe_004-Edit_1x1.jpg')}})">
                  <div class="CollectionItem__ImageWrapper">
                     <div class="CollectionItem__Image  Image--lazyLoad Image--zoomOut hide-no-js"
                        style="background-position: center center"
                        data-optimumx="1.4"
                        data-expand="-150"
                        data-bgset="{{$item->imagehome}} 750w, {{$item->imagehome}} 1000w, {{$item->imagehome}} 1500w"></div>
                     <noscript>
                        <div class="CollectionItem__Image " style="background-position: center center; background-image: url({{$item->imagehome}})"></div>
                     </noscript>
                  </div>
                  <div class="CollectionItem__Content CollectionItem__Content--bottomLeft">
                     <header class="SectionHeader">
                        <h2 class="SectionHeader__Heading SectionHeader__Heading--emphasize Heading u-h1">{{languageName($item->name)}}</h2>
                        <div class="SectionHeader__ButtonWrapper"><span class="CollectionItem__Link Button">Chi tiết</span></div>
                     </header>
                  </div>
               </div>
            </a>
            @endforeach
         </div>
      </section>
      <style>
         #section-template--15290673987746__collection-list .CollectionItem .Heading,
         #section-template--15290673987746__collection-list .flickity-page-dots {
         color: #ffffff;
         }
         #section-template--15290673987746__collection-list .CollectionItem__Link {
         color: #363636;
         border-color: #ffffff;
         }
         #section-template--15290673987746__collection-list .CollectionItem__Link::before {
         background-color: #ffffff;
         }@media (-moz-touch-enabled: 0), (hover: hover) {
         #section-template--15290673987746__collection-list .CollectionItem__Link:hover {
         color: #ffffff;
         }
         }
      </style>
   </div>
   <div id="shopify-section-template--15290673987746__featured-collections" class="shopify-section shopify-section--bordered">
      <section class="Section Section--spacingNormal" data-section-id="template--15290673987746__featured-collections" data-section-type="featured-collections" data-settings='{
         "layout": "grid"
         }'>
         <header class="SectionHeader SectionHeader--center">
            <div class="Container">
               <h3 class="SectionHeader__SubHeading Heading u-h6">Sản phẩm</h3>
               <div class="SectionHeader__TabList TabList" role="tablist">
                  <button class="Heading u-h1 TabList__Item is-active" data-action="toggle-tab" aria-controls="block-featured-collection-0" aria-selected="true" role="tab">Sản phẩm nổi bật</button>
               </div>
            </div>
         </header>
         <div class="TabPanel" id="block-featured-collection-0" aria-hidden="false" role="tabpanel" >
            <div class="ProductListWrapper">
               <div class="ProductList ProductList--grid ProductList--removeMargin Grid" data-mobile-count="2" data-desktop-count="4">
                  @foreach ($homePro as $item)
                  <div class="Grid__Cell 1/2--phone 1/2--tablet 1/4--lap-and-up">
                     @include('layouts.product.item',['pro'=>$item])
                  </div>
                  @endforeach
               </div>
            </div>
         </div>
      </section>
   </div>
   
   <div id="shopify-section-template--15290673987746__16423250960148b6f9" class="shopify-section shopify-section--bordered">
      <section class="Section ">
         <br>
         <header class="SectionHeader SectionHeader--center">
            <div class="Container">
               <div class="SectionHeader__TabList TabList" role="tablist">
                  <button class="Heading u-h1 TabList__Item is-active" data-action="toggle-tab" aria-controls="block-featured-collection-0" aria-selected="true" role="tab">Dịch vụ</button>
               </div>
            </div>
         </header>
         @foreach ($servicehome as $key => $item)
            @if ($key % 2 ==0)
               <div class="FeatureText FeatureText--withImage FeatureText--imageRight">
                  <div class="FeatureText__ContentWrapper">
                     <div class="FeatureText__Content">
                        <header class="SectionHeader">
                           <h3 class="SectionHeader__SubHeading Heading u-h6">Dịch vụ</h3>
                           <h2 class="SectionHeader__Heading Heading u-h1">{{($item->name)}}</h2>
                           <div class="SectionHeader__Description Rte">
                              <p>{{languageName($item->description)}}</p>
                              
                           </div>
                           <a href="" class="Link Link--underline">Chi tiết</a>
                        </header>
                     </div>
                  </div>
                  <div class="FeatureText__ImageWrapper">
                     <div class="AspectRatio" style="max-width: 667px; --aspect-ratio: 0.867">
                        <img class="Image--slideRight lazyautosizes Image--lazyLoaded" data-expand="-200" data-widths="[400,600]" data-sizes="auto" alt="" data-srcset="{{$item->image}} 400w, {{$item->image}} 600w" sizes="667px" srcset="{{$item->image}} 400w, {{$item->image}} 600w">
                        <noscript>
                           <img src="{{$item->image}}" alt="">
                        </noscript>
                     </div>
                  </div>
               </div>
               @else 
               <div class="FeatureText FeatureText--withImage FeatureText--imageLeft">
                  <div class="FeatureText__ImageWrapper">
                     <div class="AspectRatio" style="max-width: 1067px; --aspect-ratio: 0.867">
                        <img class="Image--slideRight lazyautosizes Image--lazyLoaded" data-expand="-200" data-widths="[400,600]" data-sizes="auto" alt="" data-srcset="{{$item->image}} 400w, {{$item->image}} 600w" sizes="667px" srcset="{{$item->image}} 400w, {{$item->image}} 600w">
                        <noscript>
                           <img src="{{$item->image}}" alt="">
                        </noscript>
                     </div>
                  </div>
                  <div class="FeatureText__ContentWrapper">
                     <div class="FeatureText__Content">
                        <header class="SectionHeader">
                           <h3 class="SectionHeader__SubHeading Heading u-h6">Dịch vụ</h3>
                           <h2 class="SectionHeader__Heading Heading u-h1">{{($item->name)}}</h2>
                           <div class="SectionHeader__Description Rte">
                              <p>{{languageName($item->description)}}</p>
                              
                           </div>
                           <a href="" class="Link Link--underline">Chi tiết</a>
                        </header>
                     </div>
                  </div>
               </div>
            @endif
         @endforeach
         
         
      </section>
   </div>
   <div id="shopify-section-template--15290673987746__blog-posts" class="shopify-section shopify-section--bordered">
      <section class="Section Section--spacingNormal" id="section-template--15290673987746__blog-posts" data-section-type="article-list" data-section-id="template--15290673987746__blog-posts">
         <div class="Container">
            <header class="SectionHeader SectionHeader--center">
               <h3 class="SectionHeader__SubHeading Heading u-h6">Blogs</h3>
               <h2 class="SectionHeader__Heading Heading u-h1">Tin tức cập nhật</h2>
            </header>
            <div class="ArticleListWrapper">
               <div class="ArticleList Grid Grid--m Grid--center">
                  @foreach ($hotnews as $item)
                  <div class="Grid__Cell 1/2--tablet 1/3--lap-and-up ">
                     <article class="ArticleItem" >
                        <a class="ArticleItem__ImageWrapper AspectRatio AspectRatio--withFallback" style="background: url({{$item->image}}); padding-bottom: 58%; --aspect-ratio: 1.7" href="{{route('detailBlog',['slug'=>$item->slug])}}">
                           <img class="ArticleItem__Image Image--lazyLoad Image--fadeIn"
                              data-src="{{$item->image}}"
                              data-widths="[200,400,600,700,800,900,1000,1200]"
                              data-sizes="auto"
                              alt="{{languageName($item->title)}}">
                           <noscript>
                              <img class="ArticleItem__Image" src="{{$item->image}}" alt="{{languageName($item->title)}}">
                           </noscript>
                        </a>
                        <div class="ArticleItem__Content">
                           <h2 class="ArticleItem__Title Heading u-h2">
                              <a href="{{route('detailBlog',['slug'=>$item->slug])}}">{{languageName($item->title)}}</a>
                           </h2>
                           <p class="ArticleItem__Excerpt">{{languageName($item->description)}}</p>
                           <a href="{{route('detailBlog',['slug'=>$item->slug])}}" class="ArticleItem__Link Link Link--underline">Đọc tiếp</a>
                        </div>
                     </article>
                  </div>
                  @endforeach
               </div>
            </div>
            <div class="SectionFooter">
               <a href="{{route('allListBlog')}}" class="Button Button--primary ct-bt">Xem thêm</a>
            </div>
         </div>
      </section>
   </div>
</main>   
@endsection