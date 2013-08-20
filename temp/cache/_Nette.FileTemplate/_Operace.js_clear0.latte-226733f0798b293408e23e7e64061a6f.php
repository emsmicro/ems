<?php //netteCache[01]000393a:2:{s:4:"time";s:21:"0.51422600 1359472453";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:71:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Operace\js_clear0.latte";i:2;i:1359472450;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Operace\js_clear0.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '3f0917hk2d')
;
// snippets support
if (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
?>
	$('.cislo').autoNumeric({ aSep: ' ', aDec: ',' }); 

	$("input:text").each(function ()
		{
			// store default value
			var v = this.value;

			$(this).blur(function ()
			{
				// if input is empty, reset value to default 
				if (this.value.length == 0) this.value = v;
			}).focus(function ()
			{
				// when input is focused, clear its contents
				if (this.value == 0) this.value = "";
			}); 
		});
