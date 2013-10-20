<?php //netteCache[01]000391a:2:{s:4:"time";s:21:"0.40769800 1382281589";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:69:"C:\xampp\htdocs\ems\app\modules\Obchod\templates\Nabidka\prices.latte";i:2;i:1359280424;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xampp\htdocs\ems\app\modules\Obchod\templates\Nabidka\prices.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'r2nim2jma0')
;
// snippets support
if (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
if ($isPDF): ?>
	<table class="detail">
<?php else: ?>
	<table class="grid">
<?php endif ?>
	<tr>
		<th>Název produktu</th>
		<th>Dávka [ks]</th>
		<th>≈ ks/rok</th>
		<th>Cena/ks</th>
		<th>Jednorázové náklady</th>
<?php if (!$isPDF): ?>
			<th title="Status">S</th>
<?php endif ?>
	</tr>
<?php $naz = "xxx" ;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($prices) as $cena): if ($cena->idtc == 10): ?>
			<tr>
				<td>
<?php if ($cena->nazev <> $naz): if (!$isPDF): if ($user->isAllowed('Produkt','detail')): ?>
							<a title="<?php echo htmlSpecialChars($cena->id_produkty) ?>" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:detail", array($cena->id_produkty))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($cena->nazev, ENT_NOQUOTES) ?></a>
<?php endif ;else: ?>
							<?php echo Nette\Templating\DefaultHelpers::escapeHtml($cena->nazev, ENT_NOQUOTES) ?>

<?php endif ;$naz = $cena->nazev ;endif ?>
				</td>
				<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cena->vyrobni_davka, 0, ',', ' '), ENT_NOQUOTES) ?></td>
				<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cena->mnozstvi, 0, ',', ' '), ENT_NOQUOTES) ?></td>
				<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cena->hodnota_cm, 2, ',', ' '), ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($cena->mena, ENT_NOQUOTES) ?></td>
<?php else: if ($cena->idtc == 8): ?>
				<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cena->hodnota, 2, ',', ' '), ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($cena->mena, ENT_NOQUOTES) ?></td>
<?php if (!$isPDF): if ($cena->aktivni == 1): ?>
						<td title="Aktivní cena">A</td>
<?php else: ?>
						<td title="Neaktivní cena">N</td>
<?php endif ;endif ;endif ?>
			</tr>
<?php endif ;$iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
	</table>
