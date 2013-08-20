<?php //netteCache[01]000393a:2:{s:4:"time";s:21:"0.13940200 1361466371";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:71:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Produkt\detail.latte";i:2;i:1361466367;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Produkt\detail.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '0v46j3kl95')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lb6a4dd187d4_drobecky3')) { function _lb6a4dd187d4_drobecky3($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lbd913719471_drobecky4')) { function _lbd913719471_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb2b1d2973f3_content')) { function _lb2b1d2973f3_content($_l, $_args) { extract($_args)
?>

<?php $unlocked = $item->id_stav<>21 ?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<h2></h2>

<ul id="navi">
<?php if ($user->isAllowed('Produkt','add')): ?>
	<li title="Nový produkt"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">Nový...</a></li>
<?php endif ;if ($user->isAllowed('Produkt','edit') && $unlocked): ?>
	<li title="Změnit produkt"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($item->id))) ?>
">Změnit</a></li>
<?php endif ;if ($user->isAllowed('Material','default')): ?>
	<li title="Materiálový kusovník"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Material:")) ?>
">BOM</a></li>
<?php endif ;if ($user->isAllowed('Operace','default')): ?>
	<li title="Výrobní operace"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Operace:")) ?>
">TPV</a></li>
<?php endif ;if ($user->isAllowed('Produkt','toPdf')): ?>
	<li title="Výstup do PDF"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("toPdf", array($item->id))) ?>
">► do PDF</a></li>
<?php endif ;if ($user->isAllowed('Produkt','copyProdukt')): ?>
	<li title="Vytvořit kopii produktu"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("copyProdukt", array($item->id))) ?>
">Kopie</a></li>	
<?php endif ?>
</ul>

<table class="grid">

<tr>
	<th>Firma</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->firma, ENT_NOQUOTES) ?></td>
</tr>
<tr><th>Zkratka</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->zkratka, ENT_NOQUOTES) ?></td></tr>
<tr><th>K2 číslo</th><td><b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->id_k2, ENT_NOQUOTES) ?></b></td></tr>
<tr>
	<th>Název</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->nazev, ENT_NOQUOTES) ?></td>
</tr>
<tr><th>Popis</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->popis, ENT_NOQUOTES) ?></td></tr>
<tr>
	<th>Nabídka</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->nabidka, ENT_NOQUOTES) ?></td>
<?php if ($inabidka>0 && $item->nabidka=='.. nepřiřazen ..'): ?>
		<td class="takce ucho"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("assign", array($item->id))) ?>
">Přiřadit k nabídce...</a></td>
<?php endif ?>
</tr>

</table>

<div class="statusbig">
<?php if ($item->id_stav < 4): ?>
		<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav_0.png" class="find" />
<?php endif ;if ($item->id_stav >= 4 && $item->id_stav < 7): ?>
		<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav_1.png" />
<?php endif ;if ($item->id_stav == 21): if ($user->isAllowed('Produkt','unlock')): ?>
		<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:unlock", array($item->id, 22))) ?>
">
			<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav<?php echo htmlSpecialChars($item->id_stav) ?>.png" title="Odemknout" />
		</a>
<?php endif ;if (!$user->isAllowed('Produkt','unlock')): ?>
		<span href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:unlock", array($item->id, 22))) ?>
">
			<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav<?php echo htmlSpecialChars($item->id_stav) ?>.png" title="Odemknout nelze" />
		</span>			
<?php endif ;endif ;if ($item->id_stav == 22): if ($user->isAllowed('Produkt','lock')): ?>
		<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:lock", array($item->id, 21))) ?>
">
			<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav<?php echo htmlSpecialChars($item->id_stav) ?>.png" title="Uzamknout" />
		</a>
<?php endif ;if (!$user->isAllowed('Nabidka','lock')): ?>
		<span href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:lock", array($item->id, 21))) ?>
">
			<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav<?php echo htmlSpecialChars($item->id_stav) ?>.png" title="Uzamknout nelze" />
		</span>			
<?php endif ;endif ;if ($item->id_stav == 7): if ($user->isAllowed('Produkt','lock')): ?>
		<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:lock", array($item->id, 21))) ?>
">
			<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav_2.png" title="Uzamknout" />
		</a>
<?php endif ;if (!$user->isAllowed('Nabidka','lock')): ?>
		<span href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:lock", array($item->id, 21))) ?>
">
			<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav_2.png" title="Uzamknout nelze" />
		</span>			
<?php endif ;endif ?>
		
</div>

<div class="kolaps">
	
<?php if ($history): ?>
<div class="history" style="top:100px;">
	<div class="kol-h">
		<h3 title="Historie stavů produktu">
				<?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->nstav, ENT_NOQUOTES) ?>
 <span class="midi" title="<?php echo htmlSpecialChars($item->uzivatel) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($item->datzmeny, '%d.%m.%Y'), ENT_NOQUOTES) ?></span>
		</h3>
		<div>
			<table class="grid small">
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($history) as $hist): ?>
				<tr>
					<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($hist->zkratka, ENT_NOQUOTES) ?></td>
					<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($hist->datzmeny, '%d.%m.%Y %H:%I:%S'), ENT_NOQUOTES) ?></td>
					<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($hist->uzivatel, ENT_NOQUOTES) ?></td>
<?php if ($user->isAllowed('Produkt','eraseStatus') && $unlocked): ?>
					<td>
						<span class="serase">
							<a title="Zrušit status" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("eraseStatus", array($hist->id_produkty, $hist->id_stav, $hist->id_user))) ?>
">&nbsp;</a>
						</span>
					</td>
<?php endif ?>
				</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
			</table>
		</div>
	</div>
</div>
<?php endif ?>

<?php $cond = $user->isAllowed('Produkt','addAmount') || $user->isAllowed('Produkt','editAmount') || $user->isAllowed('Produkt','deleteAmount') ?>

		
<div class="kol-0">
	<h3>Plánovaná množství</h3>
	<div>
		<table class="grid">
			<tr>
				<th>Celkové množství</th>
				<th>Výrobní dávka</th>
<?php if ($cond && $unlocked): ?>
				<td class="takce">
										<span class="setadd" title="Přidat množství">
<?php if ($user->isAllowed('Produkt','addAmount') && $unlocked): ?>
						<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("addAmount", array($idp))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
					</span>
				</td>
<?php endif ?>
			</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($pocet) as $poc): ?>
			<tr>
				<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($poc->mnozstvi, 0, ',', ' '), ENT_NOQUOTES) ?></td>
				<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($poc->vyrobni_davka, 0, ',', ' '), ENT_NOQUOTES) ?></td>
<?php if ($cond && $unlocked): ?>
				<td class="takce">
					<span class="setedit" title="Změnit množství">
<?php if ($user->isAllowed('Produkt','editAmount') && $unlocked): ?>
						<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("editAmount", array($poc->id, $idp))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
					</span>
					<span class="setdel" title="Odstranit množství">
<?php if ($user->isAllowed('Produkt','deleteAmount') && $unlocked): ?>
						<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("deleteAmount", array($poc->id, $idp))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
					</span>
				</td>
<?php endif ?>
			</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		</table>
	</div>
</div>

	
<div class="kol-1">
	<h3>Náklady</h3>
	<div>
		<ul id="navi">
<?php if (!$isnaklady): if ($user->isAllowed('Produkt','costsUpd') && $unlocked): ?>
			<li><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("costsUpd", array($item->id))) ?>
">Spočítat náklady...</a></li>
<?php endif ;else: if ($user->isAllowed('Produkt','costsUpd') && $unlocked): ?>
			<li><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("costsUpd", array($item->id))) ?>
">Aktualizovat...</a></li>
<?php endif ;endif ?>

<?php if ($user->isAllowed('Material','default')): ?>
		<li title="Materiálový kusovník"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Material:")) ?>
">BOM</a></li>
<?php endif ;if ($user->isAllowed('Operace','default')): ?>
		<li title="Výrobní operace"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Operace:")) ?>
">TPV</a></li>
<?php endif ?>
		
<?php if ($isnaklady): if ($user->isAllowed('Material','changeStatus') && $unlocked): ?>
			<li title="Nastavit status">
				<a  title="Nastavit status" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Material:changeStatus", array($item->id, 6))) ?>
">Materiál oceněn</a></li>
<?php endif ;if ($user->isAllowed('Operace','changeStatus') && $unlocked): ?>
			<li title="Nastavit status">
				<a  title="Nastavit status" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Operace:changeStatus", array($item->id, 5))) ?>
">TPV dokončeno</a></li>
<?php endif ;endif ?>
		</ul>

<?php if ($user->isAllowed('Produkt','viewCosts')): ?>
		<div>

<?php if ($isnaklady): $i = 0 ?>
				<table class="grid">
					<tr>
						<th>Popis</th>
						<th>Náklad [Kč]</th>
					</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($costs) as $nak): $i++ ?>
					<tr>
						<?php if ($nak->zkratka=="MaterialPC"): ?> 							<td class="cena"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($nak->nazev, ENT_NOQUOTES) ?></td>
							<td class="tcislo cena"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($nak->hodnota, 2, ',', ' '), ENT_NOQUOTES) ?></td>
<?php else: ?>
							<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($nak->nazev, ENT_NOQUOTES) ?></td>
							<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($nak->hodnota, 2, ',', ' '), ENT_NOQUOTES) ?></td>
<?php endif ?>
					</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
				</table>
				<div class="subtit">
					<span class="mini"><i>Set sazeb operací:</i> 
<?php if ($user->isAllowed('SetSazebO','detail')): ?>
						<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("SetSazebO:detail", array($item->idsso))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->sazby_o, ENT_NOQUOTES) ?></a>
<?php endif ?>
					</span>
				</div>
<?php endif ?>

		</div>
<?php endif ?>
	</div>
</div>

<?php if ($user->isAllowed('Produkt','viewPrices')): ?>
<div>

<?php if ($isnaklady): ?>
		<div style="position:relative;">
			<div class="kol-2">
				<h3>Ceny</h3>
				<div>
				<div style="height:30px;">
				<ul id="navi">
<?php if ($user->isAllowed('Produkt','priceUpd') && $unlocked): ?>
					<li ><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("pricesUpd", array($item->id))) ?>
">Spočítat cenu...</a></li>
<?php endif ;if ($user->isAllowed('Produkt','changeStatus') && $unlocked): ?>
					<li><a  title="Nastavit status" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("changeStatus", array($item->id, 7))) ?>
">Produkt oceněn</a></li>
<?php endif ?>
				</ul>
				</div>
				<div class="gridseparator"></div>
<?php endif ?>

<?php if ($isceny): ?>

<?php $amena = 'CZK' ;$apocet = 0 ;$spanmn = 3 ;$avzorec = 0 ;$stab = 0 ;$acena = 0 ?>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($prices) as $cen): if ($acena<>$cen->id_cena): if ($acena == 0): $acena = $cen->id_cena ;endif ;$actclass = "" ;$acttitle = "Variantní cena" ;if ($cen->aktivni == 1): $actclass = "aktivni" ;$acttitle = "Aktivní cena" ;endif ;if ($cen->id_vzorec <> $item->vzorec): $actclass = "simulacni" ;endif ;if ($stab > 0): ?>
						</table>
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('detaval.latte', array('item' => $aval[$acena]) + $template->getParams(), $_l->templates['0v46j3kl95'])->render() ?>
						</div>
<?php endif ?>
				<div class="gridseparator">
					<table id="tceny<?php echo htmlSpecialChars($cen->id_cena) ?>" class="grid">
					<thead>
						<tr title="<?php echo htmlSpecialChars($acttitle) ?>">
							<th style="background:#EEE;">
								<span class="refresh" title="Přepočítat">
<?php if ($user->isAllowed('Produkt','priceRefresh') && $unlocked): ?>
									<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("priceRefresh", array($cen->id_cena))) ?>
">
									&nbsp;&nbsp;&nbsp;
									</a>
<?php endif ?>
								</span>
							</th>
<?php if ($cen->id_vzorec == $item->vzorec): if ($cen->aktivni == 1): ?>
									<th class="<?php echo htmlSpecialChars($actclass) ?>" style="width:250px;" title="cena: <?php echo htmlSpecialChars($cen->id_cena) ?>
"><b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($acttitle, ENT_NOQUOTES) ?></b></th>
<?php else: ?>
									<th class="<?php echo htmlSpecialChars($actclass) ?>" style="width:250px;" title="cena: <?php echo htmlSpecialChars($cen->id_cena) ?>
"><b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($acttitle, ENT_NOQUOTES) ?></b>
										<span class="setactive" style="float:right;" title="Aktivovat tuto cenu (<?php echo htmlSpecialChars($cen->id_cena) ?>)">
<?php if ($user->isAllowed('Produkt','priceActivate') && $unlocked): ?>
											<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("priceActivate", array($cen->id, $cen->id_cena))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
										</span>
									</th>
<?php endif ;else: ?>
								<th class="<?php echo htmlSpecialChars($actclass) ?>" style="width:250px;" title="cena: <?php echo htmlSpecialChars($cen->id_cena) ?>">Simulační cena</th>
<?php endif ?>
							<th class="<?php echo htmlSpecialChars($actclass) ?>" style="min-width:80px; text-align:right;">Cena [Kč]</th>
<?php if ($cen->mena <> 'CZK'): ?>
								<th class="<?php echo htmlSpecialChars($actclass) ?>">Cena [<?php echo Nette\Templating\DefaultHelpers::escapeHtml($cen->mena, ENT_NOQUOTES) ?>]</th>
<?php $spanmn = 4 ;else: $spanmn = 3 ;endif ?>

						</tr>
					</thead>
					<tr>
						<td class="alt" colspan="<?php echo htmlSpecialChars($spanmn) ?>" style="text-align:right; font-size:90%;">
							<div class="popup">
							  <span class="title">Kalkulační vzorec:   </span>
							  <span class="subtitle"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($cen->nvzorec, ENT_NOQUOTES) ?></span>
							  <br />
							  <?php echo Nette\Templating\DefaultHelpers::escapeHtml($cen->pvzorec, ENT_NOQUOTES) ?>

							</div>	
							<span class="kvzorec <?php echo htmlSpecialChars($actclass) ?>">
								<span class="tooltip">&nbsp;&nbsp;&nbsp;</span>
								<?php echo Nette\Templating\DefaultHelpers::escapeHtml($cen->kvzorec, ENT_NOQUOTES) ?>

							</span>
							<i>Množství: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cen->mnozstvi, 0, ',', ' '), ENT_NOQUOTES) ?>
 ks, výrobní&nbsp;dávka&nbsp;<b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cen->davka, 0, ',', ''), ENT_NOQUOTES) ?></b>&nbspks.</i>
						</td>
					</tr> 
<?php $stab++ ;$acena = $cen->id_cena ;$apocet = $cen->davka ;$avzorec = $cen->id_vzorec ;$amena = $cen->mena ;endif ?>
				<tr>
				<?php if ($cen->zkratka=="ProdCenaP"): ?> 					<td class="cena mini <?php echo htmlSpecialChars($actclass) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($cen->poradi, ENT_NOQUOTES) ?></td>
					<td class="cena <?php echo htmlSpecialChars($actclass) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($cen->nazev, ENT_NOQUOTES) ?>

<?php if ($inabidka>0): ?>
							<span class="setdel" style="float:right;" title="Odstranit tyto ceny">
<?php if ($user->isAllowed('Produkt','erasePrices') && $unlocked): ?>
								<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("erasePrices", array($cen->id, $cen->id_cena))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
							</span>
<?php endif ?>
					</td>
					<td class="tcislo cena <?php echo htmlSpecialChars($actclass) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cen->hodnota, 2, ',', ' '), ENT_NOQUOTES) ?></td>
<?php if ($cen->kurz <> 1): ?>
						<td class="tcislo cena <?php echo htmlSpecialChars($actclass) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cen->hodnota_cm, 2, ',', ' '), ENT_NOQUOTES) ?></td>
<?php endif ?>
				<?php elseif ($cen->zkratka=="CenaNab"): ?> 					<td class="cenanab mini <?php echo htmlSpecialChars($actclass) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($cen->poradi, ENT_NOQUOTES) ?></td>
					<td class="cenanab <?php echo htmlSpecialChars($actclass) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($cen->nazev, ENT_NOQUOTES) ?>

<?php if ($inabidka>0): ?>
							<span class="setedit" style="float:right;" title="Změnit nabídkovou cenu">
<?php if ($user->isAllowed('Produkt','editPricen') && $unlocked): ?>
								<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("editPricen", array($cen->id_cena))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
							</span>
<?php endif ?>
					</td>
					<td class="tcislo cenanab <?php echo htmlSpecialChars($actclass) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cen->hodnota, 2, ',', ' '), ENT_NOQUOTES) ?></td>
<?php if ($cen->kurz <> 1): ?>
						<td class="tcislo cenanab <?php echo htmlSpecialChars($actclass) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cen->hodnota_cm, 2, ',', ' '), ENT_NOQUOTES) ?></td>
<?php endif ;else: ?>
					<td class="mini <?php echo htmlSpecialChars($actclass) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($cen->poradi, ENT_NOQUOTES) ?></td>
					<td class="<?php echo htmlSpecialChars($actclass) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($cen->nazev, ENT_NOQUOTES) ?></td>
					<td class="tcislo <?php echo htmlSpecialChars($actclass) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cen->hodnota, 2, ',', ' '), ENT_NOQUOTES) ?></td>
<?php if ($cen->kurz <> 1): ?>
						<td class="tcislo <?php echo htmlSpecialChars($actclass) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cen->hodnota_cm, 2, ',', ' '), ENT_NOQUOTES) ?></td>
<?php endif ;endif ?>
			</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		</table>
<?php if ($stab > 0): Nette\Latte\Macros\CoreMacros::includeTemplate('detaval.latte', array('item' => $aval[$acena]) + $template->getParams(), $_l->templates['0v46j3kl95'])->render() ;endif ?>
		</div>
<?php endif ?>
				
		<div class="subtit">
			<span class="mini"><i>Set sazeb režií:</i> 
<?php if ($user->isAllowed('SetSazeb','detail')): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("SetSazeb:detail", array($item->idss))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->sazby, ENT_NOQUOTES) ?>
</a><?php endif ?>
,
				<i>defaultní kalkul. vzorec:</i> <?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->kalkzkratka, ENT_NOQUOTES) ?>
: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->kalknazev, ENT_NOQUOTES) ?>

			</span>
		</div>
<?php endif ?>

<?php if ($isnaklady): ?>
			</div>
		</div>
		</div>
<?php endif ?>
</div>
	

<?php if ($data_bar<>""): ?>
	<div class="kol-g">
		<h3>Graf aktivní ceny</h3>
		<div>
			<script type='text/javascript' src='<?php echo htmlSpecialChars($basePath, ENT_QUOTES) ?>/js/highcharts.js'></script>
			<script type="text/javascript">
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('graph.latte', array('data_bar' => $data_bar) + $template->getParams(), $_l->templates['0v46j3kl95'])->render() ?>
			</script>

			<div id="container_graph"
				 style="
					//position:	relative;
					//float:	right; 
					//top:		92px;
					//right:	20px;
					margin: 0 auto;
					width:		600px; 
					height:		400px;
					background: transparent;
					border:		2px solid #CCC;
					border-radius: 			8px;
					-webkit-border-radius: 	8px;
					-moz-border-radius: 	8px;
					box-shadow:				3px 3px 5px #AAA;
					-moz-box-shadow:		3px 3px 5px #AAA;
					-webkit-box-shadow:		3px 3px 5px #AAA;

				">
			</div>
			
		</div>
	</div>
<?php endif ?>
	
</div> 	
	
<div id="odstavec">
<?php if ($inabidka>0 && $unlocked): if ($user->isAllowed('Import','default')): ?>
		<span >
			Materiálovou rozpisku (BOM) produktu můžete <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Import:")) ?>
">naimportovat</a> z externího CSV souboru.
		</span><?php endif ?>
<br />
<?php if ($user->isAllowed('Operace','default')): ?>
		<span>
			Můžete rovněž začít pracovat na tvorbě <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Operace:")) ?>
">technologického postupu</a> zadáním technologických operací.
		</span>
<?php endif ;endif ?>
</div>

<script type='text/javascript' src='<?php echo htmlSpecialChars($basePath, ENT_QUOTES) ?>/js/jquery.cookie.js'></script>
<script type='text/javascript' src='<?php echo htmlSpecialChars($basePath, ENT_QUOTES) ?>/js/jquery.collapse.js'></script>
<script type='text/javascript'>

            $(".kol-0, .kol-1, .kol-2, .kol-h, .kol-g").collapse({ show: function(){ 
                    this.animate({ 
                        opacity: 'toggle',
                        height: 'toggle'
                     }, 300);
                 },
                hide : function() { 
                    this.fadeOut();
                 }
             });

</script>

<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbed24ea755a_title')) { function _lbed24ea755a_title($_l, $_args) { extract($_args)
?>
<h1><span class="iditem"># <?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->id, ENT_NOQUOTES) ?>
</span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?></h1>
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
$_l->extends = 'default.latte' ?>



<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
