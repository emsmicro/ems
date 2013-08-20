<?php //netteCache[01]000390a:2:{s:4:"time";s:21:"0.07479200 1359546618";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:68:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Operace\delete.latte";i:2;i:1331456437;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Operace\delete.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'hssb1bj45r')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb0734b6684b_drobecky4')) { function _lb0734b6684b_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lbdd83bd9792_drobecky5')) { function _lbdd83bd9792_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbc7558906fc_content')) { function _lbc7558906fc_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<?php if ($item): if ($id>0): ?>
		<p>Opravdu chcete smazat operaci: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($nazev, ENT_NOQUOTES) ?>?</p>
<?php $_ctrl = $control->getWidget("deleteForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ;else: ?>
		<div class="flash exclamation">
			<p>Chcete opravdu odstranit <?php echo Nette\Templating\DefaultHelpers::escapeHtml($nazev, ENT_NOQUOTES) ?>?</p>
<?php $_ctrl = $control->getWidget("deleteForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ?>
		</div>
<?php endif ?>

<?php else: ?>
	<p>Položka nebyla nalezena.</p>
<?php endif ;
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb194fda2eff_title')) { function _lb194fda2eff_title($_l, $_args) { extract($_args)
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
