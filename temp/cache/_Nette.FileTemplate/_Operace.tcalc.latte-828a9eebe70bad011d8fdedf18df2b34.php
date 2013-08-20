<?php //netteCache[01]000389a:2:{s:4:"time";s:21:"0.10399300 1359743961";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:67:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Operace\tcalc.latte";i:2;i:1359743954;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Operace\tcalc.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '9p72fvhw8k')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lbed0dea7774_drobecky4')) { function _lbed0dea7774_drobecky4($_l, $_args) { extract($_args)
?> » Kalkulace spotřeby času<?php call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb0e36e4ace6_drobecky5')) { function _lb0e36e4ace6_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb7b2d15b198_content')) { function _lb7b2d15b198_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<h2>Produkt: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitul, ENT_NOQUOTES) ?></h2>
<h2>Operace: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitul2, ENT_NOQUOTES) ?></h2>


<div class="manual">
<span style="font-size:smaller;padding-left:25px;">Do sloupce "množství" zadejte pro každý časový atribut počet prvků/úkonů, které výrobní/přípravná operace obsahuje.</span>

<?php $_ctrl = $control->getWidget("tcalcForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render('begin') ;$_ctrl = $control->getWidget("tcalcForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render('errors') ;$t = 0 ;$tamin = "" ;if ($ta_min > 0): $tamin = ", min. ".round($ta_min,2)." minut." ;endif ;$tarez = "" ;if ($ta_rez > 0): $tarez = ", čas bude navýšen o ".round($ta_rez,0)." %" ;endif ;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $item): if ($item->typ<>$t): if ($t>0): ?>
				<tr>
<?php if ($t == 1): ?>
						<td colspan="2" class="cislo" style="background:#C1DAFF;color:#000;">
							Výsledný čas Ta [min]<?php echo Nette\Templating\DefaultHelpers::escapeHtml($tarez, ENT_NOQUOTES) ;echo Nette\Templating\DefaultHelpers::escapeHtml($tamin, ENT_NOQUOTES) ?>

						</td>
						<td colspan="2" style="background:#C1DAFF;color:#000;font-size:14px; font-weight:bold; text-align:right; padding-right:7px;" title="Výsledný čas">
							<span id="c_time0"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($ta, 2, ',', ' '), ENT_NOQUOTES) ?></span>
						</td>
<?php endif ?>
				</tr>
				</table>
				</div>
				</div>
<?php endif ?>
			<div class="detail">
				<div class="dtitul">
<?php $tt = "tab".$t ?>
			<table id="<?php echo htmlSpecialChars($tt) ?>">
				<tr>
<?php if ($item->typ == 1): ?>
						<td colspan="2" style="background:#4FA3F7;color:#FFF;">
							Parametry výpočtu spotřeby výrobního času (závislého na množství) 
						</td>
						<td colspan="2" style="background:#4FA3F7;color:#FFF;font-size:11px; text-align:right;" title="Aktuální čas">uloženo: Ta = <span id="t_ta"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($ta, 2, ',', ' '), ENT_NOQUOTES) ?></span> min</td>
<?php endif ;if ($item->typ == 2): ?>
						<td colspan="2" style="background:#4FA3F7;color:#FFF;">
							Parametry výpočtu spotřeby přípravného (dávkového) času
						</td>
						<td colspan="2" style="background:#4FA3F7;color:#FFF;font-size:11px; text-align:right;" title="Aktuální čas">uloženo: Tp = <span id="t_tp"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($tp, 2, ',', ' '), ENT_NOQUOTES) ?></span> min</td>
<?php endif ?>
				</tr>
				<tr>
					<th>Zkratka</th>
					<th>Název atributu času</th>
					<th>Čas s/ks</th>
					<th>Množství</th>
				</tr>
<?php $t = $item->typ ;endif ?>
		<tr>
			<td style="min-width:150px;" title="<?php echo htmlSpecialChars($item->ida) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->zkratka, ENT_NOQUOTES) ?></td>
			<td class="ntext2"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->nazev, ENT_NOQUOTES) ?></td>
<?php $tid = "tt_".$item->ida ?>
			<td id="<?php echo htmlSpecialChars($tid) ?>" class="tcislo" style="min-width:60px;"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item->cas_sec, 2, ',', ' '), ENT_NOQUOTES) ?></td>
			<td class="cislo input"> 
				<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['tcalcForm']['mpole']['ks_'.$item->ida]->control, ENT_NOQUOTES) ?>

			</td>
		</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		<tr>
<?php if ($t == 1): ?>
				<td colspan="2" class="cislo" style="background:#C1DAFF;color:#000;">
					Výsledný čas Ta [min]<?php echo Nette\Templating\DefaultHelpers::escapeHtml($tarez, ENT_NOQUOTES) ;echo Nette\Templating\DefaultHelpers::escapeHtml($tamin, ENT_NOQUOTES) ?>

				</td>
				<td colspan="2" style="background:#C1DAFF;color:#000;font-size:14px; font-weight:bold; text-align:right; padding-right:7px;" title="Výsledný čas">
					<span id="c_time0"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($ta, 2, ',', ' '), ENT_NOQUOTES) ?></span>
				</td>
<?php elseif ($t == 2): ?>
				<td colspan="2" class="cislo" style="background:#C1DAFF;color:#000;">
					Výsledný čas Tp [min]
				</td>
				<td colspan="2" style="background:#C1DAFF;color:#000;font-size:14px; font-weight:bold; text-align:right; padding-right:7px;" title="Výsledný čas">
					<span id="c_time1"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($tp, 2, ',', ' '), ENT_NOQUOTES) ?></span>
				</td>
<?php endif ?>
		</tr>
	</table>
	</div>
		<div style="width:150%;margin-left:10px;">
<?php if ($unlocked): ?>
			<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['tcalcForm']['save']->control, ENT_NOQUOTES) ?></span>
<?php endif ?>
			<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['tcalcForm']['cancel']->control, ENT_NOQUOTES) ?></span>
			<span style="margin-left:200px;"></span>
			<span class="butt" onclick="RecalculateSums()">Přepočítat</span>
		</div>
	</div>
			
<?php $_ctrl = $control->getWidget("tcalcForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render('end') ?>

</div>

<?php Nette\Latte\Macros\CoreMacros::includeTemplate('../../../Base/templates/js_number.latte', $template->getParams(), $_l->templates['9p72fvhw8k'])->render() ?>

<script type='text/javascript'>

    $(document).ready(function(){
        $(".text").each(function() {
            $(this).keyup(function(){
				SumInputs("tab0","c_time0");
				SumInputs("tab1","c_time1");
            });
        });
 
    });

	function RecalculateSums()
	{
		SumInputs("tab0","c_time0");
		SumInputs("tab1","c_time1");		
	}

	function SumInputs(etab,cile)
	{
		var total = 0;
		var coll = document.getElementById(etab).getElementsByTagName("input")
		var cotd = document.getElementById(etab).getElementsByTagName("td")
		var mnm="";
		for ( var i = 0; i<coll.length; i++)
		{
			var ele = coll[i];
			mnm = ele.getAttribute("name");
			if(mnm.substring(0,9)=="mpole[ks_"){
				var idd = parseInt(mnm.substring(9));
				//ele.value = ele.value.replace(",",".");
				var mno = parseFloat(ele.value);
				if(isNaN(mno)){ mno=0; }
				for ( var j = 0; j<cotd.length; j++)
				{
					var el2 = cotd[j];
					var nm2 = el2.getAttribute("id");
					if(nm2 == "tt_"+idd){
						var eva = el2.innerHTML//.replace(",",".");
						total += mno * parseFloat(eva);
					}
				}
			}
		}
		var Display = document.getElementById(cile);
		var tot = total/60;
		tot = tot.toFixed(2);
		if(!isNaN(tot) && tot.length!=0) {
			Display.innerHTML = tot.toString().replace(".",",");
		} else {
			Display.innerHTML = "N/A";
		}
	}

</script>

<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbf28e715219_title')) { function _lbf28e715219_title($_l, $_args) { extract($_args)
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
