<?php //netteCache[01]000387a:2:{s:4:"time";s:21:"0.87026100 1359736971";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:65:"C:\xamlite\htdocs\ems\app\modules\Nakup\templates\K2\prices.latte";i:2;i:1358942150;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Nakup\templates\K2\prices.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'gtns93gssi')
;//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lbfb8a0f0828_drobecky5')) { function _lbfb8a0f0828_drobecky5($_l, $_args) { extract($_args)
?> » Ceny<?php call_user_func(reset($_l->blocks['drobecky6']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky6
//
if (!function_exists($_l->blocks['drobecky6'][] = '_lbe7dc6092c6_drobecky6')) { function _lbe7dc6092c6_drobecky6($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb293deb8303_content')) { function _lb293deb8303_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>


<?php if (count($items)>0): ?>
	<h4>Dodavatelské ceny: [<?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitle, ENT_NOQUOTES) ?>]</h4>
	<table class="grid">
	<tr>
		<th>id K2</th>
		<th>Dodavatel</th>
		<th>Množství</th>
		<th>Cena</th>
		<th>Měna</th>
		<th>Odběr</th>
		<th>Popis</th>
		<th>Aktualizace</th>
<?php if ($user->isAllowed('K2','setPrice') && $actidp>0): ?>
		<td>Výběr</td>
<?php endif ?>
	</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $it): ?>
		<tr>
			<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->id, ENT_NOQUOTES) ?></td>
			<td title="<?php echo htmlSpecialChars($it->dodavatel) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->ZFir, ENT_NOQUOTES) ?></td>
			<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->mnoz, 0, ',', ' '), ENT_NOQUOTES) ?> ks</td>
			<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->cena, 4, ',', ' '), ENT_NOQUOTES) ?></td>
			<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->mena, ENT_NOQUOTES) ?></td>
			<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->odber, 0, ',', ' '), ENT_NOQUOTES) ?></td>
			<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->popis, ENT_NOQUOTES) ?></td>
			<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->datum, '%d.%m.%Y'), ENT_NOQUOTES) ?></td>
<?php if ($user->isAllowed('K2','setPrice') && $actidp>0): ?>
			<td class="takce">
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setPrice", array($idm, $it->idc))) ?>
">&#x25C0; Zvolit&nbsp;</a>
			</td>
<?php endif ?>
		</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
	</table>
<?php endif ?>

<?php if (isset($purch)): if ($cnp>0): ?>
		<h4><?php echo Nette\Templating\DefaultHelpers::escapeHtml($cnp, ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($txlabel, ENT_NOQUOTES) ?>
: [<?php echo Nette\Templating\DefaultHelpers::escapeHtml($czbo, ENT_NOQUOTES) ?>
 - <?php echo Nette\Templating\DefaultHelpers::escapeHtml($purch[0]->nazev, ENT_NOQUOTES) ?>]</h4>
		<table class="grid" style="width:80%;">
		<tr>
			<th>Dodavatel</th>
			<th>Množství</th>
			<th>Cena/MJ</th>
			<th>Datum</th>
<?php if ($user->isAllowed('K2','setPrice') && $actidp>0): ?>
			<td>Výběr</td>
<?php endif ?>
		</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($purch) as $it): ?>
			<tr>
				<td title="<?php echo htmlSpecialChars($it->dodavatel) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->ZFir, ENT_NOQUOTES) ?></td>
				<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->mnozstvi, 2, ',', ' '), ENT_NOQUOTES) ?></td>
				<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->cena, 4, ',', ' '), ENT_NOQUOTES) ?> Kč</td>
				<td class="tcislo">
					<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->datum, '%d.%m.%Y'), ENT_NOQUOTES) ?>

				</td>
<?php if ($user->isAllowed('K2','setPriceValue') && $actidp>0): ?>
				<td class="takce">
<?php if ($it->TooOld == "NO"): ?>
						<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setPriceValue", array($idm, $czbo, $it->cena))) ?>
">&#x25C0; Zvolit&nbsp;</a>
<?php else: ?>
						<span style="color:#b81900;" title="Starší cena nákupu">&#8855; <i>nelze</i></span>
<?php endif ?>
				</td>
<?php endif ?>
			</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		</table>
<?php endif ?>

<?php endif ?>
		
<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbe59b1f91ba_title')) { function _lbe59b1f91ba_title($_l, $_args) { extract($_args)
?>
<h2>
		Přiřazení cen z K2
</h2>
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
$_l->extends = 'find.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
