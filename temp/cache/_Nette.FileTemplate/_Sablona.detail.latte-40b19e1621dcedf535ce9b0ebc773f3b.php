<?php //netteCache[01]000390a:2:{s:4:"time";s:21:"0.52839000 1360140627";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:68:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Sablona\detail.latte";i:2;i:1360140625;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Sablona\detail.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '1ynus0ergx')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb851689d04e_drobecky4')) { function _lb851689d04e_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb8d43da8cf6_drobecky5')) { function _lb8d43da8cf6_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbdcb561c7c4_content')) { function _lbdcb561c7c4_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars()) ; $cond = $user->isAllowed('Sablona','addTypo') || $user->isAllowed('Sablona','editTypo') || $user->isAllowed('Sablona','deleteTypo') ?>

<ul id="navi">
<?php if ($user->isAllowed('Sablona','add')): ?>
	<li title="Nová šablona TP"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">Nová...</a></li>
<?php endif ;if ($user->isAllowed('Sablona','edit')): ?>
	<li title="Změnit šablonu"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($ids))) ?>
">Změnit</a></li>
<?php endif ?>
</ul>

<table class="grid">
	<tr><th>#</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->id, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Zkratka</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->zkratka, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Název</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->nazev, ENT_NOQUOTES) ?></td></tr>
</table>
<p></p>
<h2>Přiřazené typové operace šabloně</h2>
<ul id="navi" style="margin-top: 0;">
<?php if ($user->isAllowed('Sablona','addTypo')): ?>
	<span>
		<li title="Přidat libovolnou typovou operaci"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("addTypo", array($ids))) ?>
">Přidat TO ...</a></li>
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($druhy) as $druh): ?>
			<li title="Přidat typovou operaci <?php echo htmlSpecialChars($druh->nazev) ?>
"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("addTypo", array($ids, $druh->id))) ?>
">&#10010 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($druh->zkratka, ENT_NOQUOTES) ?></a></li>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
	</span>
<?php endif ?>
</ul>
<table class="grid" style="width:99%;">
<tr>
	<th>Pořadí</th>
	<th>Druh</th>
	<th>Zkratka TO</th>
	<th>Název operace</th>
<?php if ($cond): ?>
	<td class="takce">
		<span class="setadd" title="Přidat záznam">
<?php if ($user->isAllowed('Sablona','addTypo')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("addTypo", array($ids))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
	</td>
<?php endif ?>

</tr>
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($typo) as $typ): ?>
<tr>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($typ->poradi, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($typ->dnazev, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($typ->tzkratka, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($typ->nazev, ENT_NOQUOTES) ?></td>
	<td class="takce">
		<span class="setedit" title="Změnit">
<?php if ($user->isAllowed('Sablona','editTypo')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("editTypo", array($ids, $typ->idto))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
		<span class="setdel" title="Odstranit">
<?php if ($user->isAllowed('Sablona','deleteTypo')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("deleteTypo", array($ids, $typ->idto))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
	</td>
</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</table>

<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb31504bdd2f_title')) { function _lb31504bdd2f_title($_l, $_args) { extract($_args)
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
