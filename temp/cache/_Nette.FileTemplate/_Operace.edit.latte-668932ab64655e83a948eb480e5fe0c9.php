<?php //netteCache[01]000388a:2:{s:4:"time";s:21:"0.09100800 1362216232";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:66:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Operace\edit.latte";i:2;i:1362216228;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Operace\edit.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'aze8kihw79')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb415b153a1f_drobecky4')) { function _lb415b153a1f_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb166864d16d_drobecky5')) { function _lb166864d16d_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbedd083db7c_content')) { function _lbedd083db7c_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<h4><?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitle, ENT_NOQUOTES) ?></h4>
<h4><?php echo Nette\Templating\DefaultHelpers::escapeHtml($company, ENT_NOQUOTES) ?></h4>

<?php $_ctrl = $control->getWidget("itemForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ?>

<?php Nette\Latte\Macros\CoreMacros::includeTemplate('../../../Base/templates/js_number.latte', $template->getParams(), $_l->templates['aze8kihw79'])->render() ;
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb933e75d873_title')) { function _lb933e75d873_title($_l, $_args) { extract($_args)
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
