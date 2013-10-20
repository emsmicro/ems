<?php //netteCache[01]000392a:2:{s:4:"time";s:21:"0.16707200 1382281605";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:70:"C:\xampp\htdocs\ems\app\modules\Nakup\templates\Material\default.latte";i:2;i:1381763934;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xampp\htdocs\ems\app\modules\Nakup\templates\Material\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'y0g10l609a')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lb50a2a80929_drobecky3')) { function _lb50a2a80929_drobecky3($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Material:default")) ?>
">Materiál</a><?php call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb2fadc03b25_drobecky4')) { function _lb2fadc03b25_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbd08d1180d8_content')) { function _lbd08d1180d8_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<div id="setstat">
<?php $title3="" ;$title6="" ;$activ3="" ;$activ6="" ?>
	
<?php if ($stavy3 || $stavy6): ?>
	<span class="mini">Stav produktu:</span>
		<span class="mini">
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($stavy3) as $st3): ?>
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($st3->zkratka, ENT_NOQUOTES) ?>, 
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($st3->datzmeny, '%d.%m.%Y %H:%I:%S'), ENT_NOQUOTES) ?>, 
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($st3->username, ENT_NOQUOTES) ?>.
<?php $activ3="active" ;$title3=$st3->zkratka; $st3->datzmeny ;$iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		</span>
		<span class="mini">
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($stavy6) as $st6): ?>
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($st6->zkratka, ENT_NOQUOTES) ?>, 
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($st6->datzmeny, '%d.%m.%Y %H:%I:%S'), ENT_NOQUOTES) ?>, 
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($st6->username, ENT_NOQUOTES) ?>.
<?php $activ6="active" ;$title6=$st6->zkratka; $st6->datzmeny ;$iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		</span>
<?php endif ?>
	
<?php if ($title3==""): $title3="Nastavit status: Čekání na ocenění." ;endif ;if ($title6==""): $title6="Nastavit status: Materiál oceněn." ;endif ;if ($user->isAllowed('Material','changeStatus') and $unlocked): ?>
	<ul id="navstat">
		<li class="<?php echo htmlSpecialChars($activ3) ?>"><a title="<?php echo htmlSpecialChars($title3) ?>
" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("changeStatus", array($idp, 3))) ?>
">Čekám na ceny</a>
		</li>
		<li class="<?php echo htmlSpecialChars($activ6) ?>"><a title="<?php echo htmlSpecialChars($title6) ?>
" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("changeStatus", array($idp, 6))) ?>
">Oceněno</a>
		</li>
	</ul>
<?php endif ?>
</div>
<?php if ($sProdej/$sNaklad > $koefmat): $colclass = "green" ;elseif ($sProdej/$sNaklad < $koefmat*0.95): $colclass = "red" ;else: $colclass = "orange" ;endif ;if ($is_rows): ?>
	<div class="infos">
<?php if ($noprices > 0): ?>
			<div class="infosum2 red" style="margin-right:15px;" title="Zbývá k ocenění <?php echo htmlSpecialChars($noprices) ?> položek">
				<span>Ocenit:  </span><span><b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($noprices, ENT_NOQUOTES) ?>
</b> z <?php echo Nette\Templating\DefaultHelpers::escapeHtml($rows, ENT_NOQUOTES) ?></span>
			</div>
<?php else: ?>
			<div class="infosum2 white" style="margin-right:15px;">
				<span>Vše bylo oceněno.</span>
			</div>
<?php endif ?>
		<div class="infosum">
			<span>Náklad:  </span><span><b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($sNaklad, 2, ',', ' '), ENT_NOQUOTES) ?></b> Kč/ks</span>
		</div>
		<div class="infosum">
			<span>Cena:  </span><span><b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($sProdej, 2, ',', ' '), ENT_NOQUOTES) ?></b> Kč/ks</span>
		</div>
		<div class="infosum2 <?php echo htmlSpecialChars($colclass) ?>">
			<span><b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($procprd, 2, ',', ' '), ENT_NOQUOTES) ?> %</b></span>
		</div>
	</div>
<?php endif ?>
<ul id="navi">
<?php if ($is_rows): if ($co>0): if ($user->isAllowed('Material','default')): ?>
			<li>	<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default")) ?>
">Všechno</a></li>
<?php endif ;endif ;if ($co==1): if ($user->isAllowed('Material','list')): ?>
			<li class="active">
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("list", array(1))) ?>
">Neoceněné položky</a>
			</li>
<?php endif ;else: if ($user->isAllowed('Material','list')): ?>
			<li>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("list", array(1))) ?>
">Neoceněné položky</a>
			</li>
<?php endif ;endif ;if ($co==2): if ($user->isAllowed('Material','list')): ?>
			<li class="active">
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("list", array(2))) ?>
">Oceněné položky</a>
			</li>
<?php endif ;else: if ($user->isAllowed('Material','list')): ?>
			<li>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("list", array(2))) ?>
">Oceněné položky</a>
			</li>
<?php endif ;endif ;else: if ($user->isAllowed('Material','add') and $unlocked): ?>
		<li title="Přidat nový materiál"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">Přidat materiál</a></li>
<?php endif ;endif ;if ($co==0): if ($user->isAllowed('Import','default') and $unlocked): ?>
		<li><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Import:default")) ?>
">Import BOM z CSV</a></li>
<?php endif ;if ($user->isAllowed('Kurz','default')): ?>
		<li><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Kurz:default")) ?>
">Kurzy</a></li>
<?php endif ;if ($is_rows): if ($user->isAllowed('Material','delete') and $unlocked): ?>
			<li title="Odstranit celý BOM produktu"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("delete", array(0))) ?>
">Smazat vše</a></li>
<?php endif ;if ($user->isAllowed('Material','export')): ?>
			<li title="Export BOM do CSV"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("export")) ?>
">Export BOM</a></li>
<?php endif ;if ($user->isAllowed('Material','matPrice') and $unlocked): ?>
			<li title="Výpočet prodejní ceny materiálu"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("matPrice", array($idp))) ?>
">Prodejní ceny</a></li>
<?php endif ;if ($user->isAllowed('Material','matPrice') and $unlocked): ?>
			<li title="Snulování prodejních cen"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("matPriceErase", array($idp))) ?>
">Snulovat PC</a></li>
<?php endif ;endif ;endif ?>
</ul>

<?php $c = 0 ;if ($is_rows): ?>

<?php $cond = $user->isAllowed('Material','add') || $user->isAllowed('Material','edit') || $user->isAllowed('Material','delete') ?>

	<table class="grid" style="width:100%;">
	<tr>
		<th>Zkratka</th>
		<th>Název</th>
		<th>K2 číslo</th>
		<th>Počet</th>
		<th><u><a title="Setřídit sestupně" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default", array($idp, -9))) ?>
">Nákup [Kč]</a></u></th>
		<th>Prodej [Kč]</th>
<?php if ($cond and $unlocked): ?>
		<td class="takce">
			<span class="setadd" title="Přidat novou položku"><?php if ($user->isAllowed('Material','add')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
		</td>
<?php endif ?>
	</tr>
<?php $cm = 0 ;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $it): ?>
	<tr>
<?php if ($it->id_k2): ?>
			<td class="zkrat50" title="<?php echo htmlSpecialChars($it->zkratka) ?>">
<?php if ($user->isAllowed('Material','detail')): ?>
					<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("detail", array($it->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->truncate($it->zkratka, 25), ENT_NOQUOTES) ?></a>
<?php else: ?>
					<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->truncate($it->zkratka, 25), ENT_NOQUOTES) ?>

<?php endif ?>
				
<?php if ($user->isAllowed('K2','find')): ?>
					<a title="Najít zkratku v K2" style="position:relative;float:right;" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("K2:find", array(0, $it->zkratka))) ?>
">&#x25B7;</a>
<?php endif ?>
				
			</td>
<?php else: ?>
			<td class="zkrat50" title="<?php echo htmlSpecialChars($it->zkratka) ?>" class="redlight">
<?php if ($user->isAllowed('Material','detail')): ?>
					<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("detail", array($it->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->truncate($it->zkratka, 25), ENT_NOQUOTES) ?></a>
<?php else: ?>
					<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->truncate($it->zkratka, 25), ENT_NOQUOTES) ?>

<?php endif ;if ($user->isAllowed('K2','find')): ?>
					<a title="Najít zkratku v K2" style="position:relative;float:right;" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("K2:find", array(0, $it->zkratka))) ?>
">&#x25B7;</a>
<?php endif ?>
			</td>
<?php endif ?>
		<td class="midi90">
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->nazev, ENT_NOQUOTES) ?>

<?php if ($it->id_k2 && $user->isAllowed('K2','find')): ?>
			<span style="position:relative;float:right;"><a title="Najít název v K2" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("K2:find", array($it->id))) ?>
">&#x25B7;</a></span>
<?php endif ?>
		</td>
<?php if ($it->id_k2): ?>
			<td class="tcislo">
<?php if ($user->isAllowed('K2','find')): ?>
					<a title="Info z K2" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("K2:find", array($it->id, $it->id_k2,'N'))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->id_k2, ENT_NOQUOTES) ?></a>
<?php else: ?>
					<?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->id_k2, ENT_NOQUOTES) ?>

<?php endif ?>
			</td>
<?php else: ?>
			<td style="text-align:center; padding:0; margin:0;">
<?php if ($user->isAllowed('K2','find')): ?>
				<span class="icon20">
					<a title="Najít v K2" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("K2:find", array($it->id))) ?>
">&nbsp&nbsp;</a>
				</span>
<?php endif ?>
			</td>
<?php endif ?>
		<td class="tcislo">
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->mnozstvi, 0, ',', ' '), ENT_NOQUOTES) ?>

		</td>
<?php if ($it->cena_kc <> $it->cena_cm): ?>
			<td class="tcislo"><?php if ($it->cena_kc>0): ?>
<span class="look" 
					title="<?php echo htmlSpecialChars($template->number($it->cena_cm, 6, ',', ' ')) ?>
 <?php echo htmlSpecialChars($it->mena) ?>">
				<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->cena_kc, 4, ',', ' '), ENT_NOQUOTES) ?></span>
<?php endif ?>
			</td>
<?php $cm++ ;else: ?>
			<td class="tcislo">
<?php if ($it->cena_kc>0): ?>
				<span title="<?php echo htmlSpecialChars($template->number($it->cena_cm, 6, ',', ' ')) ?>">
					<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->cena_kc, 4, ',', ' '), ENT_NOQUOTES) ?>

				</span>
<?php endif ?>
			</td>
<?php endif ;if ($it->cena_kc2 <= 0): ?>
			<td class="tcislo tselorange" title="Tato cena není uložena v databázi.">
				<span>
					<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->cena_kc*$koefmat, 4, ',', ' '), ENT_NOQUOTES) ?>

				</span>
			</td>
<?php elseif ($it->cena_kc2 < round($it->cena_kc*$koefmat,4)): ?>
			<td class="tcislo tselred">
				<span>
					<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->cena_kc2, 4, ',', ' '), ENT_NOQUOTES) ?>

				</span>
			</td>
<?php elseif ($it->cena_kc2 > round($it->cena_kc*$koefmat,4)): ?>
			<td class="tcislo tselgreen">
				<span>
					<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->cena_kc2, 4, ',', ' '), ENT_NOQUOTES) ?>

				</span>
			</td>
<?php else: ?>
			<td class="tcislo">
<?php if ($it->cena_kc2>0): ?>
				<span>
					<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->cena_kc2, 4, ',', ' '), ENT_NOQUOTES) ?>

				</span>
<?php endif ?>
			</td>
<?php endif ;if ($cond and $unlocked): ?>
		<td class="takce">
			<span class="setedit" title="Změnit"><?php if ($user->isAllowed('Material','edit')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
			<span class="setdel" title="Odstranit"><?php if ($user->isAllowed('Material','delete')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("delete", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>

		</td>
<?php endif ?>
	</tr>
<?php $c++ ?>

<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
	</table>
	
<?php $_ctrl = $control->getWidget("pg"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ?>
	<div>
<?php if ($cm>0): ?>
			<span class="mini"><i>(Podtržené ceny mají cenu v cizí měně, která se zobrazí po najetí kurzorem myši nad cenu v Kč.)</i></span>
<?php endif ?>
		<p style="float:right;"><span class="mini">Počet záznamů: </span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($c, ENT_NOQUOTES) ?></p>
	</div>
<?php endif ;
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb1281d2813a_title')) { function _lb1281d2813a_title($_l, $_args) { extract($_args)
?>
<h2><?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?></h2>
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
$_l->extends = '../Nakup/default.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
