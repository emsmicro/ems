<?php //netteCache[01]000391a:2:{s:4:"time";s:21:"0.96190400 1360829712";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:69:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Osoba\detail.latte";i:2;i:1333533143;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Osoba\detail.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 's75ijpydz0')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb20bbda33fc_drobecky4')) { function _lb20bbda33fc_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lbb314d3f2bb_drobecky5')) { function _lbb314d3f2bb_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb57df378ba2_content')) { function _lb57df378ba2_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<?php $cond = $user->isAllowed('Osoba','add') || $user->isAllowed('Osoba','edit') ?>

<?php if ($cond): ?>
<ul id="navi">
<?php if ($user->isAllowed('Osoba','add')): ?>
	<li title="Nová osoba"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">Nová...</a></li>
<?php endif ;if ($user->isAllowed('Osoba','edit')): ?>
	<li title="Změnit údaje"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($osoba->id))) ?>
">Změnit</a></li>
<?php endif ;if ($user->isAllowed('Osoba','addContact')): ?>
	<li title="Nový kontakt"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("addContact", array($ido))) ?>
">&#10010 kontakt</a></li>
<?php endif ?>
</ul>
<?php endif ?>


<table class="grid">
	<tr><th>Název</th><td width=200><?php echo Nette\Templating\DefaultHelpers::escapeHtml($osoba->jmeno, ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($osoba->jmeno2, ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($osoba->prijmeni, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Tituly před jménem</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($osoba->titul_pred, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Tituly za jménem</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($osoba->titul_za, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Poznámka</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($osoba->poznamka, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Oslovení</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($osoba->osloveni, ENT_NOQUOTES) ?></td></tr>
</table>
<p>

<?php $cond = $user->isAllowed('Osoba','addContact') || $user->isAllowed('Osoba','editContact') ?>

<table class="grid">
<tr>
	<th>Kontakty</th>
<?php if ($cond): ?>
	<td class="takce">
		<span class="setadd" title="Nový...">
<?php if ($user->isAllowed('Osoba','addContact')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("addContact", array($ido))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
	</td>
<?php endif ?>
</tr>
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($kontakty) as $kon): ?>
<tr>
	<td><i><?php echo Nette\Templating\DefaultHelpers::escapeHtml($kon->ktyp, ENT_NOQUOTES) ?>
</i>: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($kon->hodnota, ENT_NOQUOTES) ?></td>
<?php if ($cond): ?>
	<td class="takce">
		<span class="setedit" title="Změnit">
<?php if ($user->isAllowed('Osoba','editContact')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("editContact", array($kon->id, $ido))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
		<span class="setdel" title="Odstranit">
<?php if ($user->isAllowed('Osoba','deleteContact')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("deleteContact", array($kon->id, $ido))) ?>
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
if (!function_exists($_l->blocks['title'][] = '_lb395aaa8b9a_title')) { function _lb395aaa8b9a_title($_l, $_args) { extract($_args)
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
