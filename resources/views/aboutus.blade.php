@extends('layouts.main.master')
@section('title')
Giới thiệu về CÔNG TY TNHH PHÁT TRIỂN CÔNG NGHỆ NĂNG LƯỢNG TÁI TẠO
@endsection
@section('description')
Giới thiệu về CÔNG TY TNHH PHÁT TRIỂN CÔNG NGHỆ NĂNG LƯỢNG TÁI TẠO
@endsection
@section('css')
@endsection
@section('js')
@endsection
@section('content')
<main id="main" role="main">
   <div id="shopify-section-template--15296085524642__164181373205a59807" class="shopify-section shopify-section--bordered">
      <section class="Section ">
         <div class="FeatureText FeatureText--withImage FeatureText--imageRight">
            <div class="FeatureText__ContentWrapper">
               <div class="FeatureText__Content">
                  <header class="SectionHeader">
                     <h3 class="SectionHeader__SubHeading Heading u-h6">Giới thiệu</h3>
                     <h2 class="SectionHeader__Heading Heading u-h1">Về chúng tôi</h2>
                     <div class="SectionHeader__Description Rte">
                        {!!$gioithieu->content!!}
                     </div>
                  </header>
               </div>
            </div>
            <div class="FeatureText__ImageWrapper">
               <div class="AspectRatio" style="max-width: 2624px; --aspect-ratio: 0.6666666666666666">
                  <img class="Image--slideRight lazyautosizes Image--lazyLoaded" data-expand="-200" data-widths="[400,600,700,800,900,1000,1200]" data-sizes="auto" alt="Về chúng tôi" data-srcset="{{$gioithieu->image}} 400w, {{$gioithieu->image}} 600w, {{$gioithieu->image}} 700w, {{$gioithieu->image}} 800w, {{$gioithieu->image}} 900w, {{$gioithieu->image}} 1000w, {{$gioithieu->image}} 1200w" sizes="390px" srcset="{{$gioithieu->image}} 400w, {{$gioithieu->image}} 600w, {{$gioithieu->image}} 700w, {{$gioithieu->image}} 800w, {{$gioithieu->image}} 900w, {{$gioithieu->image}} 1000w, {{$gioithieu->image}} 1200w">
                  <noscript>
                     <img src="{{$gioithieu->image}}" alt="Về chúng tôi">
                  </noscript>
               </div>
            </div>
         </div>
      </section>
   </div>
</main>
@endsection