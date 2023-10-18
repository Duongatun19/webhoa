@extends('layouts.main.master')
@section('title')
Liên hệ với chúng tôi
@endsection
@section('description')
Liên hệ với chúng tôi
@endsection
@section('image')
{{url(''.$setting->logo)}}
@endsection
@section('css')
@endsection
@section('js')
@endsection
@section('content')
<main id="main" role="main">
	<div id="shopify-section-template--15290674086050__main" class="shopify-section">
	   <div class="Container">
		  <header class="PageHeader">
			 <div class="SectionHeader SectionHeader--center">
				<h1 class="SectionHeader__Heading Heading u-h1">Liên hệ với chúng tôi</h1>
			 </div>
		  </header>
		  <div class="PageContent PageContent--narrow">
			 <div class="Rte">
				<p>{{$setting->webname}}</p>
				<p>&nbsp;</p>
				<div class="SectionHeader__Description Rte" data-live-text-setting="section.template--15290674086050__16419206118b44a115.content">
				   <p>Hotline {{$setting->phone1}}</p>
				   <p>Email {{$setting->email}}</p>
				</div>
				<form method="post" action="{{route('postcontact')}}" accept-charset="UTF-8" class="Form Form--spacingTight">
					@csrf
				   <div class="Form__Group">
					  <div class="Form__Item">
						 <input type="text" class="Form__Input" name="name" aria-label="Họ và tên" placeholder="Họ và tên" required="">
						 <label class="Form__FloatingLabel">Họ và tên</label>
					  </div>
					  <div class="Form__Item">
						 <input type="email" class="Form__Input" name="email" aria-label="Email" placeholder="Email" required="">
						 <label class="Form__FloatingLabel">Email</label>
					  </div>
				   </div>
				   <div class="Form__Item">
					  <textarea name="mess" cols="30" rows="10" class="Form__Textarea" aria-label="Lời nhắn" placeholder="Lời nhắn" required=""></textarea>
					  <label class="Form__FloatingLabel">Lời nhắn</label>
				   </div>
				   <button type="submit" class="Form__Submit Button Button--primary Button--full">Gửi</button>
				</form>
			 </div>
		  </div>
	   </div>
	</div>
 </main>
@endsection