<?php //netteCache[01]000391a:2:{s:4:"time";s:21:"0.52293900 1359808072";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:69:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Osoba\people.latte";i:2;i:1321792484;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Osoba\people.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'xusaie7egd')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lb39c7eeb218_drobecky3')) { function _lb39c7eeb218_drobecky3($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default")) ?>
">Osoby</a><?php call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lbb1420308d4_drobecky4')) { function _lbb1420308d4_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbe6a3cc240f_content')) { function _lbe6a3cc240f_content($_l, $_args) { extract($_args)
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
	<th>Přijmení, jméno</th>
<?php if ($cond): ?>
	<td class="takce">
<?php if ($user->isAllowed('Osoba','add')): ?>
		<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">Přidat záznam</a>
<?php endif ?>
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
	<td><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("detail", array($os->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($os->prijmeni, ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($os->jmeno, ENT_NOQUOTES) ?></a></td>
<?php if ($cond): ?>
	<td class="takce">
<?php if ($user->isAllowed('Osoba','edit')): ?>
		<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($os->id))) ?>
">Změnit</a>
<?php endif ;if ($user->isAllowed('Osoba','delete')): ?>
		<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("delete", array($os->id))) ?>
">Odstranit</a>
<?php endif ?>
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
if (!function_exists($_l->blocks['title'][] = '_lb04881d985a_title')) { function _lb04881d985a_title($_l, $_args) { extract($_args)
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
