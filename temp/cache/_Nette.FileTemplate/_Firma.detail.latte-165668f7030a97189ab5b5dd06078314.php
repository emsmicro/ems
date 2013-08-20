<?php //netteCache[01]000391a:2:{s:4:"time";s:21:"0.18968900 1376656205";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:69:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Firma\detail.latte";i:2;i:1376656202;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Firma\detail.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'tr898zi2lh')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb72b2615d3b_drobecky4')) { function _lb72b2615d3b_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb74fe7e9afd_drobecky5')) { function _lb74fe7e9afd_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb57a0ecf3aa_content')) { function _lb57a0ecf3aa_content($_l, $_args) { extract($_args)
?>


<div id="contbase">
	
<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

	<ul id="navi">
<?php if ($user->isAllowed('Firma','add')): ?>
		<li title="Nový zákazník"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">Nový...</a></li>
<?php endif ;if ($user->isAllowed('Firma','edit')): ?>
		<li title="Změnit údaje"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($firma->id))) ?>
">Změnit</a></li>
<?php endif ;if ($user->isAllowed('Nabidka','offer')): ?>
		<li title="Vybrat nabídku"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Nabidka:offer", array($firma->id))) ?>
">&#10040 nabídka</a></li>
<?php endif ;if ($user->isAllowed('Osoba','people')): ?>
		<li title="Vybrat kontakt"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Osoba:people", array($firma->id))) ?>
">&#10040 kontakt</a></li>
<?php endif ?>
	</ul>
	
	<table class="grid">

	<tr>
		<th>Název</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->nazev, ENT_NOQUOTES) ?></td>
	</tr>
	<tr>
		<th>Zkratka</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->zkratka, ENT_NOQUOTES) ?></td>
	</tr>
	<tr><th>Adresa</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->a_ulice, ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->a_cp, ENT_NOQUOTES) ?><br />
						   <?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->m_obec, ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->m_psc, ENT_NOQUOTES) ?><br />
						   <?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->m_stat, ENT_NOQUOTES) ?>

						</td></tr>
	<tr><th>IČO</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->ico, ENT_NOQUOTES) ?></td></tr>
	<tr><th>DIČ</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->dic, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Účet</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->cislo_uctu, ENT_NOQUOTES) ?>
, <?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->banka, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Poznámka</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($firma->poznamka, ENT_NOQUOTES) ?></td></tr>
	</table>
	<p></p>

<div class="kolaps">
		
	<div id="contcol2">
		
<?php $cond = $user->isAllowed('Firma','addContact') || $user->isAllowed('Firma','editContact') || $user->isAllowed('Firma','deleteContact') ?>
		<div class="kol-1">
			<h3>Firemní kontakty</h3>
			<div>
				<table class="grid">
				<tr>
					<th>Kontakt (typ)</th>
<?php if ($cond): ?>
					<td class="takce">
						<span class="setadd" title="Přidat kontakt">
<?php if ($user->isAllowed('Firma','addContact')): ?>
							<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("addContact", array($ido))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
						</span>
					</td>
<?php endif ?>
				</tr>
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($kontakty) as $kon): ?>
				<tr>
					<td><i><?php echo Nette\Templating\DefaultHelpers::escapeHtml($kon->ktyp, ENT_NOQUOTES) ?>
</i>: <b><span style="color:green"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($kon->hodnota, ENT_NOQUOTES) ?></span></b></td>
<?php if ($cond): ?>
					<td class="takce">
						<span class="setedit" title="Změnit">
<?php if ($user->isAllowed('Firma','editContact')): ?>
							<a title="Změnit" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("editContact", array($kon->id, $ido))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
						</span>
						<span class="setdel" title="Odstranit">
<?php if ($user->isAllowed('Firma','deleteContact')): ?>
							<a title="Odstranit" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("deleteContact", array($kon->id, $ido))) ?>
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
		
<?php $cond = $user->isAllowed('Osoba','add') || $user->isAllowed('Osoba','edit') || $user->isAllowed('Osoba','delete') ?>

		<div class="kol-2">
			<h3>Kontaktní osoby</h3>
			<div>
				<table class="grid">
				<tr>
					<th>Přijmení, jméno</th>
					<th>Kontakt</th>
<?php if ($cond): ?>
					<td class="takce">
						<span class="setadd" title="Přidat osobu">
<?php if ($user->isAllowed('Osoba','add')): ?>
							<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Osoba:add")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
						</span>
					</td>
<?php endif ?>
				</tr>
<?php $ido = 0 ;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($osoby) as $os): ?>
				<tr>
					<td>
<?php if ($ido<>$os->id): ?>
							<a title="Detail" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Osoba:detail", array($os->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($os->titul_pred, ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($os->prijmeni, ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($os->jmeno, ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($os->titul_za, ENT_NOQUOTES) ?></a>
<?php endif ?>
					</td>
					<td>
<?php if ($os->idk==1): ?>
							<a href="mailto:<?php echo htmlSpecialChars($os->kontakt) ?>" title="Poslat mail"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($os->kontakt, ENT_NOQUOTES) ?></a>
<?php else: ?>
							<?php echo Nette\Templating\DefaultHelpers::escapeHtml($os->kontakt, ENT_NOQUOTES) ?>

<?php endif ?>
					</td>
<?php if ($cond): ?>
					<td class="takce">
<?php if ($ido<>$os->id): ?>
							<span class="setedit" title="Změnit">
<?php if ($user->isAllowed('Osoba','edit')): ?>
								<a title="Změnit" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Osoba:edit", array($os->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
							</span>
							<span class="setdel" title="Odstranit">
<?php if ($user->isAllowed('Osoba','delete')): ?>
								<a title="Odstranit" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Osoba:delete", array($os->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
							</span>
<?php $ido = $os->id ;endif ?>
					</td>
<?php endif ?>
				</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
				</table>	
			</div>
		</div>

	</div>
			<div style="clear:both"></div>

</div>
	

<div class="kolaps">
	<div class="kol-3">
		<h3>Nabídky</h3>
		<div>
<?php $i=0 ;$nabs='' ;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($nabidky) as $it): ?>
					<div class="detail">
<?php $i++ ?>
						
							<div class="dtitul">
							<div class="nab-<?php echo htmlSpecialChars($it->id) ?>">
								<h3>
									<?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->id, ENT_NOQUOTES) ?>
/<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->prij_datum, '%Y'), ENT_NOQUOTES) ?> | 
									<?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->popis, ENT_NOQUOTES) ?> | 
									<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->prij_datum, '%d.%m.%Y'), ENT_NOQUOTES) ?> - 
									<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->pozad_datum, '%d.%m.%Y'), ENT_NOQUOTES) ?> | 
									<?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->nstav, ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->datzmeny, '%d.%m.%Y'), ENT_NOQUOTES) ?> | 
								</h3>
								<div class="detailin">
									<span class="tit">Přijato:</span><span class="val"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->prij_datum, '%d.%m.%Y'), ENT_NOQUOTES) ?> | </span>
									<span class="tit">Vyřídit do:</span><span class="val"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->pozad_datum, '%d.%m.%Y'), ENT_NOQUOTES) ?> | </span>
									<span title="<?php echo htmlSpecialChars($it->nstav) ?>, <?php echo htmlSpecialChars($it->username) ?>
, <?php echo htmlSpecialChars($template->date($it->datzmeny, '%d.%m.%Y %H:%I:%S')) ?>">
										<span class="tit">Stav:</span>
<?php if ($it->id_stav == 1): ?>
											<span class="status s1" title="<?php echo htmlSpecialChars($it->nstav) ?>">
<?php endif ;if ($it->id_stav > 1 && $it->id_stav < 5): ?>
											<span class="status s2" title="<?php echo htmlSpecialChars($it->nstav) ?>">
<?php endif ;if ($it->id_stav == 5): ?>
											<span class="status s3" title="<?php echo htmlSpecialChars($it->nstav) ?>">
<?php endif ;if ($it->id_stav == 6): ?>
											<span class="status s4" title="<?php echo htmlSpecialChars($it->nstav) ?>">
<?php endif ;if ($it->id_stav == 7): ?>
											<span class="status s5" title="<?php echo htmlSpecialChars($it->nstav) ?>">
<?php endif ?>
											<span class="mini" title="<?php echo htmlSpecialChars($it->nstav) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->stav, ENT_NOQUOTES) ?></span>
										</span> | 
									</span>		
<?php if ($user->isAllowed('Nabidka','toPdf')): ?>
									<span class="tit">
										<a  title="Export do PDF" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Nabidka:toPdf", array($it->id))) ?>
">Nabídka v PDF</a>
									</span><?php endif ?>
 | 
									<span class="tit"><?php if ($user->isAllowed('Nabidka','detail')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Nabidka:detail", array($it->id))) ?>
">Detail nabídky</a><?php endif ?>
</span> | 
									<div>
										<span class="tit"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->poznamka, ENT_NOQUOTES) ?></span>
									</div>
									
									<div class="prod">
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('prods.latte', array('nabid' => $it->id) + $template->getParams(), $_l->templates['tr898zi2lh'])->render() ?>
									</div>
								</div>
							</div>
							</div>
						</div>
<?php $nabs .= 'nab-'.$it->id.', ' ?>
					
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		</div>
		<div style="clear:both"></div>
	</div>
</div>	
</div>


<?php $nabs = substr($nabs, 0, -2) ?>
<script type='text/javascript' src='<?php echo htmlSpecialChars($basePath, ENT_QUOTES) ?>/js/jquery.cookie.js'></script>
<script type='text/javascript' src='<?php echo htmlSpecialChars($basePath, ENT_QUOTES) ?>/js/jquery.collapse.js'></script>
<script type='text/javascript'>

            $(".kol-1, .kol-2, .kol-3,").collapse({ show: function(){ 
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


<script type='text/javascript'>
            $(<?php echo Nette\Templating\DefaultHelpers::escapeJs($nabs) ?>).collapse({ show: function(){ 
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
if (!function_exists($_l->blocks['title'][] = '_lb59969800c6_title')) { function _lb59969800c6_title($_l, $_args) { extract($_args)
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
$_l->extends = 'default.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
