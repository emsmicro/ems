<?php //netteCache[01]000392a:2:{s:4:"time";s:21:"0.70508700 1359381517";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:70:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Firma\default.latte";i:2;i:1333532249;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Firma\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'giva1yjlv7')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lbff042bac5a_drobecky3')) { function _lbff042bac5a_drobecky3($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default")) ?>
">Zákazníci</a><?php call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb0113beb817_drobecky4')) { function _lb0113beb817_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbc02e4efec1_content')) { function _lbc02e4efec1_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<?php $cond = $user->isAllowed('Firma','add') || $user->isAllowed('Firma','edit') ?>

<table class="grid">
<tr>
	<th><img src="<?php echo htmlSpecialChars($basePath) ?>/images/select.png" title="Zvolit jako aktuální" /></th>
	<th>Název</th>
	<th>Zkratka</th>
	<th>Adresa</th>
<?php if ($cond): ?>
	<td class="takce">
		<span class="setadd" title="Přidat záznam">
<?php if ($user->isAllowed('Firma','add')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
	</td>
<?php endif ?>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($firmy) as $fir): ?>
<tr>
	<td><span class="iconsel"><a title="Zvolit" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setCompany", array($fir->id))) ?>
">&nbsp&nbsp;</a></span></td>

	<td><a title="<?php echo htmlSpecialChars($fir->id) ?>" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("detail", array($fir->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($fir->nazev, ENT_NOQUOTES) ?></a></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($fir->zkratka, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($fir->ulice, ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($fir->cp, ENT_NOQUOTES) ?>
, <?php echo Nette\Templating\DefaultHelpers::escapeHtml($fir->obec, ENT_NOQUOTES) ?>
, <?php echo Nette\Templating\DefaultHelpers::escapeHtml($fir->zstat, ENT_NOQUOTES) ?></td>
<?php if ($cond): ?>
	<td class="takce">
		<span class="setedit" title="Změnit">
<?php if ($user->isAllowed('Firma','edit')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($fir->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
<!--		<a n:href="">Odstranit</a>-->
	</td>
<?php endif ?>
</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</table>
<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbaef7a2adcd_title')) { function _lbaef7a2adcd_title($_l, $_args) { extract($_args)
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
$_l->extends = '../Obchod/default.latte'  ?>




<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
