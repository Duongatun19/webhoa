@extends('layouts.main.master')
@section('title')
{{$pagecontentdetail->title}}
@endsection
@section('description')
{{$pagecontentdetail->title}}
@endsection
@section('image')
{{url(''.$banner[0]->image)}}
@endsection
@section('css')
@endsection
@section('js')
@endsection
@section('content')
<div class="main-index">
   <section class="bread-crumb">
      <div class="container">
         <div class="row">
            <div class="col-12 a-left">
               <ul class="breadcrumb">
                  <li class="home">
                     <a href="/"><span>Trang chủ</span></a>						
                     <span class="mr_lr">&nbsp;/&nbsp;</span>
                  </li>
                  <li><strong><span>{{$pagecontentdetail->title}}</span></strong></li>
               </ul>
            </div>
         </div>
      </div>
   </section>
   <section class="page">
      <div class="container margin-top-20 margin-bottom-20">
         <h1 class="title-block-page">{{$pagecontentdetail->title}}</h1>
         
         <div class="sectionContentStore row" style="">
            <div class="col-12 col-sm-12 col-md-12">
               {!!($pagecontentdetail->content)!!}
            </div>
         </div>
      </div>
   </section>
</div>
@endsection