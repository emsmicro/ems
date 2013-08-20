<?php //netteCache[01]000394a:2:{s:4:"time";s:21:"0.12781300 1359548793";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:72:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\SetSazeb\detail.latte";i:2;i:1359548788;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\SetSazeb\detail.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'gi0ke25a1t')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lbe46375c16a_drobecky4')) { function _lbe46375c16a_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb784af44d50_drobecky5')) { function _lb784af44d50_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb23f70dde7a_content')) { function _lb23f70dde7a_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<ul id="navi">
<?php if ($user->isAllowed('SetSazeb','add')): ?>
	<li title="Nový set sazeb"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">Nová...</a></li>
<?php endif ;if ($user->isAllowed('SetSazeb','edit')): ?>
	<li title="Změnit set sazeb"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($item->id))) ?>
">Změnit</a></li>
<?php endif ;if ($user->isAllowed('SetSazeb','addGroup')): ?>
	<li title="Nové režijní sazby..."><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("addGroup", array($idss))) ?>
">&#10010 sazby</a></li>
<?php endif ?>
</ul>

<table class="grid">

<tr><th>Název</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->nazev, ENT_NOQUOTES) ?></td></tr>
<tr><th>Platnost od</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($item->platnost_od, '%d.%m.%Y'), ENT_NOQUOTES) ?></td></tr>
<tr><th>Platnost do</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($item->platnost_do, '%d.%m.%Y'), ENT_NOQUOTES) ?></td></tr>
<tr><th>Kalk. vzorec</th><td title="<?php echo htmlSpecialChars($item->popis) ?>
"><b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->kzkratka, ENT_NOQUOTES) ?>
</b>: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->knazev, ENT_NOQUOTES) ?></td></tr>
</table>
<p>

<?php if ($sazby): $cond = $user->isAllowed('SetSazeb','add') || $user->isAllowed('SetSazeb','edit') || $user->isAllowed('SetSazeb','delete') ?>

	<table class="grid">
	<tr>
		<th>#</th>
		<th>Sazby</th>
		<th>Zkratka</th>
		<th>Hodnota [%]</th>
		<th style="text-align:center">Akce</th>
	</tr>
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($sazby) as $saz): ?>
	<tr>
		<td><i><?php echo Nette\Templating\DefaultHelpers::escapeHtml($saz->poradi, ENT_NOQUOTES) ?></i></td>
		<td><i><?php echo Nette\Templating\DefaultHelpers::escapeHtml($saz->typ, ENT_NOQUOTES) ?></i></td>
		<td class="mini"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($saz->zkratka, ENT_NOQUOTES) ?></td>
		<td class="tcislo"><b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($saz->hodnota, 1, ',', ' '), ENT_NOQUOTES) ?> %</b></td>
		<td class="takce">
<?php if ($saz->sid > 0): ?>
				<span class="setedit" title="Změnit">
<?php if ($user->isAllowed('SetSazeb','editRate')): ?>
					<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("editRate", array($saz->sid, $saz->tid, $idss))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
				</span>
				<span class="setdel" title="Odstranit">
<?php if ($user->isAllowed('SetSazeb','deleteRate')): ?>
					<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("deleteRate", array($saz->sid, $idss))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
				</span>
<?php else: ?>
				<span class="setadd" title="Přidat...">
<?php if ($user->isAllowed('SetSazeb','addRate')): ?>
					<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("addRate", array($saz->tid, $idss))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
				</span>
<?php endif ?>
		</td>
	</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
	</table>
<?php endif ;if ($vzorce): Nette\Latte\Macros\CoreMacros::includeTemplate('../vzorce.latte', $template->getParams(), $_l->templates['gi0ke25a1t'])->render() ;endif ;
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lba56a337e9f_title')) { function _lba56a337e9f_title($_l, $_args) { extract($_args)
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
