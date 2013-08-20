<?php //netteCache[01]000396a:2:{s:4:"time";s:21:"0.23413100 1359204549";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:74:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Produkt\pricesUpd.latte";i:2;i:1359204543;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Produkt\pricesUpd.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'pt41wgrukl')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lbc31b95850d_drobecky4')) { function _lbc31b95850d_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lbe8f9b9e3d1_drobecky5')) { function _lbe8f9b9e3d1_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb03ab207190_content')) { function _lb03ab207190_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<h2><?php echo Nette\Templating\DefaultHelpers::escapeHtml($company, ENT_NOQUOTES) ?></h2>
<h3><?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitle, ENT_NOQUOTES) ?></h3>

<?php if ($item): ?>
	<p style="margin: 20px 0 50px 20px;">Opravdu chcete vypočítat novou sadu cen produktu?</p>
	<ul id="navi">
		<li style="position:relative; top:-32px;">
<?php if ($user->isAllowed('Kurz','add')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Kurz:add")) ?>
">Nový kurz měny...</a>
<?php endif ?>
		</li>
		<li style="position:relative; top:-32px;">
<?php if ($user->isAllowed('Produkt','addAmount')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("addAmount", array($item->id))) ?>
">Nové množství...</a>
<?php endif ?>
		</li>
	</ul>
<?php $_ctrl = $control->getWidget("pricesUpdForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ?>
	<p style="font-size:x-small;" />
		<i>Pro výpočet ceny v cizí měně je nutné zvolit měnu a kurz, popř. zadejte nový kurz a akci opakujte.</i><br />
		<i>Rovněž je možné změnit kalkulační vzorec za jiný, než defaultní a vypočítat jinou cenovou variantu.</i><br />
	</p>

<?php else: ?>
	<p>Produkt nebyl nalezen.</p>
<?php endif ;
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbd3be30669e_title')) { function _lbd3be30669e_title($_l, $_args) { extract($_args)
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
