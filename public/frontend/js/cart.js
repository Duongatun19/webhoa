function formatNumber(num) {
    return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
}
function shopnow(proId,qty) {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    if(qty == 0){
            var qty = $( "#inputqty"+proId ).val();
            $.ajax({
                url: "/update-cart",
                method: "POST",
                data: {
                    'quantity': qty,
                    'id': proId,
                },
                success: function (response) {
                    // console.log(response);
                    var html = '';
                    var total = 0;
                    var qtys = 0;
                    Object.keys(response).forEach(function (key){
                        html += '<tr >';
                        html += '<td class="product-thumbnail"><a href="#"><img src="'+response[key].image+'" alt="product1"></a></td>';
                        html += '<td class="product-name" data-title="Product"><a href="#">'+JSON.parse(response[key].name)[0].content+'</a></td>';
                        html += '<td class="product-price" data-title="Price">'+formatNumber(response[key].price)+'đ</td>';
                        html += '<td class="product-quantity" data-title="Quantity">';
                        html +=    '<div class="quantity">'
                        html +=     '<input type="text" name="quantity" onkeyup="addToCart('+response[key].idpro+',0)" id="inputqty'+response[key].idpro+'" value="'+response[key].quantity+'" title="Qty" class="qty" size="4">'
                        html +=      '</div>'
                        html +=  '</td>';
                        html +='<td class="product-subtotal" data-title="Total">'+ formatNumber(response[key].price * response[key].quantity)+'đ</td>';
                        html +='<td class="product-remove" data-title="Remove">';
                        html +=    '<a href="javascript:;" onclick="removeCartList('+response[key].idpro+')">';
                        html +=        '<i class="ti-close"></i>';
                        html +=    '</a>';
                        html += '</td>';
                        html += '</tr>';
                        total += response[key].price * response[key].quantity
                        qtys += parseInt(response[key].quantity)
                    });
                    html += '<tr>'
                    html +=        	'<td class="product-thumbnail">Tổng:</td>'
                    html +=            '<td class="product-name" data-title="Product"></td>'
                    html +=            '<td class="product-price" data-title="Price"></td>'
                    html +=            '<td class="product-quantity" data-title="Quantity"></td>'
                    html +=          	'<td class="product-subtotal" data-title="Total">'+formatNumber(total)+'đ</td>'
                    html +=            '<td class="product-remove" data-title="Remove"></td>'
                    html +=        '</tr>'
                    console.log(html)
                    $("#list_cart_checkout").html(html);
                    $('.cart_count').html(qtys);
                    // $(".cart_list").append("<b>Appended text</b>");
                },
            });
        
    }else{
        var qty = $( "#inputqty").val();
        $.ajax({
            url: "/add-to-cart",
            method: "POST",
            data: {
                'quantity': qty,
                'product_id': proId,
            },
            success: function (response) {
                window.location.href = '/gio-hang.html';
            },
        });
    }
}
function addToCart(proId,qty) {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    }); 
    if(qty == 0){
            var qty = $( "#inputqty"+proId ).val();
            $.ajax({
                url: "/update-cart",
                method: "POST",
                data: {
                    'quantity': qty,
                    'id': proId,
                },
                success: function (response) {
                    // console.log(response);
                    var html = '';
                    var total = 0;
                    var qtys = 0;
                    Object.keys(response).forEach(function (key){
                        html += '<tr >';
                        html += '<td class="product-thumbnail"><a href="#"><img src="'+response[key].image+'" alt="product1"></a></td>';
                        html += '<td class="product-name" data-title="Product"><a href="#">'+JSON.parse(response[key].name)[0].content+'</a></td>';
                        html += '<td class="product-price" data-title="Price">'+formatNumber(response[key].price)+'đ</td>';
                        html += '<td class="product-quantity" data-title="Quantity">';
                        html +=    '<div class="quantity">'
                        html +=     '<input type="text" name="quantity" onkeyup="addToCart('+response[key].idpro+',0)" id="inputqty'+response[key].idpro+'" value="'+response[key].quantity+'" title="Qty" class="qty" size="4">'
                        html +=      '</div>'
                        html +=  '</td>';
                        html +='<td class="product-subtotal" data-title="Total">'+ formatNumber(response[key].price * response[key].quantity)+'đ</td>';
                        html +='<td class="product-remove" data-title="Remove">';
                        html +=    '<a href="javascript:;" onclick="removeCartList('+response[key].idpro+')">';
                        html +=        '<i class="ti-close"></i>';
                        html +=    '</a>';
                        html += '</td>';
                        html += '</tr>';
                        total += response[key].price * response[key].quantity
                        qtys += parseInt(response[key].quantity)
                    });
                    html += '<tr>'
                    html +=        	'<td class="product-thumbnail">Tổng:</td>'
                    html +=            '<td class="product-name" data-title="Product"></td>'
                    html +=            '<td class="product-price" data-title="Price"></td>'
                    html +=            '<td class="product-quantity" data-title="Quantity"></td>'
                    html +=          	'<td class="product-subtotal" data-title="Total">'+formatNumber(total)+'đ</td>'
                    html +=            '<td class="product-remove" data-title="Remove"></td>'
                    html +=        '</tr>'
                    console.log(html)
                    $("#list_cart_checkout").html(html);
                    $('.cart_count').html(qtys);
                    $.notify("Thêm giỏ hàng thành công",'success');
                },
            });
        
    }else{
        var qty = $( "#quantity").val();
        var size = $('input[name=option2]:checked').val();
        var color = $('input[name=option1]:checked').val();
        $.ajax({
            url: "/add-to-cart",
            method: "POST",
            data: {
                'quantity': qty,
                'product_id': proId,
                'color':color,
                'size':size,
            },
            success: function (response) {
                // console.log(response);
                var html = '';
                var total = 0;
                var qtys = 0;
                Object.keys(response).forEach(function (key){
                    html += '<tr class="item_2">';
                    html +=     '<td class="img"><a href="javascript:;" title="javascript:;"><img src="'+response[key].image+'" alt="javascript:;"></a></td>';
                    html +=     '<td>';
                    html +=         '<a class="pro-title-view" href="javascript:;" title="javascript:;">'+JSON.parse(response[key].name)[0].content+'</a>';
                    html +=         '<span class="pro-quantity-view">'+ response[key].quantity +'</span>';
                    html +=         '<span class="pro-price-view">'+ formatNumber((response[key].price - (response[key].price*(response[key].discount/100)))) +'₫</span>';
                    html +=         '<span class="remove_link remove-cart"><a href="javascript:void(0);" onclick="removeCart('+response[key].idpro+')"><i class="fa fa-times"></i></a></span>';				
                    html +=     '</td>';
                    html += '</tr>';
                    total += (response[key].price - (response[key].price*(response[key].discount/100))) * response[key].quantity
                    qtys += parseInt(response[key].quantity)
                });
                $(".total-price").html(formatNumber(total)+"₫");
                $('.cart_count').html(qtys);
                $(".cart_list").html(html);
                $.notify("Thêm giỏ hàng thành công",'success');
            },
        });
    }
}
function removeCart(cart_id) {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
        $.ajax({
            url: "/remove-from-cart",
            method: "POST",
            data: {
                'id': cart_id
            },
            success: function (response) {
                var html = '';
            var htmllistcart = "";
            var total = 0;
            var qtys = 0;
            Object.keys(response).forEach(function (key){
                html += '<tr class="item_2">';
                html +=     '<td class="img"><a href="javascript:;" title="javascript:;"><img src="'+response[key].image+'" alt="javascript:;"></a></td>';
                html +=     '<td>';
                html +=         '<a class="pro-title-view" href="javascript:;" title="javascript:;">'+JSON.parse(response[key].name)[0].content+'</a>';
                html +=         '<span class="pro-quantity-view">'+ response[key].quantity +'</span>';
                html +=         '<span class="pro-price-view">'+ formatNumber((response[key].price - (response[key].price*(response[key].discount/100)))) +'₫</span>';
                html +=         '<span class="remove_link remove-cart"><a href="javascript:void(0);" onclick="removeCart('+response[key].idpro+')"><i class="fa fa-times"></i></a></span>';				
                html +=     '</td>';
                html += '</tr>';



                htmllistcart += '<tr class="line-item-container" data-variant-id="1090547766">';
                htmllistcart +=     '<td class="image">';
                htmllistcart +=         '<div class="product_image">';
                htmllistcart +=         '<a href="javascript:;">';
                htmllistcart +=         '<img src="'+response[key].image+'" alt="'+JSON.parse(response[key].name)[0].content+'">';
                htmllistcart +=         '</a>';
                htmllistcart +=         '</div>';
                htmllistcart +=     '</td>';
                htmllistcart +=     '<td class="item">';
                htmllistcart +=         '<a href="javascript:;">';
                htmllistcart +=         '<h3>'+JSON.parse(response[key].name)[0].content+' </h3>';
                htmllistcart +=         '</a>';
                htmllistcart +=         '<p>';
                htmllistcart +=         '<span>'+ formatNumber((response[key].price - (response[key].price*(response[key].discount/100)))) +'₫</span>';
                htmllistcart +=         '</p>';
                htmllistcart +=         '<div class="qty quantity-partent qty-click clearfix">';
                htmllistcart +=         '<button type="button" class="qtyminus qty-btn"  onclick="qtyminus('+response[key].idpro+')">-</button>';
                htmllistcart +=         '<input type="text"  name="qtybutton"  id="quantity-'+response[key].idpro+'"   pattern="[0-9]*" value="'+ response[key].quantity +'" class="tc line-item-qty item-quantity">';
                htmllistcart +=         '<button type="button" class="qtyplus qty-btn" onclick="qtyplus('+response[key].idpro+')">+</button>'	;													
                htmllistcart +=         '</div>';
                htmllistcart +=         '<p class="price">';
                htmllistcart +=         '<span class="text">Thành tiền:</span>';
                htmllistcart +=         '<span class="line-item-total">'+ formatNumber((response[key].price - (response[key].price*(response[key].discount/100)))*response[key].quantity) +'đ</span>';
                htmllistcart +=         '</p>';
                htmllistcart +=     '</td>';
                htmllistcart +=     '<td class="remove">';
                htmllistcart +=         '<a href="javascript:;"  onclick="removeCart('+response[key].idpro+')" class="cart">';
                htmllistcart +=         '<img src="../images/ic_close.png"></a>';
                htmllistcart +=     '</td>';
                htmllistcart += '</tr>';
                total += (response[key].price - (response[key].price*(response[key].discount/100))) * response[key].quantity
                qtys += parseInt(response[key].quantity)
                var price = formatNumber((response[key].price - (response[key].price*(response[key].discount/100))) * response[key].quantity)+"₫";
                $('#cartprice-'+key).html(price);
            });
            
            $('.cart_count').html(qtys);
            $(".cart_list").html(html);
            $(".cart_list_cart").html(htmllistcart);
            $(".total-price").html(formatNumber(total)+"₫");
            },
        });
}
function qtyminus(id){
    console.log(123);
    var quantity = parseInt($('.quantity-'+id).val());
        $('.quantity-'+id).val(quantity - 1)
    $.ajax({
        url: "/update-cart",
        method: "POST",
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        data: {
            'quantity': $('.quantity-'+id).val(),
            'id': id,
        },
        success: function (response) {
            // console.log(response);
            var html = '';
            var htmllistcart = "";
            var total = 0;
            var qtys = 0;
            Object.keys(response).forEach(function (key){
                html += '<tr class="item_2">';
                html +=     '<td class="img"><a href="javascript:;" title="javascript:;"><img src="'+response[key].image+'" alt="javascript:;"></a></td>';
                html +=     '<td>';
                html +=         '<a class="pro-title-view" href="javascript:;" title="javascript:;">'+JSON.parse(response[key].name)[0].content+'</a>';
                html +=         '<span class="pro-quantity-view">'+ response[key].quantity +'</span>';
                html +=         '<span class="pro-price-view">'+ formatNumber((response[key].price - (response[key].price*(response[key].discount/100)))) +'₫</span>';
                html +=         '<span class="remove_link remove-cart"><a href="javascript:void(0);" onclick="removeCart('+response[key].idpro+')"><i class="fa fa-times"></i></a></span>';				
                html +=     '</td>';
                html += '</tr>';



                htmllistcart += '<tr class="line-item-container" data-variant-id="1090547766">';
                htmllistcart +=     '<td class="image">';
                htmllistcart +=         '<div class="product_image">';
                htmllistcart +=         '<a href="javascript:;">';
                htmllistcart +=         '<img src="'+response[key].image+'" alt="'+JSON.parse(response[key].name)[0].content+'">';
                htmllistcart +=         '</a>';
                htmllistcart +=         '</div>';
                htmllistcart +=     '</td>';
                htmllistcart +=     '<td class="item">';
                htmllistcart +=         '<a href="javascript:;">';
                htmllistcart +=         '<h3>'+JSON.parse(response[key].name)[0].content+' </h3>';
                htmllistcart +=         '</a>';
                htmllistcart +=         '<p>';
                htmllistcart +=         '<span>'+ formatNumber((response[key].price - (response[key].price*(response[key].discount/100)))) +'₫</span>';
                htmllistcart +=         '</p>';
                htmllistcart +=         '<div class="qty quantity-partent qty-click clearfix">';
                htmllistcart +=         '<button type="button" class="qtyminus qty-btn"  onclick="qtyminus('+response[key].idpro+')">-</button>';
                htmllistcart +=         '<input type="text"  name="qtybutton"  id="quantity-'+response[key].idpro+'"   pattern="[0-9]*" value="'+ response[key].quantity +'" class="tc line-item-qty item-quantity">';
                htmllistcart +=         '<button type="button" class="qtyplus qty-btn" onclick="qtyplus('+response[key].idpro+')">+</button>'	;													
                htmllistcart +=         '</div>';
                htmllistcart +=         '<p class="price">';
                htmllistcart +=         '<span class="text">Thành tiền:</span>';
                htmllistcart +=         '<span class="line-item-total">'+ formatNumber((response[key].price - (response[key].price*(response[key].discount/100)))*response[key].quantity) +'đ</span>';
                htmllistcart +=         '</p>';
                htmllistcart +=     '</td>';
                htmllistcart +=     '<td class="remove">';
                htmllistcart +=         '<a href="javascript:;"  onclick="removeCart('+response[key].idpro+')" class="cart">';
                htmllistcart +=         '<img src="../frontend/images/ic_close.png"></a>';
                htmllistcart +=     '</td>';
                htmllistcart += '</tr>';
                total += (response[key].price - (response[key].price*(response[key].discount/100))) * response[key].quantity
                qtys += parseInt(response[key].quantity)
                var price = formatNumber((response[key].price - (response[key].price*(response[key].discount/100))) * response[key].quantity)+"₫";
                $('#cartprice-'+key).html(price);
            });
           
            $('.cart_count').html(qtys);
            $(".cart_list").html(html);
            $(".cart_list_cart").html(htmllistcart);
            $(".total-price").html(formatNumber(total)+"₫");
        },
    });
    
}
function qtyplus(id){
    var quantity = parseInt($('.quantity-'+id).val());
        $('.quantity-'+id).val(quantity + 1)
        $.ajax({
            url: "/update-cart",
            method: "POST",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: {
                'quantity': $('.quantity-'+id).val(),
                'id': id,
            },
            success: function (response) {
                // console.log(response);
            var html = '';
            var htmllistcart = "";
            var total = 0;
            var qtys = 0;
            Object.keys(response).forEach(function (key){
                html += '<tr class="item_2">';
                html +=     '<td class="img"><a href="javascript:;" title="javascript:;"><img src="'+response[key].image+'" alt="javascript:;"></a></td>';
                html +=     '<td>';
                html +=         '<a class="pro-title-view" href="javascript:;" title="javascript:;">'+JSON.parse(response[key].name)[0].content+'</a>';
                html +=         '<span class="pro-quantity-view">'+ response[key].quantity +'</span>';
                html +=         '<span class="pro-price-view">'+ formatNumber((response[key].price - (response[key].price*(response[key].discount/100)))) +'₫</span>';
                html +=         '<span class="remove_link remove-cart"><a href="javascript:void(0);" onclick="removeCart('+response[key].idpro+')"><i class="fa fa-times"></i></a></span>';				
                html +=     '</td>';
                html += '</tr>';



                htmllistcart += '<tr class="line-item-container" data-variant-id="1090547766">';
                htmllistcart +=     '<td class="image">';
                htmllistcart +=         '<div class="product_image">';
                htmllistcart +=         '<a href="javascript:;">';
                htmllistcart +=         '<img src="'+response[key].image+'" alt="'+JSON.parse(response[key].name)[0].content+'">';
                htmllistcart +=         '</a>';
                htmllistcart +=         '</div>';
                htmllistcart +=     '</td>';
                htmllistcart +=     '<td class="item">';
                htmllistcart +=         '<a href="javascript:;">';
                htmllistcart +=         '<h3>'+JSON.parse(response[key].name)[0].content+' </h3>';
                htmllistcart +=         '</a>';
                htmllistcart +=         '<p>';
                htmllistcart +=         '<span>'+ formatNumber((response[key].price - (response[key].price*(response[key].discount/100)))) +'₫</span>';
                htmllistcart +=         '</p>';
                htmllistcart +=         '<div class="qty quantity-partent qty-click clearfix">';
                htmllistcart +=         '<button type="button" class="qtyminus qty-btn"  onclick="qtyminus('+response[key].idpro+')">-</button>';
                htmllistcart +=         '<input type="text"  name="qtybutton"  id="quantity-'+response[key].idpro+'"   pattern="[0-9]*" value="'+ response[key].quantity +'" class="tc line-item-qty item-quantity">';
                htmllistcart +=         '<button type="button" class="qtyplus qty-btn" onclick="qtyplus('+response[key].idpro+')">+</button>'	;													
                htmllistcart +=         '</div>';
                htmllistcart +=         '<p class="price">';
                htmllistcart +=         '<span class="text">Thành tiền:</span>';
                htmllistcart +=         '<span class="line-item-total">'+ formatNumber((response[key].price - (response[key].price*(response[key].discount/100)))*response[key].quantity) +'đ</span>';
                htmllistcart +=         '</p>';
                htmllistcart +=     '</td>';
                htmllistcart +=     '<td class="remove">';
                htmllistcart +=         '<a href="javascript:;"  onclick="removeCart('+response[key].idpro+')" class="cart">';
                htmllistcart +=         '<img src="../frontend/images/ic_close.png"></a>';
                htmllistcart +=     '</td>';
                htmllistcart += '</tr>';
                total += (response[key].price - (response[key].price*(response[key].discount/100))) * response[key].quantity
                qtys += parseInt(response[key].quantity)
                var price = formatNumber((response[key].price - (response[key].price*(response[key].discount/100))) * response[key].quantity)+"₫";
                $('#cartprice-'+key).html(price);
            });
            $('.cart_count').html(qtys);
            $(".cart_list").html(html);
            $(".cart_list_cart").html(htmllistcart);
            $(".total-price").html(formatNumber(total)+"₫");
            },
        });
}
function qtyplushome(id){
    var quantity = parseInt($('#inputqty-'+id).val());
        $('#inputqty-'+id).val(quantity+1)
        $.ajax({
            url: "/update-cart",
            method: "POST",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: {
                'quantity': $('#inputqty-'+id).val(),
                'id': id,
            },
            success: function (response) {
                // console.log(response);
                var html = '';
                var total = 0;
                var qtys = 0;
                Object.keys(response).forEach(function (key){
                    html +=               '<div class="ajaxcart__inner ajaxcart__inner--has-fixed-footer cart_body items">';
                    html +=                   '<div class="ajaxcart__row">';
                    html +=                       '<div class="ajaxcart__product cart_product" data-line="1">';
                    html +=                           '<a href="javascript:;" class="ajaxcart__product-image cart_image" title="'+JSON.parse(response[key].name)[0].content+'">';
                    html +=                                    '<img width="80" height="80" src="'+response[key].image+'" alt="Samsung Galaxy Note 21">';
                    html +=                            '</a>';
                    
                    html +=                          ' <div class="grid__item cart_info">';
                    html +=                               '<div class="ajaxcart__product-name-wrapper cart_name">';
                    html +=                                   '<a href="javascript:;" class="ajaxcart__product-name h4" title="'+JSON.parse(response[key].name)[0].content+'">'+JSON.parse(response[key].name)[0].content+'</a>';
                    html +=                               '</div>';
                    html +=                               '<div class="grid">';
                    html +=                                   '<div class="grid__item one-half cart_select cart_item_name">';
                    html +=                                       '<label class="cart_quantity">Số lượng x'+ response[key].quantity +'</label>';
                    html +=                                       '<div class="ajaxcart__qty input-group-btn">';
                    html +=                                  '</div>';
                    html +=                              '</div>';
                    html +=                              '<div class="grid__item one-half text-right cart_prices">';
                    html +=                                  '<span class="cart-price">'+ formatNumber((response[key].price - (response[key].price*(response[key].discount/100)))) +'₫</span>';
                    html +=                              '</div>';
                    html +=                          '</div>';
                    html +=                      '</div>';
                    html +=                  '</div>';
                    html +=              '</div>';
                    html +=          '</div>';
                    total += (response[key].price - (response[key].price*(response[key].discount/100))) * response[key].quantity
                    qtys += parseInt(response[key].quantity)
                    var price = formatNumber((response[key].price - (response[key].price*(response[key].discount/100))) * response[key].quantity)+"₫";
                    $('#cartprice-'+key).html(price);
                });
                html +=          '<div class="ajaxcart__footer ajaxcart__footer--fixed cart-footer">';
                html +=              '<div class="ajaxcart__subtotal">';
                html +=                  '<div class="cart__subtotal">';
                html +=                      '<div class="cart__col-6">Tổng tiền:</div>';
                html +=                      '<div class="text-right cart__totle">';
                html +=                             '<span class="total-price">'+formatNumber(total)+'₫</span>';
                html +=                       '</div>';
                html +=                  '</div>';
                html +=              '</div>';
                html +=              '<div class="cart__btn-proceed-checkout-dt">';
                html += '<div class="row">';
                html += '<div class="col-6">';
                html +=    '<a href="/gio-hang.html" class="buttons btn btn-default " title="Xem chi tiết">Xem chi tiết</a>';
                html += '</div>';
                html += '<div class="col-6">';
                html +=    '<a href="/thanh-toan.html" type="button" class="button btn btn-default" title="Thanh toán">Thanh toán</a>';
                html += '</div>';
                html += '</div>';
                html +=              '</div>';
                html +=          '</div>';
                $('.cart_count').html(qtys);
                $(".cart_list").html(html);
                $(".total-price").html(formatNumber(total)+"₫" );
            },
        });
}
function qtyminusshome(id){
    var quantity = parseInt($('#inputqty-'+id).val());
    if(quantity > 1){
        $('#inputqty-'+id).val(quantity - 1)
    }else{
        $('#inputqty-'+id).val(1)
    }
        $.ajax({
            url: "/update-cart",
            method: "POST",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: {
                'quantity': $('#inputqty-'+id).val(),
                'id': id,
            },
            success: function (response) {
                // console.log(response);
                var html = '';
                var total = 0;
                var qtys = 0;
                Object.keys(response).forEach(function (key){
                    html +=               '<div class="ajaxcart__inner ajaxcart__inner--has-fixed-footer cart_body items">';
                    html +=                   '<div class="ajaxcart__row">';
                    html +=                       '<div class="ajaxcart__product cart_product" data-line="1">';
                    html +=                           '<a href="javascript:;" class="ajaxcart__product-image cart_image" title="'+JSON.parse(response[key].name)[0].content+'">';
                    html +=                                    '<img width="80" height="80" src="'+response[key].image+'" alt="Samsung Galaxy Note 21">';
                    html +=                            '</a>';
                    
                    html +=                          ' <div class="grid__item cart_info">';
                    html +=                               '<div class="ajaxcart__product-name-wrapper cart_name">';
                    html +=                                   '<a href="javascript:;" class="ajaxcart__product-name h4" title="'+JSON.parse(response[key].name)[0].content+'">'+JSON.parse(response[key].name)[0].content+'</a>';
                    html +=                               '</div>';
                    html +=                               '<div class="grid">';
                    html +=                                   '<div class="grid__item one-half cart_select cart_item_name">';
                    html +=                                       '<label class="cart_quantity">Số lượng x'+ response[key].quantity +'</label>';
                    html +=                                       '<div class="ajaxcart__qty input-group-btn">';
                    html +=                                  '</div>';
                    html +=                              '</div>';
                    html +=                              '<div class="grid__item one-half text-right cart_prices">';
                    html +=                                  '<span class="cart-price">'+ formatNumber((response[key].price - (response[key].price*(response[key].discount/100)))) +'₫</span>';
                    html +=                              '</div>';
                    html +=                          '</div>';
                    html +=                      '</div>';
                    html +=                  '</div>';
                    html +=              '</div>';
                    html +=          '</div>';
                    total += (response[key].price - (response[key].price*(response[key].discount/100))) * response[key].quantity
                    qtys += parseInt(response[key].quantity)
                    var price = formatNumber((response[key].price - (response[key].price*(response[key].discount/100))) * response[key].quantity)+"₫";
                    $('#cartprice-'+key).html(price);
                });
                html +=          '<div class="ajaxcart__footer ajaxcart__footer--fixed cart-footer">';
                html +=              '<div class="ajaxcart__subtotal">';
                html +=                  '<div class="cart__subtotal">';
                html +=                      '<div class="cart__col-6">Tổng tiền:</div>';
                html +=                      '<div class="text-right cart__totle">';
                html +=                             '<span class="total-price">'+formatNumber(total)+'₫</span>';
                html +=                       '</div>';
                html +=                  '</div>';
                html +=              '</div>';
                html +=              '<div class="cart__btn-proceed-checkout-dt">';
                html += '<div class="row">';
                html += '<div class="col-6">';
                html +=    '<a href="/gio-hang.html" class="buttons btn btn-default " title="Xem chi tiết">Xem chi tiết</a>';
                html += '</div>';
                html += '<div class="col-6">';
                html +=    '<a href="/thanh-toan.html" type="button" class="button btn btn-default" title="Thanh toán">Thanh toán</a>';
                html += '</div>';
                html += '</div>';
                html +=              '</div>';
                html +=          '</div>';
                $('.cart_count').html(qtys);
                $(".cart_list").html(html);
                $(".total-price").html(formatNumber(total)+"₫" );
            },
        });
}