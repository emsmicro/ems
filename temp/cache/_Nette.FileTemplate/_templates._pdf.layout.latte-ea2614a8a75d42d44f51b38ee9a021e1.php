<?php //netteCache[01]000390a:2:{s:4:"time";s:21:"0.81045500 1359042153";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:68:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\@pdf.layout.latte";i:2;i:1320849450;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\@pdf.layout.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'fnnmwqhzel')
;
// snippets support
if (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Language" content="en" />
	<meta name="description" content="EMS nabídky" />
<?php if (isset($robots)): ?>
	<meta name="robots" content="<?php echo htmlSpecialChars($robots) ?>" />
<?php endif ?>
	<title>PDF výstup | EMS nabídky</title>

	<link rel="stylesheet" media="print" href="<?php echo htmlSpecialChars($basePath) ?>/css/print.css" type="text/css" />


</head>
<body>

	<div id="content">

	<! --- BEGIN of CONTENT ------>
	
<?php Nette\Latte\Macros\UIMacros::callBlock($_l, 'content', $template->getParams()) ?>

	<! --- END of CONTENT ------>
	
	</div>

</body>
</html>