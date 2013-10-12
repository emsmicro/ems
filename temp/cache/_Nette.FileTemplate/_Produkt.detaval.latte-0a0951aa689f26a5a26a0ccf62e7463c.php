<?php //netteCache[01]000394a:2:{s:4:"time";s:21:"0.94172900 1379251552";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:72:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Produkt\detaval.latte";i:2;i:1377687686;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Produkt\detaval.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'dj86x72ann')
;
// snippets support
if (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
?>

<?php $aclass = "" ;$bestit = "" ;if ($item['avalbest']): $aclass = "best" ;$bestit = "Nejlepší přidaná hodnota" ;endif ?>
<div class="daval">
	<table class="grid aval <?php echo htmlSpecialChars($aclass) ?>">
		<tbody>
		<tr title="Cena: <?php echo htmlSpecialChars($item['id_cena']) ?>" style="border-bottom:1px solid #BBB;">
			<th>Množ./dávka</th><td class="cislo" style="font-size:x-small;"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item['mnozstvi'], 0, ',', ' '), ENT_NOQUOTES) ?>
 / <?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item['davka'], 0, ',', ' '), ENT_NOQUOTES) ?> ks</td>
		</tr>
		<tr><th>Tržba</th>		<td class="cislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item['trzba'], 2, ',', ' '), ENT_NOQUOTES) ?> Kč</td></tr>
		<tr title="Čistá PH = Tržba - Nákady (mat., mzdy, stroje - bez režií)"><th>Čistá PH</th>	<td class="cislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item['avalcist'], 2, ',', ' '), ENT_NOQUOTES) ?> Kč</td></tr>
		<tr title="Real. PH = Tržba - Výr. nákady + Mater. přirážka"><th>Real. PH</th>	<td class="cislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item['avalkalk'], 2, ',', ' '), ENT_NOQUOTES) ?> Kč</td></tr>
		<tr><th>Zisk</th>		<td class="cislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item['kalkzisk'], 2, ',', ' '), ENT_NOQUOTES) ?> Kč</td></tr>
		<tr><th>PH/Tržba</th>	<td class="cislo light" title="<?php echo htmlSpecialChars($bestit) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item['avalproc'], 2, ',', ' '), ENT_NOQUOTES) ?> %</td></tr>
		<tr><td colspan="2" class="mini" style="text-align:right;cursor:default;background-color:#FFF;padding:3px 5px 0 0;">
				<span class="tooltip2">&nbsp;&nbsp;&nbsp;</span>
				Další údaje...
				<div class="popup" style="min-width:120%;right:-10px;top:3px;">
					<div>
					  <span class="label">Mater. tržba</span>
					  <span class="value"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item['trzbamat'], 0, ',', ' '), ENT_NOQUOTES) ?>
 Kč [<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item['matcproc'], 1, ',', ' '), ENT_NOQUOTES) ?> %]</span>
					</div>
					<div>
						<span class="label">Mater. náklady</span>
						<span class="value"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item['maternak'], 0, ',', ' '), ENT_NOQUOTES) ?>
 Kč [<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item['matnproc'], 1, ',', ' '), ENT_NOQUOTES) ?> %]</span>
					</div>
					<div>
					  <span class="label">Náklady služby</span>
					  <span class="value"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item['sluzbnak'], 0, ',', ' '), ENT_NOQUOTES) ?>
 Kč [<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item['sluzproc'], 1, ',', ' '), ENT_NOQUOTES) ?> %]</span>
					</div>
					<div>
					  <span class="label">Správní režie</span>
					  <span class="value"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item['spravrez'], 0, ',', ' '), ENT_NOQUOTES) ?>
 Kč [<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item['sprvproc'], 1, ',', ' '), ENT_NOQUOTES) ?> %]</span>
					</div>
				</div>
				<div id="dgraph_<?php echo htmlSpecialChars($item['id_cena']) ?>" class="popgr"><b><u>VYSKYTLA SE CHYBA - graf nelze vykreslit</u></b> 
					<div style="display:block;width:100%;text-align:left;"> id_cena = <?php echo Nette\Templating\DefaultHelpers::escapeHtml($item['id_cena'], ENT_NOQUOTES) ?>
<br /> data = <?php echo Nette\Templating\DefaultHelpers::escapeHtml($item['datagraf'], ENT_NOQUOTES) ?></div>
				</div>
		</td></tr>

		</tbody>
	</table>
</div>

<script type='text/javascript' src='<?php echo htmlSpecialChars($basePath, ENT_QUOTES) ?>/js/highcharts.js'></script>
<script type='text/javascript'>
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('graval.latte', array('idg' => $item['id_cena'], 'gr_data' => $item['datagraf']) + $template->getParams(), $_l->templates['dj86x72ann'])->render() ?>
</script>

