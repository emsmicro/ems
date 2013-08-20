<?php //netteCache[01]000390a:2:{s:4:"time";s:21:"0.80435300 1359381517";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:68:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Firma\prods.latte";i:2;i:1330187677;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Firma\prods.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'psbeda6y1w')
;
// snippets support
if (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
?>
	<table class="grid">

<?php $naz = "xxx" ;$rws = 0 ;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($produkty) as $prod): if ($prod->id_nabidky == $nabid): if ($rws == 0): ?>
				<tr>
					<th>Název produktu</th>
					<th>Dávka [ks]</th>
					<th>≈ ks/rok</th>
					<th>Cena/ks</th>
					<th>Jednorázové náklady</th>
				</tr>
<?php $rws++ ;endif ;if ($prod->idtc == 7): ?>
				<tr>
					<td>
<?php if ($prod->nazev <> $naz): if ($user->isAllowed('Produkt','detail')): ?>
							<a title="<?php echo htmlSpecialChars($prod->id_produkty) ?>" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:detail", array($prod->id_produkty))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($prod->nazev, ENT_NOQUOTES) ?></a>
<?php endif ;$naz = $prod->nazev ;endif ?>
					</td>
					<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($prod->vyrobni_davka, 0, ',', ' '), ENT_NOQUOTES) ?></td>
					<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($prod->mnozstvi, 0, ',', ' '), ENT_NOQUOTES) ?></td>
					<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($prod->hodnota_cm, 2, ',', ' '), ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($prod->mena, ENT_NOQUOTES) ?></td>
<?php else: if ($prod->idtc == 8): ?>
					<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($prod->hodnota, 2, ',', ' '), ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($prod->mena, ENT_NOQUOTES) ?></td>
<?php endif ?>
				</tr>
<?php endif ;endif ;$iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
	</table>
