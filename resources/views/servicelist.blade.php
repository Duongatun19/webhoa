@extends('layouts.main.master')
@section('title')
Dịch vụ của chúng tôi
@endsection
@section('description')
Dịch vụ của chúng tôi
@endsection
@section('image')
{{url(''.$banner[0])}}
@endsection
@section('css')
@endsection
@section('js')
@endsection
@section('content')
<main id="main" role="main">
   <div id="shopify-section-template--15295983190178__1641814721fe271578" class="shopify-section shopify-section--bordered">
      <section class="Section Section--spacingNormal">
         <div class="FeatureText ">
            <div class="FeatureText__ContentWrapper">
               <div class="FeatureText__Content">
                  <header class="SectionHeader">
                     <h2 class="SectionHeader__Heading Heading u-h1">Dịch vụ của chúng tôi</h2>
                  </header>
               </div>
            </div>
         </div>
      </section>
   </div>
   @foreach ($list as $key => $item)
   @if ($key % 2 == 0)
   <div id="shopify-section-template--15295983190178__164181373205a59807" class="shopify-section shopify-section--bordered">
      <section class="Section ">
         <div class="FeatureText FeatureText--withImage FeatureText--imageRight">
            <div class="FeatureText__ContentWrapper">
               <div class="FeatureText__Content">
                  <header class="SectionHeader">
                     <h3 class="SectionHeader__SubHeading Heading u-h6">Dịch vụ</h3>
                     <h2 class="SectionHeader__Heading Heading u-h1">{{$item->name}}</h2>
                     <div class="SectionHeader__Description Rte">
                        {!!languageName($item->description)!!}
                     </div>
                     <a href="{{route('serviceDetail',['slug'=>$item->slug])}}" class="Link Link--underline">Chi tiết</a>
                  </header>
               </div>
            </div>
            <div class="FeatureText__ImageWrapper">
               <div class="AspectRatio" style="max-width: 2560px; --aspect-ratio: 0.7117041979427301">
                  <img class="Image--slideRight lazyautosizes Image--lazyLoaded" data-expand="-200" data-widths="[400,600,700,800,900,1000,1200]" data-sizes="auto" alt="" data-srcset="{{$item->image}} 400w, {{$item->image}} 600w, {{$item->image}} 700w, {{$item->image}} 800w, {{$item->image}} 900w, {{$item->image}} 1000w, {{$item->image}} 1200w" sizes="952px" srcset="{{$item->image}} 400w, {{$item->image}} 600w, {{$item->image}} 700w, {{$item->image}} 800w, {{$item->image}} 900w, {{$item->image}} 1000w, {{$item->image}} 1200w">
                  <noscript>
                     <img src="{{$item->image}}" alt="">
                  </noscript>
               </div>
            </div>
         </div>
      </section>
   </div>
   @else 
   <div id="shopify-section-template--15295983190178__1641813803d03cea7f" class="shopify-section shopify-section--bordered">
      <section class="Section ">
         <div class="FeatureText FeatureText--withImage FeatureText--imageLeft">
            <div class="FeatureText__ImageWrapper">
               <div class="AspectRatio" style="max-width: 3024px; --aspect-ratio: 0.75">
                  <img class="Image--slideRight lazyautosizes Image--lazyLoaded" data-expand="-200" data-widths="[400,600,700,800,900,1000,1200]" data-sizes="auto" alt="" data-srcset="{{$item->image}} 400w, {{$item->image}} 600w, {{$item->image}} 700w, {{$item->image}} 800w, {{$item->image}} 900w, {{$item->image}} 1000w, {{$item->image}} 1200w" sizes="952px" srcset="{{$item->image}} 400w, {{$item->image}} 600w, {{$item->image}} 700w, {{$item->image}} 800w, {{$item->image}} 900w, {{$item->image}} 1000w, {{$item->image}} 1200w">
                  <noscript>
                     <img src="{{$item->image}}" alt="">
                  </noscript>
               </div>
            </div>
            <div class="FeatureText__ContentWrapper">
               <div class="FeatureText__Content">
                  <header class="SectionHeader">
                     <h3 class="SectionHeader__SubHeading Heading u-h6">Dịch vụ</h3>
                     <h2 class="SectionHeader__Heading Heading u-h1">{{$item->name}}</h2>
                     <div class="SectionHeader__Description Rte">
                        {!!languageName($item->description)!!}
                     </div>
                     <a href="{{route('serviceDetail',['slug'=>$item->slug])}}" class="Link Link--underline">Chi tiết</a>
                  </header>
               </div>
            </div>
         </div>
      </section>
   </div>
   @endif
   @endforeach
</main>




{{-- <section class="page-title page-title-13" id="page-title">
   <div class="page-title-wrap bg-overlay bg-overlay-dark-3">
      <div class="bg-section"><img src="{{url('frontend/images/servicebrem.jpg')}}" alt="Background" /></div>
      <div class="container">
         <div class="row">
            <div class="col-12 col-lg-8 offset-lg-2">
               <div class="title text-center">
                  <h1 class="title-heading">{{$cateService->name}} </h1>
                  <ol class="breadcrumb breadcrumb-light d-flex justify-content-center">
                     <li class="breadcrumb-item"><a href="{{route('home')}}">Trang chủ</a></li>
                     <li class="breadcrumb-item active" aria-current="page">{{$cateService->name}} </li>
                  </ol>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<section class="projects projects-grid projects-grid-3" id="projects-grid-3">
   <div class="container">
      <div class="row" id="projects-all">
         {!!$cateService->content!!}
         @foreach ($list as $item)
         <div class="col-12 col-md-6 col-lg-4 project-item">
            <div class="project-panel" data-hover="">
               <div class="project-panel-holder">
                  <div class="project-img"><a class="link" href="{{route('serviceDetail',['danhmuc'=>$item->cate_slug,'slug'=>$item->slug])}}"></a><img src="{{$item->image}}" alt="{{$item->name}}"/></div>
                  <div class="project-content">
                     <div class="project-title">
                        <h4><a href="{{route('serviceDetail',['danhmuc'=>$item->cate_slug,'slug'=>$item->slug])}}">{{$item->name}}</a></h4>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         @endforeach
         
      </div>
      <div class="row">
         {{$list->links()}}
      </div>
   </div>
</section> --}}
@endsection