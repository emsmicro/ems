<?php //netteCache[01]000395a:2:{s:4:"time";s:21:"0.06588500 1359541786";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:73:"C:\xamlite\htdocs\ems\app\modules\Sprava\templates\Uzivatel\default.latte";i:2;i:1333615859;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Sprava\templates\Uzivatel\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'v5wdfg74ag')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lba7cb3025ab_drobecky3')) { function _lba7cb3025ab_drobecky3($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default")) ?>
">Uživatelé</a><?php call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb968debfc6f_drobecky4')) { function _lb968debfc6f_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbccf71801ba_content')) { function _lbccf71801ba_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<?php $cond = $user->isAllowed('Uzivatel','add') || $user->isAllowed('Uzivatel','edit') || $user->isAllowed('Uzivatel','delete') ?>

<table class="grid">
<tr>
	<th>UserName</th>
	<th>Příjmení a jméno</th>
	<th>E-mail</th>
	<th>Role</th>
<?php if ($cond): ?>
	<td class="takce">
		<span class="setadd" title="Přidat záznam">
<?php if ($user->isAllowed('Uzivatel','add')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
	</td>
<?php endif ?>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $item): ?>
<tr>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->username, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->prijmeni, ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->jmeno, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->email, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->prole, ENT_NOQUOTES) ?></td>
<?php if ($cond): ?>
	<td class="takce">
		<span class="setedit" title="Změnit">
<?php if ($user->isAllowed('Uzivatel','edit')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($item->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
		<span class="setdel" title="Odstranit">
<?php if ($user->isAllowed('Uzivatel','delete')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("delete", array($item->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
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
if (!function_exists($_l->blocks['title'][] = '_lbb967fcba77_title')) { function _lbb967fcba77_title($_l, $_args) { extract($_args)
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
