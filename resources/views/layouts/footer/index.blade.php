<div id="shopify-section-footer" class="shopify-section shopify-section--footer">
   <footer id="section-footer" data-section-id="footer" data-section-type="footer" class="Footer " role="contentinfo">
      <div class="Container">
         <div class="Footer__Inner">
            <div class="Footer__Block Footer__Block--text" >
               <h2 class="Footer__Title Heading u-h6">{{$setting->webname}}</h2>
               <div class="Footer__Content Rte">
                  <p>{{$setting->company}}</p>
               </div>
            </div>
            <div class="Footer__Block Footer__Block--links" >
               <h2 class="Footer__Title Heading u-h6">Hỗ trợ khách hàng</h2>
               <ul class="Linklist">
                  @foreach ($pageContent as $item)
                      @if ($item->type == 'ho-tro-khanh-hang')
                      <li class="Linklist__Item">
                        <a href="{{route('pagecontent',['slug'=>$item->slug])}}" class="Link Link--primary">{{$item->title}}</a>
                     </li>
                      @endif
                  @endforeach
               </ul>
            </div>
            <div class="Footer__Block Footer__Block--newsletter" >
               <h2 class="Footer__Title Heading u-h6">Vị trí</h2>
               <div class="Footer__Content Rte">
                  {!!$setting->iframe_map!!}
               </div>
            </div>
         </div>
         <div class="Footer__Aside">
            <div class="Footer__Copyright">
               <a target="_blank" href="https://sbtsoftware.vn/" class="Footer__StoreName Heading u-h7 Link Link--secondary">© Design by SBT</a>
            </div>
         </div>
      </div>
   </footer>
</div>