<?php //netteCache[01]000393a:2:{s:4:"time";s:21:"0.79659400 1363073982";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:71:"C:\xamlite\htdocs\ems\app\modules\Sprava\templates\Agenda\default.latte";i:2;i:1363073979;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Sprava\templates\Agenda\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'a4oiuxmwkb')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lba657de5b2c_drobecky3')) { function _lba657de5b2c_drobecky3($_l, $_args) { extract($_args)
?> » Agendy/funkce<?php call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb378396c00d_drobecky4')) { function _lb378396c00d_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb1df238f3db_content')) { function _lb1df238f3db_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<?php $cond = $user->isAllowed('Agenda','add') || $user->isAllowed('Agenda','edit') || $user->isAllowed('Agenda','delete') ?>

<table class="grid" style="width:880px;">
<tr>
	<th>#ID</th>
	<th>Modul</th>
	<th>Agenda</th>
	<th>Pořadí</th>
	<th>Funkce</th>
	<th>Popis</th>
<?php if ($cond): ?>
	<td class="takce add">
		Akce
		<span class="setadd" title="Přidat novou agendu/funkci"><?php if ($user->isAllowed('Agenda','add')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
	</td>
<?php endif ?>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $it): ?>
<tr>
	<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->id, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->modul, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->presenter, ENT_NOQUOTES) ?></td>
	<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->poradi, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->funkce, ENT_NOQUOTES) ?></td>
	<td class="ntext"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->popis, ENT_NOQUOTES) ?></td>
<?php if ($cond): ?>
	<td class="takce setwidth">
		<span class="setadd" title="Nová agenda/funkce za tento záznam"><?php if ($user->isAllowed('Agenda','add')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add", array($it->modul, $it->presenter, $it->poradi))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
		<span class="setedit" title="Změnit"><?php if ($user->isAllowed('Agenda','edit')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
		<span class="setdel" title="Odstranit"><?php if ($user->isAllowed('Agenda','delete')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("delete", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
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
if (!function_exists($_l->blocks['title'][] = '_lb90bf80098a_title')) { function _lb90bf80098a_title($_l, $_args) { extract($_args)
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
$_l->extends = '../Sprava/default.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
