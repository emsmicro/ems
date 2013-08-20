<?php //netteCache[01]000390a:2:{s:4:"time";s:21:"0.54290600 1362216452";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:68:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Postup\addOper.latte";i:2;i:1362216445;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Postup\addOper.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'zu3sciepze')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lbdc602f19ae_drobecky4')) { function _lbdc602f19ae_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb8c1eb440c8_drobecky5')) { function _lb8c1eb440c8_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lba2f2630a08_content')) { function _lba2f2630a08_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<h4><?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitul1, ENT_NOQUOTES) ?></h4>
<h4><?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitul2, ENT_NOQUOTES) ?></h4>

<?php $_ctrl = $control->getWidget("operForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ?>

<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbd705ff820d_title')) { function _lbd705ff820d_title($_l, $_args) { extract($_args)
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
