<?php //netteCache[01]000392a:2:{s:4:"time";s:21:"0.77061900 1359042153";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:70:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Produkt\toPdf.latte";i:2;i:1322391182;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Produkt\toPdf.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'olugowxmu9')
;//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb477c09afc6_content')) { function _lb477c09afc6_content($_l, $_args) { extract($_args)
?>

	
<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
			<h2><?php echo Nette\Templating\DefaultHelpers::escapeHtml($company, ENT_NOQUOTES) ?>

				Nabídka: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->nabidka, ENT_NOQUOTES) ?>

			</h2>

			<table class="grid">
			<tr>
			</tr>

			<tr><th>Firma</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->firma, ENT_NOQUOTES) ?></td></tr>
			<tr><th>Zkratka</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->zkratka, ENT_NOQUOTES) ?></td></tr>
			<tr><th>Název</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->nazev, ENT_NOQUOTES) ?></td></tr>
			<tr><th>Popis</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->popis, ENT_NOQUOTES) ?></td></tr>
			<tr><th>Nabídka</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->nabidka, ENT_NOQUOTES) ?></td></tr>

			</table>

			<p></p>

			<span>
				<h3>Plánovaná množství</h3>
			</span>

			<table class="grid">
				<tr>
					<th>Celkové množství</th>
					<th>Výrobní dávka</th>
				</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($pocet) as $poc): ?>
				<tr>
					<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($poc->mnozstvi, 0, ',', ' '), ENT_NOQUOTES) ?></td>
					<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($poc->vyrobni_davka, 0, ',', ' '), ENT_NOQUOTES) ?></td>
				</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
			</table>


				<span>
					<h3>Náklady</h3>
				</span>
<?php if ($costs): ?>
				<table class="grid">
					<tr>
						<th>Popis</th>
						<th>Náklad [Kč]</th>
					</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($costs) as $nak): ?>
					<tr>
						<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($nak->nazev, ENT_NOQUOTES) ?></td>
						<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($nak->hodnota, 2, ',', ' '), ENT_NOQUOTES) ?></td>
					</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
				</table>
				<span class="mini"><i>Set sazeb operací:</i> <?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->sazby_o, ENT_NOQUOTES) ?></span>
<?php endif ?>
			<div>
				<h3>Ceny</h3>
			</div>

<?php if ($prices): ?>

<?php $amena = 'CZK' ;$apocet = 0 ?>
				<table class="grid">
					<thead>
						<tr>
							<th>Popis</th>
							<th>Cena [Kč]</th>
						</tr>
					</thead>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($prices) as $cen): if ($apocet<>$cen->davka): ?>
							<tr>
								<td class="alt" colspan="2" style="text-align:right; font-size:85%;">
									<i>Množství: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cen->mnozstvi, 0, ',', ' '), ENT_NOQUOTES) ?>
 ks, výrobní dávka: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cen->davka, 0, ',', ' '), ENT_NOQUOTES) ?> ks.</i>
								</td>
							</tr> 
<?php $apocet = $cen->davka ;endif ?>
						<tr>
<?php if ($amena<>$cen->mena): ?>
							<tr title="<?php echo htmlSpecialChars($cen->nabidka) ?>"><th>Měna: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($cen->n_mena, ENT_NOQUOTES) ?>
 (<?php echo Nette\Templating\DefaultHelpers::escapeHtml($cen->mena, ENT_NOQUOTES) ?>)</th>
							<th>Cena [Kč]</th>
							<th>Cena [<?php echo Nette\Templating\DefaultHelpers::escapeHtml($cen->mena, ENT_NOQUOTES) ?>]</th>
							<th>Kurz [Kč/<?php echo Nette\Templating\DefaultHelpers::escapeHtml($cen->mena, ENT_NOQUOTES) ?>]</th>
							</tr>
<?php $amena = $cen->mena ;endif ?>

						<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($cen->nazev, ENT_NOQUOTES) ?></td>
						<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cen->hodnota, 2, ',', ' '), ENT_NOQUOTES) ?></td>
<?php if ($cen->kurz <> 1): ?>
							<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cen->hodnota_cm, 2, ',', ' '), ENT_NOQUOTES) ?></td>
							<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cen->kurz, 4, ',', ' '), ENT_NOQUOTES) ?></td>
<?php endif ?>
						</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
				</table>
				<span class="mini"><i>Set sazeb režií:</i> <?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->sazby, ENT_NOQUOTES) ?></span>

<?php endif ?>

			</div>

	<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbb621f5b9a5_title')) { function _lbb621f5b9a5_title($_l, $_args) { extract($_args)
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
?>
require <?php echo Nette\Templating\DefaultHelpers::escapeHtml($params['libsDir'], ENT_NOQUOTES) ?> . '/PdfResponse/PDFResponse.php';
<?php $_l->extends = '../@pdf.layout.latte' ?>

<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
