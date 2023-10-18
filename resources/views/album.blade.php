@extends('layouts.main.master')
@section('title')
Dự án tiêu biểu
@endsection
@section('description')
Dự án tiêu biểu
@endsection
@section('image')
{{url(''.$setting->logo)}}
@endsection
@section('js')
@endsection
@section('css')
@endsection
@section('content')
<main id="main" role="main">
   <div id="shopify-section-template--15299293380770__main" class="shopify-section">
      <div id="section-template--15299293380770__main" class="Section" data-section-id="template--15299293380770__main" data-section-type="article-list">
         <div class="Blog">
            <div class="Container">
               <header class="PageHeader">
                  <div class="SectionHeader SectionHeader--center">
                     <h1 class="SectionHeader__Heading Heading u-h1">Dự án tiêu biểu</h1>
                  </div>
               </header>
               <div class="ArticleListWrapper">
                  <div class="ArticleList ArticleList--withFeatured Grid Grid--m">
                     @foreach ($duan as $item)
                     @php
                         $img = json_decode($item->images);
                     @endphp
                     <div class="Grid__Cell 1/2--tablet 1/3--lap-and-up">
                        <article class="ArticleItem">
                           <a class="ArticleItem__ImageWrapper AspectRatio AspectRatio--withFallback" style="background: url({{$img[0]}}); padding-bottom: 58%; --aspect-ratio: 1.7" href="{{route('duanTieuBieuDetail',['slug'=>$item->slug])}}">
                              <img class="ArticleItem__Image Image--fadeIn lazyautosizes Image--lazyLoaded" data-widths="[200,400,600,700,800,900,1000,1200]" data-sizes="auto" alt="{{$item->name}}" data-srcset="{{$img[0]}} 200w, {{$img[0]}} 400w, {{$img[0]}} 600w, {{$img[0]}} 700w, {{$img[0]}} 800w, {{$img[0]}} 900w, {{$img[0]}} 1000w, {{$img[0]}} 1200w" sizes="380px" srcset="{{$img[0]}} 1200w">
                              <noscript>
                                 <img class="ArticleItem__Image" src="{{$img[0]}}" alt="{{$item->name}}">
                              </noscript>
                           </a>
                           <div class="ArticleItem__Content">
                              <span class="ArticleItem__Category Heading u-h6 Text--subdued"></span>
                              <h2 class="ArticleItem__Title Heading u-h2">
                                 <a href="{{route('duanTieuBieuDetail',['slug'=>$item->slug])}}">{{$item->name}}</a>
                              </h2>
                              <a href="{{route('duanTieuBieuDetail',['slug'=>$item->slug])}}" class="ArticleItem__Link Link Link--underline">Chi tiết</a>
                           </div>
                        </article>
                     </div>
                     @endforeach
                  </div>
               </div>
            </div>
         </div>
      </div>
      <style>
         #section-template--15299293380770__main .ImageHero,
         #section-template--15299293380770__main .ImageHero .Heading {
         color: #ffffff;
         }
         #section-template--15299293380770__main .ImageHero .Button {
         color: #1c1c1c;
         border-color: #ffffff;
         }
         #section-template--15299293380770__main .ImageHero .Button::before {
         background-color: #ffffff;
         }@media (-moz-touch-enabled: 0), (hover: hover) {
         #section-template--15299293380770__main .ImageHero .Button:hover {
         color: #ffffff;
         }
         }
      </style>
   </div>
</main>
@endsection

