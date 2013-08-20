<?php //netteCache[01]000384a:2:{s:4:"time";s:21:"0.14832500 1360220308";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:62:"C:\xamlite\htdocs\ems\app\modules\Base\templates\js_edit.latte";i:2;i:1360220193;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Base\templates\js_edit.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '0e1e41gj16')
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

	$(<?php echo Nette\Templating\DefaultHelpers::escapeJs($cselect) ?>).change(function() {
		var ms = $(this).find(":selected").text();
		var mn = $(<?php echo Nette\Templating\DefaultHelpers::escapeJs($ctext) ?>).val();
		//if (mn == "") { 
			$(<?php echo Nette\Templating\DefaultHelpers::escapeJs($ctext) ?>).val(ms); 
		//}
	});

</script>		
