<div id="shopify-section-announcement" class="shopify-section">
   <section id="section-announcement" data-section-id="announcement" data-section-type="announcement-bar">
      <div class="AnnouncementBar">
         <div class="AnnouncementBar__Wrapper">
            <p class="AnnouncementBar__Content Heading">{{$setting->webname}}</p>
         </div>
      </div>
   </section>
   @php $total = 0; $qty = 0 ; @endphp
         @foreach((array) session('cart') as $id => $details)
                     @php 
                     $total += ($details['price'] - ($details['price']*($details['discount']/100))) * $details['quantity'] ;
                     $qty += $details['quantity'] ;
                     @endphp
         @endforeach
   <style>
      #section-announcement {
      background: white;
      color: #343434;
      }
   </style>
   <script>
      document.documentElement.style.setProperty('--announcement-bar-height', document.getElementById('shopify-section-announcement').offsetHeight + 'px');
   </script>
</div>
<div id="shopify-section-header" class="shopify-section shopify-section--header">
   <div id="Search" class="Search" aria-hidden="true">
      <div class="Search__Inner">
         <div class="Search__SearchBar">
            <form action="{{route('search_result')}}" method="post" role="search" class="Search__Form">
               @csrf
             
               <input type="search" class="Search__Input Heading" name="q" placeholder="Từ khóa..." required>
               <input type="submit" value="Tìm kiếm" style="border: 1px solid black; padding:5px ; border-radius:10px">
            </form>
          
         </div>
      </div>
   </div>
   <header id="section-header"
      class="Header Header--inline  "
      data-section-id="header"
      data-section-type="header"
      data-section-settings='{
      "navigationStyle": "inline",
      "hasTransparentHeader": true,
      "isSticky": true
      }'
      role="banner">
      <div class="Header__Wrapper">
         <div class="Header__FlexItem Header__FlexItem--fill">
            <button class="Header__Icon Icon-Wrapper Icon-Wrapper--clickable hidden-desk" aria-expanded="false" data-action="open-drawer" data-drawer-id="sidebar-menu" aria-label="Open navigation">
               <span class="hidden-tablet-and-up">
                  <svg class="Icon Icon--nav " role="presentation" viewBox="0 0 20 14">
                     <path d="M0 14v-1h20v1H0zm0-7.5h20v1H0v-1zM0 0h20v1H0V0z" fill="currentColor"></path>
                  </svg>
               </span>
               <span class="hidden-phone">
                  <svg class="Icon Icon--nav-desktop " role="presentation" viewBox="0 0 24 16">
                     <path d="M0 15.985v-2h24v2H0zm0-9h24v2H0v-2zm0-7h24v2H0v-2z" fill="currentColor"></path>
                  </svg>
               </span>
             @if ($qty > 0)
             <span class="Header__CartDot is-visible"></span>
             @endif
            </button>
            <nav class="Header__MainNav hidden-pocket hidden-lap" aria-label="Main navigation">
               <ul class="HorizontalList HorizontalList--spacingExtraLoose">
                  <li class="HorizontalList__Item " aria-haspopup="true">
                     <a href="" class="Heading u-h6">Sản phẩm </a>
                     <div class="DropdownMenu" aria-hidden="true">
                        <ul class="Linklist">
                           @foreach ($categoryhome as $item)
                           <li class="Linklist__Item" >
                              <a href="{{route('allListProCate',['danhmuc'=>$item->slug])}}" class="Link Link--secondary">{{languageName($item->name)}} </a>

                              <ul class="menu-tuan-cus">
                                 @foreach ($item->typeCate as $type)
                                    <li class="" >
                                       <a href="{{route('allListType',['danhmuc'=>$type->cate_slug, 'loaidanhmuc'=>$type->slug])}}">{{languageName($type->name)}}
                                       </a>
                                    </li>
                                 @endforeach
                              </ul>
                           </li>
                           @endforeach
                        </ul>
                     </div>
                  </li>
                  <li class="HorizontalList__Item " >
                     <a href="{{route('serviceList')}}" class="Heading u-h6">Dịch vụ<span class="Header__LinkSpacer">Dịch vụ</span></a>
                  </li>
                  <li class="HorizontalList__Item " >
                     <a href="{{route('duanTieuBieu')}}" class="Heading u-h6">Dự án<span class="Header__LinkSpacer">Dự án</span></a>
                  </li>
                  <li class="HorizontalList__Item " >
                     <a href="{{route('aboutUs')}}" class="Heading u-h6">Về chúng tôi<span class="Header__LinkSpacer">Về chúng tôi</span></a>
                  </li>
                  <li class="HorizontalList__Item " >
                     <a href="{{route('allListBlog')}}" class="Heading u-h6">Tin tức<span class="Header__LinkSpacer">Tin tức</span></a>
                  </li>
                  <li class="HorizontalList__Item " >
                     <a href="{{route('lienHe')}}" class="Heading u-h6">Liên hệ<span class="Header__LinkSpacer">Liên hệ</span></a>
                  </li>
               </ul>
            </nav>
         </div>
         <div class="Header__FlexItem Header__FlexItem--logo">
            <h1 class="Header__Logo"><a href="{{route('home')}}" class="Header__LogoLink"><img class="Header__LogoImage Header__LogoImage--primary"
               src="{{$setting->logo}}"
               srcset="{{$setting->logo}} 1x, {{$setting->logo}} 2x"
               width="1680"
               height="350"
               alt="{{$setting->webname}}"></a></h1>
         </div>
         <div class="Header__FlexItem Header__FlexItem--fill">
            <nav class="Header__SecondaryNav hidden-phone">
               <ul class="HorizontalList HorizontalList--spacingLoose hidden-pocket hidden-lap">
                  <li class="HorizontalList__Item">
                     <a href="/search" class="Heading Link Link--primary Text--subdued u-h8" data-action="toggle-search">Tìm kiếm</a>
                  </li>
                  <li class="HorizontalList__Item">
                     <a href="{{route('listCart')}}" class="Heading u-h6" >Cart (<span class="Header__CartCount cart_count">{{$qty }}</span>)</a>
                  </li>
               </ul>
            </nav>
            <a href="/search" class="Header__Icon Icon-Wrapper Icon-Wrapper--clickable hidden-desk" data-action="toggle-search" aria-label="Search">
               <span class="hidden-tablet-and-up">
                  <svg class="Icon Icon--search " role="presentation" viewBox="0 0 18 17">
                     <g transform="translate(1 1)" stroke="currentColor" fill="none" fill-rule="evenodd" stroke-linecap="square">
                        <path d="M16 16l-5.0752-5.0752"></path>
                        <circle cx="6.4" cy="6.4" r="6.4"></circle>
                     </g>
                  </svg>
               </span>
               <span class="hidden-phone">
                  <svg class="Icon Icon--search-desktop " role="presentation" viewBox="0 0 21 21">
                     <g transform="translate(1 1)" stroke="currentColor" stroke-width="2" fill="none" fill-rule="evenodd" stroke-linecap="square">
                        <path d="M18 18l-5.7096-5.7096"></path>
                        <circle cx="7.2" cy="7.2" r="7.2"></circle>
                     </g>
                  </svg>
               </span>
            </a>
            <a href="{{route('listCart')}}" class="Header__Icon Icon-Wrapper Icon-Wrapper--clickable hidden-desk" >
               <span class="hidden-tablet-and-up">
                  <svg class="Icon Icon--cart " role="presentation" viewBox="0 0 17 20">
                     <path d="M0 20V4.995l1 .006v.015l4-.002V4c0-2.484 1.274-4 3.5-4C10.518 0 12 1.48 12 4v1.012l5-.003v.985H1V19h15V6.005h1V20H0zM11 4.49C11 2.267 10.507 1 8.5 1 6.5 1 6 2.27 6 4.49V5l5-.002V4.49z" fill="currentColor"></path>
                  </svg>
               </span>
               <span class="hidden-phone">
                  <svg class="Icon Icon--cart-desktop " role="presentation" viewBox="0 0 19 23">
                     <path d="M0 22.985V5.995L2 6v.03l17-.014v16.968H0zm17-15H2v13h15v-13zm-5-2.882c0-2.04-.493-3.203-2.5-3.203-2 0-2.5 1.164-2.5 3.203v.912H5V4.647C5 1.19 7.274 0 9.5 0 11.517 0 14 1.354 14 4.647v1.368h-2v-.912z" fill="currentColor"></path>
                  </svg>
               </span>
               <span class="Header__CartDot "></span>
            </a>
         </div>
      </div>
   </header>
   <style>:root {
      --use-sticky-header: 1;
      --use-unsticky-header: 0;
      }
      .shopify-section--header {
      position: -webkit-sticky;
      position: sticky;
      }.Header__LogoImage {
      max-width: 255px;
      }
      @media screen and (max-width: 640px) {
      .Header__LogoImage {
      max-width: 160px;
      }
      }:root {
      --header-is-not-transparent: 0;
      --header-is-transparent: 1;
      }
      
   </style>
   <script>
      document.documentElement.style.setProperty('--header-height', document.getElementById('shopify-section-header').offsetHeight + 'px');
   </script>
</div>
<div id="shopify-section-sidebar-menu" class="shopify-section">
   <section id="sidebar-menu" class="SidebarMenu Drawer Drawer--small Drawer--fromLeft" aria-hidden="true" data-section-id="sidebar-menu" data-section-type="sidebar-menu">
      <header class="Drawer__Header" data-drawer-animated-left>
         <button class="Drawer__Close Icon-Wrapper--clickable" data-action="close-drawer" data-drawer-id="sidebar-menu" aria-label="Close navigation">
            <svg class="Icon Icon--close " role="presentation" viewBox="0 0 16 14">
               <path d="M15 0L1 14m14 0L1 0" stroke="currentColor" fill="none" fill-rule="evenodd"></path>
            </svg>
         </button>
      </header>
      <style>
         #menu-cus{
            transform: translateY(-30px)
         }
      </style>
      <div class="Drawer__Content">
         <div class="Drawer__Main" data-drawer-animated-left data-scrollable>
            <div class="Drawer__Container">
               <nav class="SidebarMenu__Nav SidebarMenu__Nav--primary" aria-label="Sidebar navigation">
                  <div class="Collapsible">
                     <button class="Collapsible__Button Heading u-h6" data-action="toggle-collapsible" aria-expanded="false">Sản phẩm<span class="Collapsible__Plus"></span>
                     </button>
                     <div class="Collapsible__Inner">
                        <div class="Collapsible__Content">
                           @foreach ($categoryhome as $item)
                           <div class="Collapsible">
                              <a href="{{route('allListProCate',['danhmuc'=>$item->slug])}}">{{languageName($item->name)}}</a>
                              <button class="Collapsible__Button Heading Text--subdued Link Link--primary u-h7" data-action="toggle-collapsible" aria-expanded="false">
                                 @if (count($item->typeCate) > 0)
                                 <span id="menu-cus" class="Collapsible__Plus"></span>
                                 @endif
                              </button>
                              <div class="Collapsible__Inner">
                                 <div class="Collapsible__Content">
                                    @foreach ($item->typeCate as $type)
                                    <div class="Collapsible">
                                       <a href="{{route('allListType',['danhmuc'=>$type->cate_slug, 'loaidanhmuc'=>$type->slug])}}" class="Collapsible__Button Heading Text--subdued Link Link--primary u-h7">{{languageName($type->name)}}
                                       </a>
                                    </div>
                                    @endforeach
                                 </div>
                              </div>
                           </div>
                           @endforeach
                        </div>
                     </div>
                  </div>
                  <div class="Collapsible"><a href="{{route('serviceList')}}" class="Collapsible__Button Heading Link Link--primary u-h6">Dịch vụ</a></div>
                  <div class="Collapsible"><a href="{{route('duanTieuBieu')}}" class="Collapsible__Button Heading Link Link--primary u-h6">Dự án</a></div>
                  <div class="Collapsible"><a href="{{route('aboutUs')}}" class="Collapsible__Button Heading Link Link--primary u-h6">Về chúng tôi</a></div>
                  <div class="Collapsible"><a href="{{route('allListBlog')}}" class="Collapsible__Button Heading Link Link--primary u-h6">Tin tức</a></div>
                  <div class="Collapsible"><a href="{{route('lienHe')}}" class="Collapsible__Button Heading Link Link--primary u-h6">Liên hệ</a></div>
               </nav>
               <nav class="SidebarMenu__Nav SidebarMenu__Nav--secondary">
                  <ul class="Linklist Linklist--spacingLoose"></ul>
               </nav>
            </div>
         </div>
      </div>
   </section>
</div>