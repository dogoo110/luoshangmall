function change(n) {
    var amount = parseInt($("#buyNumInp").val());
    if(amount<=1 && n<0) {
      return;
    }
    
    $("#buyNumInp").val(amount + n);
}
function toCart(sourceUrl){
	var amount=$("#buyNumInp").val();
	var size=$("input[name=size]:checked").val();
	var url=sourceUrl+"/"+amount+"/"+size;
	window.location.href=url;
}