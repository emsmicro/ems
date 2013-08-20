<?php //netteCache[01]000391a:2:{s:4:"time";s:21:"0.75389300 1360396846";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:69:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Sablona\addTypo.latte";i:2;i:1360220301;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Sablona\addTypo.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'fr7sg5khfp')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb7e7df3d035_drobecky4')) { function _lb7e7df3d035_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lbd21d52e9fe_drobecky5')) { function _lbd21d52e9fe_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbb5bed3a4d6_content')) { function _lbb5bed3a4d6_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<h4><?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitul, ENT_NOQUOTES) ?></h4>

<?php $_ctrl = $control->getWidget("typoForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ?>

<?php Nette\Latte\Macros\CoreMacros::includeTemplate('../../../Base/templates/js_edit.latte', array('cselect' => '#frmtypoForm-id_typy_operaci', 'ctext' => '#frmtypoForm-nazev') + $template->getParams(), $_l->templates['fr7sg5khfp'])->render() ?>

<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbf715fb9965_title')) { function _lbf715fb9965_title($_l, $_args) { extract($_args)
?>
<h2><?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?></h2>
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
$_l->extends = 'detail.latte'  ?>

<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
