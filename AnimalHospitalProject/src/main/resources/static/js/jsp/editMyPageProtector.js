/**
* Project Name : AnimalHospital 
* Page Name : editMyPageProtector.js
* Author: Mamiko Kanda
*/
/* 병원 주소검색 */
window.onload = function() {
	document
		.getElementById("address_kakao")
		.addEventListener("click",function() { 
			var width = 500;
			var height = 600; 
			new daum.Postcode({
				width : width,
				height : height,
				oncomplete : function(data) {
				document.getElementById("address1").value = data.address;
				$('#address1').attr('style','border-color : #ced4da;');
				$('#warning4').remove();
				}
		}).open({
			left: (window.screen.width / 2) - (width / 2),
			top: (window.screen.height / 2) - (height / 2)
		});
	});
}
