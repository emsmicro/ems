<?php //netteCache[01]000392a:2:{s:4:"time";s:21:"0.60364900 1359647347";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:70:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\SetSazebO\detail.latte";i:2;i:1359647345;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\SetSazebO\detail.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'l07n25nsq6')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb3d758d4f25_drobecky4')) { function _lb3d758d4f25_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lbd5bd802a16_drobecky5')) { function _lbd5bd802a16_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbdb8c43940d_content')) { function _lbdb8c43940d_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<ul id="navi">
<?php if ($user->isAllowed('SetSazebO','add')): ?>
	<li title="Nový set sazeb"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">Nová...</a></li>
<?php endif ;if ($user->isAllowed('SetSazebO','edit')): ?>
	<li title="Změnit set sazeb"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($item->id))) ?>
">Změnit</a></li>
<?php endif ;if ($user->isAllowed('SetSazebO','addGroup')): ?>
	<li title="Nový set sazeb..."><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("addGroup", array($idss))) ?>
">&#10010 sazby</a></li>
<?php endif ?>
</ul>

<table class="grid">
	<tr><th>Název</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->nazev, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Platnost od</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($item->platnost_od, '%d.%m.%Y'), ENT_NOQUOTES) ?></td></tr>
	<tr><th>Platnost do</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($item->platnost_do, '%d.%m.%Y'), ENT_NOQUOTES) ?></td></tr>
</table>
<p></p>
<table class="grid" style="min-width:80%;">
<tr>
	<th>#</th>
	<th>Hodinová sazba služby</th>
	<th>Hodnota [Kč/h]</th>
	<th style="text-align:center;">Akce</th>
</tr>
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($sazby) as $saz): ?>
<tr>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($saz->poradi, ENT_NOQUOTES) ?></td>
	<td><i><?php echo Nette\Templating\DefaultHelpers::escapeHtml($saz->typ, ENT_NOQUOTES) ?></i></td>
	<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($saz->hodnota, 2, ',', ' '), ENT_NOQUOTES) ?></td>
	<td class="takce">
<?php if ($saz->sid > 0): ?>
			<span class="setedit" title="Změnit">
<?php if ($user->isAllowed('SetSazebO','editRate')): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("editRate", array($saz->sid, $saz->tid, $idss))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
			</span>
			<span class="setdel" title="Odstranit">
<?php if ($user->isAllowed('SetSazebO','deleteRate')): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("deleteRate", array($saz->sid, $idss))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
			</span>
<?php else: ?>
			<span class="setadd" title="Přidat...">
<?php if ($user->isAllowed('SetSazebO','addRate')): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("addRate", array($saz->tid, $idss))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
			</span>
<?php endif ?>
	</td>
</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</table>

<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb7997448478_title')) { function _lb7997448478_title($_l, $_args) { extract($_args)
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
