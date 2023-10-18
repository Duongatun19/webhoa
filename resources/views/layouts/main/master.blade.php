<!doctype html>
<html class="no-js" lang="en">
   <head>
      <meta charset="UTF-8" />
      <link rel="icon" href="{{url(''.$setting->favicon)}}"
      type="image/x-icon" />
      <link rel="apple-touch-icon"
      href="{{url(''.$setting->favicon)}}">
      <meta name="robots" content="noodp,index,follow" />
      <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
      <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
      <meta name="csrf-token" content="{{ csrf_token() }}" />
      <title>@yield('title')</title>

      <link rel="canonical" href="{{\Request::url()}}" />
      <meta property="og:locale" content="vi_VN" />
      <meta property="og:type" content="article" />
      <meta property="og:title" content="@yield('title')" />
      <meta property="og:description" content="@yield('description')" />
      <meta property="og:url" content="{{\Request::url()}}" />
      <meta property="og:site_name" content="JicaFood" />
      <meta property="og:image" content="@yield('image')" />
      <meta property="og:image:secure_url" content="@yield('image')" />
      <meta property="og:image:width" content="548" />
      <meta property="og:image:height" content="343" />
      <meta name="twitter:card" content="summary_large_image" />
      <meta name="twitter:description" content="@yield('description')" />
      <meta name="twitter:title" content="@yield('title')" />
      <meta name="twitter:image" content="@yield('image')" />
      <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
      <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Gotu&display=swap" rel="stylesheet">
      <style>
        
         :root {
         --heading-font-family : 'Gotu', sans-serif;
         --heading-font-weight : 300;
         --heading-font-style  : normal;
         --text-font-family : 'Gotu', sans-serif;
         --text-font-weight : 400;
         --text-font-style  : normal;
         --base-text-font-size   : 18px;
         --default-text-font-size: 18px;--background          : #ffffff;
         --background-rgb      : 255, 255, 255;
         --light-background    : #b49f9f;
         --light-background-rgb: 180, 159, 159;
         --heading-color       : #303030;
         --text-color          : #303030;
         --text-color-rgb      : 48, 48, 48;
         --text-color-light    : #595959;
         --text-color-light-rgb: 89, 89, 89;
         --link-color          : #1e2025;
         --link-color-rgb      : 30, 32, 37;
         --border-color        : #e0e0e0;
         --border-color-rgb    : 224, 224, 224;
         --button-background    : #847467;
         --button-background-rgb: 171, 134, 20;
         --button-text-color    : #ffffff;
         --header-background       : #ffffff;
         --header-heading-color    : #303030;
         --header-light-text-color : #595959;
         --header-border-color     : #e0e0e0;
         --footer-background    : #f7eabf;
         --footer-text-color    : #204d8c;
         --footer-heading-color : #204d8c;
         --footer-border-color  : #d7d2b7;
         --navigation-background      : #ffffff;
         --navigation-background-rgb  : 255, 255, 255;
         --navigation-text-color      : #303030;
         --navigation-text-color-light: rgba(48, 48, 48, 0.5);
         --navigation-border-color    : rgba(48, 48, 48, 0.25);
         --newsletter-popup-background     : #faeeee;
         --newsletter-popup-text-color     : #303030;
         --newsletter-popup-text-color-rgb : 48, 48, 48;
         --secondary-elements-background       : #ab8614;
         --secondary-elements-background-rgb   : 171, 134, 20;
         --secondary-elements-text-color       : #303030;
         --secondary-elements-text-color-light : rgba(48, 48, 48, 0.5);
         --secondary-elements-border-color     : rgba(48, 48, 48, 0.25);
         --product-sale-price-color    : #f94c43;
         --product-sale-price-color-rgb: 249, 76, 67;
         --product-star-rating: #f6a429;
         /* Shopify related variables */
         --payment-terms-background-color: #ffffff;
         /* Products */
         --horizontal-spacing-four-products-per-row: 60px;
         --horizontal-spacing-two-products-per-row : 60px;
         --vertical-spacing-four-products-per-row: 60px;
         --vertical-spacing-two-products-per-row : 75px;
         /* Animation */
         --drawer-transition-timing: cubic-bezier(0.645, 0.045, 0.355, 1);
         --header-base-height: 80px; /* We set a default for browsers that do not support CSS variables */
         /* Cursors */
         --cursor-zoom-in-svg    : url(https://cdn.shopify.com/s/files/1/0601/5277/4818/t/5/assets/cursor-zoom-in.svg?v=10445927589119988961641815075);
         --cursor-zoom-in-2x-svg : url(https://cdn.shopify.com/s/files/1/0601/5277/4818/t/5/assets/cursor-zoom-in-2x.svg?v=135689584297059149681641815075);
         }
      </style>
      @yield('css')
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
      <link rel="stylesheet" href="{{asset('frontend/css/theme.css')}}">
      <link rel="stylesheet" href="{{asset('frontend/css/callbuttom.css')}}">
      <script>// This allows to expose several variables to the global scope, to be used in scripts
         window.theme = {
           pageType: "index",
           currencyCodeEnabled: false,
           productImageSize: "tall",
           searchMode: "product,article",
           showPageTransition: false,
           showElementStaggering: false,
           showImageZooming: true
         };
         window.lazySizesConfig = {
           loadHidden: false,
           hFac: 0.5,
           expFactor: 2,
           ricTimeout: 150,
           lazyClass: 'Image--lazyLoad',
           loadingClass: 'Image--lazyLoading',
           loadedClass: 'Image--lazyLoaded'
         };
         
         document.documentElement.className = document.documentElement.className.replace('no-js', 'js');
         document.documentElement.style.setProperty('--window-height', window.innerHeight + 'px');
         
         // We do a quick detection of some features (we could use Modernizr but for so little...)
         (function() {
           document.documentElement.className += ((window.CSS && window.CSS.supports('(position: sticky) or (position: -webkit-sticky)')) ? ' supports-sticky' : ' no-supports-sticky');
           document.documentElement.className += (window.matchMedia('(-moz-touch-enabled: 1), (hover: none)')).matches ? ' no-supports-hover' : ' supports-hover';
         }());
         
         
      </script>
      <script src="{{asset('frontend/js/jquery.min.1.11.0.js')}}" defer></script>
      <script src="{{asset('frontend/js/lazysizes.min.js')}}" async></script>
      <script src="{{asset('frontend/js/libs.min.js')}}" defer></script>
      <script src="{{asset('frontend/js/theme.js')}}" defer></script>
      <script src="{{asset('frontend/js/custom.js')}}" defer></script>
      <script src="{{asset('frontend/js/cart.js')}}" defer></script>
      <script src="{{asset('frontend/js/notify.min.js')}}" defer></script>
   
      </head>
   <body class="prestige--v4 features--heading-small features--heading-uppercase features--show-price-on-hover features--show-button-transition features--show-image-zooming  template-index">
      <svg class="u-visually-hidden">
         <linearGradient id="rating-star-gradient-half">
            <stop offset="50%" stop-color="var(--product-star-rating)" />
            <stop offset="50%" stop-color="var(--text-color-light)" />
         </linearGradient>
      </svg>
      <a class="PageSkipLink u-visually-hidden" href="#main">Skip to content</a>
      <span class="LoadingBar"></span>
      <div class="PageOverlay"></div>
      <div id="shopify-section-popup" class="shopify-section"></div>
      <div class="PageContainer">
         @include('layouts.header.index')
         @yield('content')
         @include('layouts.footer.index')
      </div>
      <div onclick="window.location.href='tel:{{$setting->phone1}}'" class="hotline-phone-ring-wrap">
            <div class="hotline-phone-ring">
               <div class="hotline-phone-ring-circle"></div>
               <div class="hotline-phone-ring-circle-fill"></div>
               <div class="hotline-phone-ring-img-circle">
                  <a href="tel:{{$setting->phone1}}"></a>
                  <a href="tel:{{$setting->phone1}}" class="pps-btn-img">
                     <img src="{{url('frontend/images/phone.webp')}}" alt="Gọi điện thoại" width="50">
                  </a>
               </div>
               <div class="hotline-bar"><a href="tel:{{$setting->phone1}}">
            
                  <span class="text-hotline">{{$setting->phone1}}</span>
               </a>
            </div>
         </div>
      </div>
      <div class="inner-fabs show">
         <a target="blank" href="https://www.messenger.com/t/100077382185306" class="fab roundCool customer-zl"
            id="challenges-fab" data-tooltip="chat messenger">
            <svg  viewBox="0 0 48.00 48.00" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_iconCarrier"> <circle cx="24" cy="24" r="20" fill="#979578"></circle> <path fill-rule="evenodd" clip-rule="evenodd" d="M29.315 16.9578C28.6917 16.8331 27.8498 16.74 27.3204 16.74C25.8867 16.74 25.7936 17.3633 25.7936 18.3607V20.1361H29.3774L29.065 23.8137H25.7936V35H21.3063V23.8137H19V20.1361H21.3063V17.8613C21.3063 14.7453 22.7708 13 26.4477 13C27.7252 13 28.6602 13.187 29.8753 13.4363L29.315 16.9578Z" fill="white"></path> </g></svg>
         </a>
         <a target="blank" href="https://zalo.me/{{$setting->phone1}}" class="fab roundCool customer-zl" id="chat-fab"
            data-tooltip="Nhắn tin Zalo">
            <img class="inner-fab-icon" src="{{url('frontend/images/zalo.svg')}}" alt="chat-active-icon" >
         </a>
      </div>
   </body>
   <script src="{{asset('frontend/js/callbuttom.js')}}" defer></script>
</html>