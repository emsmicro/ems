<?php //netteCache[01]000394a:2:{s:4:"time";s:21:"0.66610100 1360142883";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:72:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\TypOperace\default.latte";i:2;i:1360142882;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\TypOperace\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'upur3ci0i1')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lb5845aeeaf5_drobecky3')) { function _lb5845aeeaf5_drobecky3($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default")) ?>
">Typy operací</a><?php call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb0efac3b7a8_drobecky4')) { function _lb0efac3b7a8_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb3056ea857c_content')) { function _lb3056ea857c_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<?php $cond = $user->isAllowed('TypOperace','add') || $user->isAllowed('TypOperace','edit') || $user->isAllowed('TypOperace','delete') ?>

<table class="grid">
<tr>
	<th>Poř. #</th>
	<th>Zkratka</th>
	<th>Typ</th>
	<th>Druh</th>
	<th title="Minimální doba trvání operace [min]">Min. čas</th>
	<th title="Časová rezerva [%]">Rezerva</th>
	<th title="Defaultní čas přípravy">Tp def.</th>
<?php if ($cond): ?>
	<td class="takce">
		<span class="setadd" title="Přidat záznam">
<?php if ($user->isAllowed('TypOperace','add')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
	</td>
<?php endif ?>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $it): ?>
<tr>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->poradi, ENT_NOQUOTES) ?></td>
	<td title="<?php echo htmlSpecialChars($it->zkratka) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->truncate($it->zkratka, 25), ENT_NOQUOTES) ?></td>
	<td title="<?php echo htmlSpecialChars($it->nazev) ?>"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("detail", array($it->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->truncate($it->nazev, 40), ENT_NOQUOTES) ?></a></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->druh, ENT_NOQUOTES) ?></td>
	<td class="cislo"><?php if ($it->ta_min>0): ?>
<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->ta_min, 2, ',', ' '), ENT_NOQUOTES) ?>
</span><?php endif ?>
</td>
	<td class="cislo"><?php if ($it->ta_rezerva>0): ?>
<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->ta_rezerva * 100, 0, ',', ' '), ENT_NOQUOTES) ?>
 %</span><?php endif ?>
</td>
	<td class="cislo"><?php if ($it->tp_default>0): ?>
<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->tp_default, 2, ',', ' '), ENT_NOQUOTES) ?>
</span><?php endif ?>
</td>
<?php if ($cond): ?>
	<td class="takce">
		<span class="setedit" title="Změnit">
<?php if ($user->isAllowed('TypOperace','edit')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
		<span class="setdel" title="Odstranit">
<?php if ($user->isAllowed('TypOperace','delete')): ?>
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
if (!function_exists($_l->blocks['title'][] = '_lbb5f3e32c51_title')) { function _lbb5f3e32c51_title($_l, $_args) { extract($_args)
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
$_l->extends = '../Tpv/default.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
