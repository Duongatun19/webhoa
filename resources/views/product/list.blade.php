@extends('layouts.main.master')
@section('title')
{{$title}}
@endsection
@section('description')
Danh sách {{$title}}
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
   <div id="shopify-section-template--15290673954978__main" class="shopify-section shopify-section--bordered">
      <section data-section-id="template--15290673954978__main" data-section-type="collection" data-section-settings="{
         &quot;sectionId&quot;: &quot;template--15290673954978__main&quot;,
         &quot;filterPosition&quot;: &quot;drawer&quot;
         }">
         <header class="PageHeader">
            <div class="Container">
               <div class="SectionHeader SectionHeader--center">
                  <h1 class="SectionHeader__Heading Heading u-h1">{{$title}}</h1>
               </div>
            </div>
         </header>
         <div class="CollectionMain">
            <div class="CollectionInner">
               <div class="CollectionInner__Products">
                  <div class="ProductListWrapper">
                     
                     @if (count($list) > 0)
                     <div class="ProductList ProductList--grid  Grid" data-mobile-count="2" data-desktop-count="4">
                       
                        @foreach ($list as $item)
                        <div class="Grid__Cell 1/2--phone 1/3--tablet-and-up 1/4--lap-and-up">
                           @include('layouts.product.item',['pro'=>$item])
                        </div>
                        @endforeach
                     </div>
                     <div class="pagenav">
                        {{$list->links()}}
                     </div>
                     <style>
                        .pagenav{
                           width: 100%;
                           display: flex;
                           justify-content: center;
                           padding: 40px 0;
                        }
                        .pagenav ul.pagination{
                           background-color: rgb(255 255 255);
                           display: flex;
                           list-style: none;
                        }
                        .pagenav ul.pagination li span{

                           height:41px ;
                           width: 35px;
                           display: flex;
                           justify-content: center;
                           align-items: center;
                        }
                        .pagenav .pagination a{
                           height:41px;
                           width: 35px;
                           display: flex;
                           justify-content: center;
                           align-items: center;
                        }
                        .pagenav .pagination a:hover{
                           background-color: #847467;
                           color: antiquewhite;
                        }
                        .pagenav li.active{
                           background-color: #847467;
                           color: antiquewhite;
                        }
                     </style>
                     @else 
                     <h3>Nội dung đang cập nhật...</h3>
                        @endif
                  </div>
               </div>
            </div>
         </div>
      </section>
   </div>
</main>

@endsection

