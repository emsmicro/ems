<?php //netteCache[01]000392a:2:{s:4:"time";s:21:"0.02168200 1360829713";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:70:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Osoba\default.latte";i:2;i:1333532633;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Osoba\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'vlu8sglslv')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lbf3771ad85e_drobecky3')) { function _lbf3771ad85e_drobecky3($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default")) ?>
">Osoby</a><?php call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lbee8772d6fb_drobecky4')) { function _lbee8772d6fb_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb3743ec6fb5_content')) { function _lb3743ec6fb5_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<?php $cond = $user->isAllowed('Osoba','add') || $user->isAllowed('Osoba','edit') || $user->isAllowed('Osoba','delete') ?>

<table class="grid">
<tr>
<?php if ($user->isAllowed('Osoba','setContact')): ?>
	<th>
		<img src="<?php echo htmlSpecialChars($basePath) ?>/images/select.png" title="Zvolit jako aktuální" />
	</th>
<?php endif ?>
	<th>Firma</th>
	<th>Přijmení, jméno</th>
<?php if ($cond): ?>
	<td class="takce">
		<span class="setadd" title="Přidat záznam">
<?php if ($user->isAllowed('Osoba','add')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
	</td>
<?php endif ?>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($osoby) as $os): ?>
<tr>
<?php if ($user->isAllowed('Osoba','setContact')): ?>
	<td>
		<span class="iconsel">
			<a title="Zvolit" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setContact", array($os->idf))) ?>
">&nbsp&nbsp;</a>
		</span>
	</td>
<?php endif ?>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($os->ofirma, ENT_NOQUOTES) ?></td>
	<td><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("detail", array($os->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($os->prijmeni, ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($os->jmeno, ENT_NOQUOTES) ?></a></td>
<?php if ($cond): ?>
	<td class="takce">
		<span class="setedit" title="Změnit">
<?php if ($user->isAllowed('Osoba','edit')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($os->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
		<span class="setdel" title="Odstranit">
<?php if ($user->isAllowed('Osoba','delete')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("delete", array($os->id))) ?>
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
if (!function_exists($_l->blocks['title'][] = '_lb565ab96bb9_title')) { function _lb565ab96bb9_title($_l, $_args) { extract($_args)
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
