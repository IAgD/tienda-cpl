$(document).ready(inicio);

	function inicio(){
		$(".btncompra").click(add);
		$("#carrito").load("php/poncarrito.php");
	}

	function add(){
		var idnumero = $(this).val();
		var cantidad = $('#num'+idnumero).val();
		//alert(cantidad);

		$("#carrito").load("php/poncarrito.php?p="+$(this).val()+"&cant="+cantidad);
	}