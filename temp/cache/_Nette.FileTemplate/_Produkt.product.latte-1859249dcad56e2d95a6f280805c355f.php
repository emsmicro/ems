<?php //netteCache[01]000394a:2:{s:4:"time";s:21:"0.47802200 1381581686";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:72:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Produkt\product.latte";i:2;i:1321791358;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Produkt\product.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '0pp3odlnp3')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lbb8b73fae8e_drobecky3')) { function _lbb8b73fae8e_drobecky3($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default")) ?>
">Produkty</a><?php call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb6c2580ee37_drobecky4')) { function _lb6c2580ee37_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbc9d3834946_content')) { function _lbc9d3834946_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<h3><?php echo Nette\Templating\DefaultHelpers::escapeHtml($company, ENT_NOQUOTES) ?></h3>

<?php $cond = $user->isAllowed('Produkt','add') || $user->isAllowed('Produkt','edit') || $user->isAllowed('Produkt','delete') ?>

<table class="grid">
<tr>
	<th>Nabídka</th>
<?php if ($user->isAllowed('Produkt','setProduct')): ?>
	<th><img src="<?php echo htmlSpecialChars($basePath) ?>/images/select.png" title="Zvolit jako aktuální" /></th>
<?php endif ?>
	<th>Název produktu</th>
<?php if ($cond): ?>
	<td class="takce"><?php if ($user->isAllowed('Produkt','add')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">Přidat záznam</a><?php endif ?>
</td>
<?php endif ?>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $it): ?>
<tr>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->nabidka, ENT_NOQUOTES) ?></td>
<?php if ($user->isAllowed('Produkt','setProduct')): ?>
	<td>
		<span class="iconsel">
			<a title="Zvolit" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setProduct", array($it->id))) ?>
">&nbsp&nbsp;</a>
		</span>
	</td>
<?php endif ?>
	<td><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("detail", array($it->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->nazev, ENT_NOQUOTES) ?></a></td>
<?php if ($cond): ?>
	<td class="takce">
<?php if ($user->isAllowed('Produkt','edit')): ?>
		<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($it->id))) ?>
">Změnit</a>
<?php endif ;if ($user->isAllowed('Produkt','delete')): ?>
		<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("delete", array($it->id))) ?>
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
if (!function_exists($_l->blocks['title'][] = '_lb0eb0fea8be_title')) { function _lb0eb0fea8be_title($_l, $_args) { extract($_args)
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
