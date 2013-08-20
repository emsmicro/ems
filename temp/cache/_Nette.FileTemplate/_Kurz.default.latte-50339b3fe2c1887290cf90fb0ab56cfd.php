<?php //netteCache[01]000391a:2:{s:4:"time";s:21:"0.73788200 1362041152";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:69:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Kurz\default.latte";i:2;i:1333550753;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Kurz\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '3on8yeyuaq')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lbdffa01c29a_drobecky3')) { function _lbdffa01c29a_drobecky3($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default")) ?>
">Kurzy</a><?php call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb2e66eda570_drobecky4')) { function _lb2e66eda570_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb3c5d11ff48_content')) { function _lb3c5d11ff48_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<?php $cond = $user->isAllowed('Kurz','add') || $user->isAllowed('Kurz','edit') || $user->isAllowed('Kurz','delete') ?>

<table class="grid">
<tr>
	<th>Měna</th>
	<th>Kurz nákupní</th>
	<th>Kurz prodejní</th>
	<th>Platnost od</th>
	<th>Platnost do</th>
<?php if ($cond): ?>
	<td class="takce">
		<span class="setadd" title="Přidat záznam">
<?php if ($user->isAllowed('Kurz','add')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
	</td>
<?php endif ?>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $it): ?>
<tr>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->mzkratka, ENT_NOQUOTES) ?></td>
	<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->kurz_nakupni, 4, ',', ' '), ENT_NOQUOTES) ?></td>
	<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->kurz_prodejni, 4, ',', ' '), ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->platnost_od, '%d. %m. %Y'), ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->platnost_do, '%d. %m. %Y'), ENT_NOQUOTES) ?></td>
<?php if ($cond): ?>
	<td class="takce">
		<span class="setedit" title="Změnit">
<?php if ($user->isAllowed('Kurz','edit')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
		<span class="setdel" title="Odstranit">
<?php if ($user->isAllowed('Kurz','delete')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("delete", array($it->id))) ?>
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
if (!function_exists($_l->blocks['title'][] = '_lb88f0c1c289_title')) { function _lb88f0c1c289_title($_l, $_args) { extract($_args)
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
