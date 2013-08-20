<?php //netteCache[01]000387a:2:{s:4:"time";s:21:"0.53043500 1360151612";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:65:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Postup\edit.latte";i:2;i:1360141519;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Postup\edit.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'm3q0icrwmq')
;//
// block addon
//
if (!function_exists($_l->blocks['addon'][] = '_lbdcb1271e92_addon')) { function _lbdcb1271e92_addon($_l, $_args) { extract($_args)
;Nette\Latte\Macros\CoreMacros::includeTemplate('../../../Base/templates/date.latte', $template->getParams(), $_l->templates['m3q0icrwmq'])->render() ;
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb9465a5fccd_drobecky4')) { function _lb9465a5fccd_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb732ac11aff_drobecky5')) { function _lb732ac11aff_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbf92aadaabc_content')) { function _lbf92aadaabc_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<?php $_ctrl = $control->getWidget("itemForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ;
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbb300b1cba4_title')) { function _lbb300b1cba4_title($_l, $_args) { extract($_args)
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
if (!$_l->extends) { call_user_func(reset($_l->blocks['addon']), $_l, get_defined_vars()); } ?>

<?php $_l->extends = 'default.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
