$(function () {

    $("#alipay").click(function () {

        console.log("支付");

        var orderid = $(this).attr("orderid");

        // $.getJSON("/axf/payed/", {"orderid": orderid}, function (data) {
        //     console.log(data);
        //
        //     if(data['status'] === 200){
        //         window.open('/axf/mine/', target='_self');
        //     }
        //
        // })

        var totalPrice = document.getElementById('total_price');
        totalPrice = totalPrice.textContent;
        console.log(totalPrice);
        // 获取支付金额

        console.log('/axf/alipay/?orderid=' + orderid + '&totalPrice=' + totalPrice);

        window.open('/axf/alipay/?orderid=' + orderid + '&totalPrice=' + totalPrice,'_self');

        // $.getJSON("/axf/alipay/", {"orderid": orderid}, function (data) {
        //     console.log(data);
        //
        //     if(data['status'] === 200){
        //         window.open('/axf/mine/', target='_self');
        //     }
        //
        // })
    })

})