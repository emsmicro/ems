<?php //netteCache[01]000398a:2:{s:4:"time";s:21:"0.13377300 1359798927";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:76:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\SetSazeb\deleteKalk.latte";i:2;i:1359798317;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\SetSazeb\deleteKalk.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'zg6wo54ntw')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb442bb6de20_drobecky4')) { function _lb442bb6de20_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lbf7f3966341_drobecky5')) { function _lbf7f3966341_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb692c82280f_content')) { function _lb692c82280f_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<?php if ($item): ?>
	<p>Opravdu chcete smazat tento kalkulační vzorec?</p>
<?php $_ctrl = $control->getWidget("deleteForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ?>

<?php else: ?>
	<p>Položka nebyla nalezena.</p>
<?php endif ;
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb1b3a184196_title')) { function _lb1b3a184196_title($_l, $_args) { extract($_args)
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
