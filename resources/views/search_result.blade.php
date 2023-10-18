@extends('layouts.main.master')
@section('title')
Kết quả tìm kiếm
@endsection
@section('description')
Đã tìm thấy {{$countproduct}} kết quả phù hợp cho từ khóa "{{$keyword}}"
@endsection
@section('image')
{{url(''.$setting->logo)}}
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
				   <h1 class="SectionHeader__Heading Heading u-h1">Đã tìm thấy {{$countproduct}} kết quả phù hợp cho từ khóa "{{$keyword}}"</h1>
				</div>
			 </div>
		  </header>
		  <div class="CollectionMain">
			 <div class="CollectionInner">
				<div class="CollectionInner__Products">
				   <div class="ProductListWrapper">
					  
					  @if (count($resultPro) > 0)
					  <div class="ProductList ProductList--grid  Grid" data-mobile-count="2" data-desktop-count="4">
						
						 @foreach ($resultPro as $item)
						 <div class="Grid__Cell 1/2--phone 1/3--tablet-and-up 1/4--lap-and-up">
							@include('layouts.product.item',['pro'=>$item])
						 </div>
						 @endforeach
					  </div>
					
					  @else 
					  <h3>Không tìm thấy sản phẩm nào...</h3>
						 @endif
				   </div>
				</div>
			 </div>
		  </div>
	   </section>
	</div>

 </main>
@endsection