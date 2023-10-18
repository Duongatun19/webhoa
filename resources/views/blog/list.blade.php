@extends('layouts.main.master')
@section('title')
{{$title_page}} 
@endsection
@section('description')
Tin tức nổi bật và mới nhất
@endsection
@section('image')
{{url(''.$banner[0]->image)}}
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
                     <h1 class="SectionHeader__Heading Heading u-h1">Tin tức</h1>
                  </div>
               </header>
               <div class="ArticleListWrapper">
                  <div class="ArticleList ArticleList--withFeatured Grid Grid--m">
                     @foreach ($blog as $item)
                     <div class="Grid__Cell 1/2--tablet 1/3--lap-and-up">
                        <article class="ArticleItem">
                           <a class="ArticleItem__ImageWrapper AspectRatio AspectRatio--withFallback" style="background: url({{$item->image}}); padding-bottom: 58%; --aspect-ratio: 1.7" href="{{route('detailBlog',['slug'=>$item->slug])}}">
                              <img class="ArticleItem__Image Image--fadeIn lazyautosizes Image--lazyLoaded" data-widths="[200,400,600,700,800,900,1000,1200]" data-sizes="auto" alt="{{languageName($item->title)}}" data-srcset="{{$item->image}} 200w, {{$item->image}} 400w, {{$item->image}} 600w, {{$item->image}} 700w, {{$item->image}} 800w, {{$item->image}} 900w, {{$item->image}} 1000w, {{$item->image}} 1200w" sizes="380px" srcset="{{$item->image}} 200w, {{$item->image}} 400w, {{$item->image}} 600w, {{$item->image}} 700w, {{$item->image}} 800w, {{$item->image}} 900w, {{$item->image}} 1000w, {{$item->image}} 1200w">
                              <noscript>
                                 <img class="ArticleItem__Image" src="{{$item->image}}" alt="{{languageName($item->title)}}">
                              </noscript>
                           </a>
                           <div class="ArticleItem__Content">
                              <span class="ArticleItem__Category Heading u-h6 Text--subdued"></span>
                              <h2 class="ArticleItem__Title Heading u-h2">
                                 <a href="{{route('detailBlog',['slug'=>$item->slug])}}">{{languageName($item->title)}}</a>
                              </h2>
                              <p class="ArticleItem__Excerpt">{{languageName($item->description)}}
                              </p>
                              <a href="{{route('detailBlog',['slug'=>$item->slug])}}" class="ArticleItem__Link Link Link--underline">Đọc tiếp</a>
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