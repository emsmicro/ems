<?php //netteCache[01]000392a:2:{s:4:"time";s:21:"0.67357200 1359279785";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:70:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Nabidka\toPdf.latte";i:2;i:1322391234;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Nabidka\toPdf.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '47gg7m5bcn')
;//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb42c62a3a3e_content')) { function _lb42c62a3a3e_content($_l, $_args) { extract($_args)
?>
		<div class="address">
			<table>
				<tr><td><b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->nazev, ENT_NOQUOTES) ?></b></td></tr>
				<tr><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($osoba, ENT_NOQUOTES) ?></td></tr>
				<tr><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->a_ulice, ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->a_cp, ENT_NOQUOTES) ?></td></tr>
				<tr><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->m_obec, ENT_NOQUOTES) ?></td></tr>
				<tr><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->m_psc, ENT_NOQUOTES) ?></td></tr>
				<?php if ($firma->m_zstat<>"CZ"): ?></td></tr>
					<tr><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->m_stat, ENT_NOQUOTES) ?></td></tr>
<?php endif ?>
			</table>
		</div>
		<div style="height: 50mm;">
		</div>
<?php $it = $item ?>
		<table>
			<tr>
				<td><?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
</td>
				<td style="padding-left:10mm;"><i><?php echo Nette\Templating\DefaultHelpers::escapeHtml($company['city'], ENT_NOQUOTES) ?>
, <?php echo Nette\Templating\DefaultHelpers::escapeHtml($today, ENT_NOQUOTES) ?></i></td>
			</tr>
		</table>
		<hr />
	
		<br />
	
		<table class="grid">
		<tr>
			<th>Klient</th><td colspan="3"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->firma, ENT_NOQUOTES) ?></td>
		</tr>
		<tr>
			<th>Datum přijetí</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->prij_datum, '%d.%m.%Y'), ENT_NOQUOTES) ?></td>
<?php if ($isvol): ?>
				<th>Předpokl. objem</th><td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($vol[0]->objem, 0, ',', ' '), ENT_NOQUOTES) ?> Kč</td>
<?php endif ?>
		</tr>
		<tr>
			<th>Požadované datum</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->pozad_datum, '%d.%m.%Y'), ENT_NOQUOTES) ?></td>
<?php if ($isvol): ?>
				<th>Celkové množství</th><td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($vol[0]->pocty, 0, ',', ' '), ENT_NOQUOTES) ?> ks</td>
<?php endif ?>
		</tr>
		<tr><th>Popis</th><td colspan="3"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->popis, ENT_NOQUOTES) ?></td></tr>
		<tr><th>Poznámka</th><td colspan="3"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->poznamka, ENT_NOQUOTES) ?></td></tr>
		</table>

<?php if ($iscen): ?>

	<div class="clear">
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('prices.latte', $template->getParams(), $_l->templates['47gg7m5bcn'])->render() ?>
	</div>

<?php endif ?>
	
	<br /><br />
	<i><?php echo Nette\Templating\DefaultHelpers::escapeHtml($seler, ENT_NOQUOTES) ?></i>
	<br /><br />
	<table>
		<tr><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($company['name'], ENT_NOQUOTES) ?></td></tr>
		<tr><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($company['street'], ENT_NOQUOTES) ?></td></tr>
		<tr><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($company['city'], ENT_NOQUOTES) ?></td></tr>
		<tr><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($company['zip'], ENT_NOQUOTES) ?></td></tr>
	</table>

		
		
<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbb16beaeb15_title')) { function _lbb16beaeb15_title($_l, $_args) { extract($_args)
?>
<h4><?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?>
</h4><?php
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
?>
require <?php echo Nette\Templating\DefaultHelpers::escapeHtml($params['libsDir'], ENT_NOQUOTES) ?> . '/PdfResponse/PDFResponse.php';

<?php $_l->extends = '../@pdf.layout.latte' ?>

<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
