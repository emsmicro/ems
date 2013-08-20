<?php //netteCache[01]000396a:2:{s:4:"time";s:21:"0.27079200 1359723120";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:74:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\SetSazeb\editRate.latte";i:2;i:1359723087;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\SetSazeb\editRate.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'pyklpfgo0o')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lbf1921c34b6_drobecky4')) { function _lbf1921c34b6_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lbcf4be6edf6_drobecky5')) { function _lbcf4be6edf6_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb4c207e97dc_content')) { function _lb4c207e97dc_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<?php $_ctrl = $control->getWidget("rateForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ;Nette\Latte\Macros\CoreMacros::includeTemplate('../../../Base/templates/js_number.latte', $template->getParams(), $_l->templates['pyklpfgo0o'])->render() ;
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lba4211f0208_title')) { function _lba4211f0208_title($_l, $_args) { extract($_args)
?>
<h1><?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?></h1>
<?php
}}

//
// end of blocks
//

// template extending and snippets support

$_l->extends = true; unset($_extends, $template->_extends);


if ($_l->extends) {
	ob_start();
} elseif (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
$_l->extends = 'default.latte'  ?>

<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
