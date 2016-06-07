<? php

echo "<a\href=\itemtemplate.php>Maybe?</a>";
	// $i = 0;
	// while(fopen("item", "x") == FALSE)
	// {
	// 	++$i;
	// 	fopen("item"+$i)
	// }



if ($_SERVER["REQUEST_METHOD"] == "POST")
{
	$item_title = $_REQUEST['item-title'];
	$item_description = $_REQUEST['item-description'];
	$item_price = $_REQUEST['item-price'];
	echo($item_price);
	echo($item_title);
}
?>