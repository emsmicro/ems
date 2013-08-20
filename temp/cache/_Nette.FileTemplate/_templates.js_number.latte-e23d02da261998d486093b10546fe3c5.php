<?php //netteCache[01]000386a:2:{s:4:"time";s:21:"0.32473800 1361467612";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:64:"C:\xamlite\htdocs\ems\app\modules\Base\templates\js_number.latte";i:2;i:1361467540;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Base\templates\js_number.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'kdd7804clm')
;
// snippets support
if (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
?>
<script type='text/javascript'>

	//formát čísel, desetinná čárka mezera mezi tisíci
	$('input[type=text].cislo').autoNumeric({ aSep: ' ', aDec: ',' }); 

	//výmaz editačního pole, pokud je hodnota nulová
	$("input:text").each(function ()
		{
			// store default value
			var v = this.value;
			/*
			var textLength = this.value.length;
			if(textLength > 8)
			{
				this.style.width = (textLength)*8 + 'px';
			}
			*/

			/*
			$(this).blur(function ()
			{
				// if input is empty, reset value to default 
				if (this.value.length == 0) this.value = v;
			});
			*/
			$(this).focus(function ()
			{
				var t = this.value.replace(",",".");
				// when input is focused, clear its contents
				if (t == 0) this.value = "";
				//this.select();
			}); 
		});
		
	// označení textu v editačním poli při kliknutí myší do pole
	$(document).on('click','input[type=text]',function(){ this.select(); });


</script>		
