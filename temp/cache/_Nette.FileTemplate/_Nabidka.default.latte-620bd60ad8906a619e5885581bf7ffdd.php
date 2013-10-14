<?php //netteCache[01]000394a:2:{s:4:"time";s:21:"0.37342600 1381687826";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:72:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Nabidka\default.latte";i:2;i:1381687820;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Nabidka\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '5jyw3589ro')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lb6959fcf919_drobecky3')) { function _lb6959fcf919_drobecky3($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default")) ?>
">Nabídky</a><?php call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb79b5bb6f05_drobecky4')) { function _lb79b5bb6f05_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb08187615d2_content')) { function _lb08187615d2_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>


<?php $cond = $user->isAllowed('Nabidka','add') || $user->isAllowed('Nabidka','edit') || $user->isAllowed('Nabidka','delete') ?>

<table class="grid" style="width:100%;">
<tr>
	<th><img src="<?php echo htmlSpecialChars($basePath) ?>/images/select.png" title="Zvolit jako aktuální" /></th>
	<th>Č. nab.</th>
	<th style="min-width:150px;">Popis</th>
	<th>Zákazník</th>
	<th>Založeno</th>
	<th>Datum DO</th>
<?php if ($user->isAllowed('Nabidka','toPdf')): ?>
	<th>Ex</th>
<?php endif ?>
	<th title="Složka se zadávací dokumentací">Data</th>
<?php if ($cond): ?>
	<td class="takce" style="padding:3px;">
		<span class="setadd" title="Přidat novou nabídku">
<?php if ($user->isAllowed('Nabidka','add')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
	</td>
<?php endif ?>
	<th colspan="2">Status nabídky</th>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $it): $unlocked = $it->id_stav<>21 ;$slozka = $it->folder ;if ($unlocked): ?>
	<tr>
<?php else: ?>
	<tr class="locked">
<?php endif ?>
	<td><span class="iconsel"><a title="Zvolit" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setOffer", array($it->id_firmy))) ?>
">&nbsp&nbsp;</a></span></td>
	<td class="cislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->id, ENT_NOQUOTES) ?>
/<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->prij_datum, '%Y'), ENT_NOQUOTES) ?></td>
	<td><?php if ($user->isAllowed('Nabidka','detail')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("detail", array($it->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->popis, ENT_NOQUOTES) ?>
</a><?php endif ?>
</td>
	<td title="<?php echo htmlSpecialChars($it->firma) ?>">
<?php if ($user->isAllowed('Firma','detail')): ?>
		<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Firma:detail", array($it->id_firmy))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->zfirma, ENT_NOQUOTES) ?></a>
<?php endif ?>
	</td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->prij_datum, '%d.%m.%Y'), ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->pozad_datum, '%d.%m.%Y'), ENT_NOQUOTES) ?></td>
<?php if ($user->isAllowed('Nabidka','toPdf')): ?>
	<td class="iconpdf">
		<a  title="Export do PDF" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("toPdf", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;</a>
	</td>
<?php endif ?>
	<td class="iconfol"><?php if ($it->folder<>''): ?>
<a href="file:///<?php echo htmlSpecialChars($slozka) ?>" title="Otevřít složku">&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</td>
<?php if ($cond): ?>
	<td class="takce" style="padding:3px;">
		<span class="setedit" title="Změnit">
<?php if ($user->isAllowed('Nabidka','edit') && $unlocked): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
		<span class="setdel" title="Odstranit">
<?php if ($user->isAllowed('Nabidka','delete') && $unlocked): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("delete", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
<?php if (!$unlocked): ?>
		<span title="<?php echo htmlSpecialChars($it->nstav) ?>: <?php echo htmlSpecialChars($it->uzivatel) ?>
, <?php echo htmlSpecialChars($template->date($it->datzmeny, '%d.%m.%Y v %H:%I:%S')) ?>">
			<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stat21.png" />
		</span>
<?php endif ?>
	</td>
<?php endif ?>
	
<?php if ($user->isAllowed('Nabidka','changeStatus') && $unlocked): ?>
		<td title="<?php echo htmlSpecialChars($it->nstav) ?> <?php echo htmlSpecialChars($it->username) ?>
 <?php echo htmlSpecialChars($template->date($it->datzmeny, '%d.%m.%Y %H:%I:%S')) ?>">
<?php else: ?>
		<td colspan="2" title="<?php echo htmlSpecialChars($it->nstav) ?> <?php echo htmlSpecialChars($it->username) ?>
 <?php echo htmlSpecialChars($template->date($it->datzmeny, '%d.%m.%Y %H:%I:%S')) ?>">
<?php endif ;if ($it->id_stav == 1): ?>
				<span class="status s1">
<?php endif ;if ($it->id_stav > 1 && $it->id_stav < 5): ?>
				<span class="status s2">
<?php endif ;if ($it->id_stav == 5): ?>
				<span class="status s3">
<?php endif ;if ($it->id_stav == 6): ?>
				<span class="status s4">
<?php endif ;if ($it->id_stav == 7): ?>
				<span class="status s5">
<?php endif ;if ($it->id_stav > 7): ?>
				<span>
					<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stat<?php echo htmlSpecialChars($it->id_stav) ?>.png" style="height:24px;width:24px;" />
<?php endif ?>
				<span class="mini"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->stav, ENT_NOQUOTES) ?></span>
			</span>
	</td>	
	
<?php if ($user->isAllowed('Nabidka','changeStatus') && $unlocked): ?>
	<td>
		<span class="change_status">
			<a title="Změnit status" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("changeStatus", array($it->id))) ?>
">
				&nbsp;&nbsp;
			</a>
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
if (!function_exists($_l->blocks['title'][] = '_lb93003c0ca9_title')) { function _lb93003c0ca9_title($_l, $_args) { extract($_args)
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
