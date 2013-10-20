<?php //netteCache[01]000391a:2:{s:4:"time";s:21:"0.35973800 1382281589";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:69:"C:\xampp\htdocs\ems\app\modules\Obchod\templates\Nabidka\detail.latte";i:2;i:1359280935;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xampp\htdocs\ems\app\modules\Obchod\templates\Nabidka\detail.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'qcmrsgia3k')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb776a7378c3_drobecky4')) { function _lb776a7378c3_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lbe9fd891c2d_drobecky5')) { function _lbe9fd891c2d_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb517df4a605_content')) { function _lb517df4a605_content($_l, $_args) { extract($_args)
?>

<?php $it = $item ?>

<?php $unlocked = $it->id_stav<>21 ?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<h2><?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?></h2>

<ul id="navi">
<?php if ($user->isAllowed('Nabidka','add')): ?>
	<li title="Nová nabídka"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">Nová...</a></li>
<?php endif ;if ($user->isAllowed('Nabidka','edit') && $unlocked): ?>
	<li title="Změnit nabídku"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($it->id))) ?>
">Změnit</a></li>
<?php endif ;if ($user->isAllowed('Nabidka','toPdf')): ?>
	<li title="Výstup do PDF"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("toPdf", array($it->id))) ?>
">► do PDF</a></li>
<?php endif ;if ($user->isAllowed('Nabidka','toMail')): ?>
	<li title="Odeslat jako PDF přílohu mailu"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("toMail", array($it->id))) ?>
">PDF mailem</a></li>
<?php endif ;if ($user->isAllowed('Produkt','product') && $unlocked): ?>
	<li title="Vybrat produkt"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:product", array($it->id))) ?>
">&#10040 produkt</a></li>
<?php endif ;if ($user->isAllowed('Produkt','add') && $unlocked): ?>
	<li title="Nový produkt"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:add", array($it->id_firmy, $it->id))) ?>
">&#10010 produkt</a></li>
<?php endif ;if ($user->isAllowed('Nabidka','changeStatus') && $unlocked): ?>
	<li title="Změnit stav nabídky"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("changeStatus", array($it->id))) ?>
">Stav</a></li>
<?php endif ;if ($user->isAllowed('Nabidka','copyNabidka')): ?>
	<li title="Zkopírovat nabídku"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("copyNabidka", array($it->id))) ?>
">Kopie</a></li>
<?php endif ?>
</ul>


<table class="grid">

<tr><th>Firma</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->firma, ENT_NOQUOTES) ?></td></tr>
<tr><th>Popis</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->popis, ENT_NOQUOTES) ?></td></tr>
<tr><th>Datum přijetí</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->prij_datum, '%d.%m.%Y'), ENT_NOQUOTES) ?></td></tr>
<tr><th>Požadované datum</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->pozad_datum, '%d.%m.%Y'), ENT_NOQUOTES) ?></td></tr>
<tr><th>Poznámka</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->poznamka, ENT_NOQUOTES) ?></td></tr>
<tr><th>Dokumentace</th>
	<td><?php if ($it->folder<>''): ?>
<a href="file:///<?php echo htmlSpecialChars($it->folder) ?>" title="<?php echo htmlSpecialChars($it->folder) ?>">
			<img src="<?php echo htmlSpecialChars($basePath) ?>/images/folderm.png"  title="Otevřít složku" /></a>
<?php endif ?>
							</td>
</tr>
<tr>
	<th>Set režijních sazeb</th>
	<td><?php if ($user->isAllowed('SetSazeb','detail')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("SetSazeb:detail", array($it->sid))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->sets, ENT_NOQUOTES) ?>
</a><?php endif ?>
</td>

</tr>
<tr>
	<th>Set sazeb operací</th>
	<td><?php if ($user->isAllowed('SetSazebO','detail')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("SetSazebO:detail", array($it->oid))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->seto, ENT_NOQUOTES) ?>
</a><?php endif ?>
</td>
</tr>
<tr>
<?php if ($isvol): ?>
		<th>Předpokl. objem</th><td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($vol[0]->objem, 0, ',', ' '), ENT_NOQUOTES) ?> Kč</td>
<?php endif ?>
</tr>
<tr>
<?php if ($isvol): ?>
		<th>Celkové množství</th><td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($vol[0]->pocty, 0, ',', ' '), ENT_NOQUOTES) ?> ks</td>
<?php endif ?>
</tr>
</table>

<div class="statusbig">
<?php if ($it->id_stav == 1): ?>
				<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav0.png"  title="<?php echo htmlSpecialChars($it->nstav) ?>" />
<?php endif ;if ($it->id_stav > 1 && $it->id_stav < 4): ?>
				<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav1.png" />
<?php endif ;if ($it->id_stav == 4): ?>
				<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav2.png" />
<?php endif ;if ($it->id_stav == 5): ?>
				<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav3.png" />
<?php endif ;if ($it->id_stav == 6): ?>
				<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav4.png" />
<?php endif ;if ($it->id_stav >= 7 && $it->id_stav < 11): ?>
				<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav5.png" />
<?php endif ?>

<?php if ($it->id_stav == 21): if ($user->isAllowed('Nabidka','unlock')): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Nabidka:unlock", array($it->id, 22))) ?>
">
					<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav<?php echo htmlSpecialChars($it->id_stav) ?>.png" title="Odemknout" />
				</a>
<?php endif ;if (!$user->isAllowed('Nabidka','unlock')): ?>
				<span href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Nabidka:unlock", array($it->id, 22))) ?>
">
					<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav<?php echo htmlSpecialChars($it->id_stav) ?>.png" title="Odemknout nelze" />
				</span>			
<?php endif ;endif ;if ($it->id_stav == 22 || $it->id_stav >= 11 && $it->id_stav <=12): if ($user->isAllowed('Nabidka','lock')): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Nabidka:lock", array($it->id, 21))) ?>
">
					<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav<?php echo htmlSpecialChars($it->id_stav) ?>.png" title="Uzamknout" />
				</a>
<?php endif ;if (!$user->isAllowed('Nabidka','lock')): ?>
				<span href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Nabidka:lock", array($it->id, 21))) ?>
">
					<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stav<?php echo htmlSpecialChars($it->id_stav) ?>.png" title="Uzamknout nelze" />
				</span>			
<?php endif ;endif ?>
</div>

<div class="kolaps">

<?php if ($history): ?>
<div class="history">
	<div class="kol-h">
		<h3 title="Historie stavů nabídky">
				<?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->nstav, ENT_NOQUOTES) ?>
 <span class="midi" title="<?php echo htmlSpecialChars($item->uzivatel) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($item->datzmeny, '%d.%m.%Y'), ENT_NOQUOTES) ?></span>
		</h3>
		<div>
			<table class="small">
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($history) as $hist): ?>
				<tr>
					<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($hist->zkratka, ENT_NOQUOTES) ?></td>
					<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($hist->datzmeny, '%d.%m.%Y %H:%I:%S'), ENT_NOQUOTES) ?></td>
					<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($hist->uzivatel, ENT_NOQUOTES) ?></td>
<?php if ($user->isAllowed('Nabidka','eraseStatus')): ?>
					<td>
						<span class="serase">
							<a title="Zrušit status" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("eraseStatus", array($hist->id_nabidky, $hist->id_stav, $hist->id_user))) ?>
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
<?php endif ;$cond = $user->isAllowed('Produkt','add') || $user->isAllowed('Produkt','edit') ?>


	

<div class="clear">
	<div class="kol-1">
		<h3>Produkty</h3>
		<div>
			<table class="grid">
			<tr>
<?php if ($user->isAllowed('Produkt','eraseOffer') && $unlocked): ?>
				<th class="grid tempty">
					<img src="<?php echo htmlSpecialChars($basePath) ?>/images/offb.png" title="Zrušit přiřazení k nabídce" />
				</th>
<?php endif ?>
				<th>Název produktu</th>
				<th>Dávka [ks]</th>
				<th>≈ ks/rok</th>
<?php if ($cond && $unlocked): ?>
				<td class="takce">
					<span class="setadd" title="Přidat nový produkt">
<?php if ($user->isAllowed('Produkt','add')): ?>
						<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:add", array($it->id_firmy, $it->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
					</span>
				</td>
<?php endif ?>
				<th>Poslední status</th>
				<th>Změnil</th>
				<th>Datum změny</th>
<?php if ($user->isAllowed('Produkt','chngStatus') && $unlocked): ?>
				<th class="grid tempty">
					<img src="<?php echo htmlSpecialChars($basePath) ?>/images/schngb.png" title="Změnit status produktu" />
				</th>
<?php endif ?>
			</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($products) as $ip): ?>
				<tr>
<?php if ($user->isAllowed('Produkt','eraseOffer') && $unlocked): ?>
					<td>
<?php if ($ip->nabidka <> '.. nepřiřazen ..'): ?>
							<span class="disconn">
								<a title="Zrušit přiřazení" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:eraseOffer", array($ip->id, $ip->idn))) ?>
">
									&nbsp;&nbsp;
								</a>
							</span>
<?php endif ?>
					</td>
<?php endif ?>
					<td><?php if ($user->isAllowed('Produkt','detail')): ?>
<a title="<?php echo htmlSpecialChars($ip->id) ?>" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:detail", array($ip->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($ip->nazev, ENT_NOQUOTES) ?>
</a><?php endif ?>
</td>
					<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($ip->davka, 0, ',', ' '), ENT_NOQUOTES) ?></td>
					<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($ip->ks, 0, ',', ' '), ENT_NOQUOTES) ?></td>
<?php if ($cond && $unlocked): ?>
					<td class="takce">
						<span class="setedit" title="Změnit">
<?php if ($user->isAllowed('Produkt','edit') && $unlocked): ?>
							<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:edit", array($ip->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
						</span>
					</td>
<?php endif ?>

					<td>
<?php if ($ip->id_stav < 4 || $ip->id_stav == null): ?>
								<span class="status sx0" title="<?php echo htmlSpecialChars($ip->nstav) ?>">
<?php endif ;if ($ip->id_stav > 3 && $ip->id_stav < 7): ?>
								<span class="status sx1" title="<?php echo htmlSpecialChars($ip->nstav) ?>">
<?php endif ;if ($ip->id_stav == 7): ?>
								<span class="status sx2" title="<?php echo htmlSpecialChars($ip->nstav) ?>">
<?php endif ?>
								<span class="mini" title="<?php echo htmlSpecialChars($ip->nstav) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($ip->stav, ENT_NOQUOTES) ?></span>
							</span>
					</td>		
					<td title="<?php echo htmlSpecialChars($template->date($ip->datzmeny, '%d.%m.%Y %H:%I:%S')) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($ip->username, ENT_NOQUOTES) ?></td>
					<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($ip->datzmeny, '%d.%m.%Y %H:%I:%S'), ENT_NOQUOTES) ?></td>
<?php if ($user->isAllowed('Produkt','chngStatus') && $unlocked): ?>
					<td>
						<span class="change_status">
							<a title="Změnit status" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:chngStatus", array($ip->id))) ?>
">
								&nbsp;&nbsp;
							</a>
						</span>
					</td>
<?php endif ?>
				</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
			</table>
		</div>
	</div>
</div>

<?php if ($iscen): ?>

<?php if ($user->isAllowed('Produkt','viewPrices')): ?>
	<div class="clear">
		<div class="kol-2">
			<h3>Ceny produktů</h3>
			<div>
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('prices.latte', $template->getParams(), $_l->templates['qcmrsgia3k'])->render() ?>
			</div>
		</div>
	</div>
<?php endif ?>

<?php endif ?>

</div>
	
<script type='text/javascript' src='<?php echo htmlSpecialChars($basePath, ENT_QUOTES) ?>/js/jquery.cookie.js'></script>
<script type='text/javascript' src='<?php echo htmlSpecialChars($basePath, ENT_QUOTES) ?>/js/jquery.collapse.js'></script>

<script type="text/javascript" src="<?php echo htmlSpecialChars($basePath) ?>/js/ZeroClipboard.js"></script>

 
<script language="text/javascript">
	var clip = new ZeroClipboard.Client();
	clip.setText( '$it->folder' );
	clip.setHandCursor( true );
	clip.glue( 'd_clip' );
</script>

<script type='text/javascript'>

            $(".kol-1, .kol-2, .kol-h").collapse({ show: function(){ 
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
if (!function_exists($_l->blocks['title'][] = '_lb0c9b9c9af8_title')) { function _lb0c9b9c9af8_title($_l, $_args) { extract($_args)
?>
<h1><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->id, ENT_NOQUOTES) ?>
/<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($item->prij_datum, '%Y'), ENT_NOQUOTES) ?></h1>
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
