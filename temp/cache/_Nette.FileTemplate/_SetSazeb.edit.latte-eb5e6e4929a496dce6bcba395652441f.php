<?php //netteCache[01]000392a:2:{s:4:"time";s:21:"0.34390500 1359281397";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:70:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\SetSazeb\edit.latte";i:2;i:1322824394;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\SetSazeb\edit.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'pfflr4c6nm')
;//
// block addon
//
if (!function_exists($_l->blocks['addon'][] = '_lb908c8d8941_addon')) { function _lb908c8d8941_addon($_l, $_args) { extract($_args)
;Nette\Latte\Macros\CoreMacros::includeTemplate('../../../Base/templates/date.latte', $template->getParams(), $_l->templates['pfflr4c6nm'])->render() ;
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lbe76fb93e1e_drobecky4')) { function _lbe76fb93e1e_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb9ea5ab72d4_drobecky5')) { function _lb9ea5ab72d4_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbc6b3d3a2c0_content')) { function _lbc6b3d3a2c0_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<?php $_ctrl = $control->getWidget("itemForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ;
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb600ad0dfef_title')) { function _lb600ad0dfef_title($_l, $_args) { extract($_args)
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
