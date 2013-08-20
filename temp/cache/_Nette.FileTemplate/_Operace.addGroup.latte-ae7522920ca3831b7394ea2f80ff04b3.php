<?php //netteCache[01]000392a:2:{s:4:"time";s:21:"0.03022600 1361455897";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:70:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Operace\addGroup.latte";i:2;i:1361454683;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Operace\addGroup.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'dda5rok5lf')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb0b19f32ca9_drobecky4')) { function _lb0b19f32ca9_drobecky4($_l, $_args) { extract($_args)
?> » Hromadná editace operací<?php call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb9aa8ff5fd9_drobecky5')) { function _lb9aa8ff5fd9_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb795a63daa4_content')) { function _lb795a63daa4_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<h2><?php echo Nette\Templating\DefaultHelpers::escapeHtml($company, ENT_NOQUOTES) ?></h2>
<h3>
<?php if ($user->isAllowed('Produkt','detail')): ?>
	<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:detail", array($iprodukt))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitle, ENT_NOQUOTES) ?></a>
<?php endif ;if (!$user->isAllowed('Produkt','detail')): ?>
	<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitle, ENT_NOQUOTES) ?></span>
<?php endif ?>
</h3>

<div class="manual">
<?php $_ctrl = $control->getWidget("addGroupForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render('begin') ;$_ctrl = $control->getWidget("addGroupForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render('errors') ?>

<table>
	<tr class="noborder" style="border-bottom:solid 1px #4FA3F7;">
		<td colspan="3"></td>
		<td colspan="3" class="tdcenter">
			<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['addGroupForm']['save']->control, ENT_NOQUOTES) ?></span>
			<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['addGroupForm']['cancel']->control, ENT_NOQUOTES) ?></span>
		</td>
	</tr>
	<tr style="text-align:left;">
		<th>Druh</th>
		<th style="text-align:center;">#</th>
		<th>Popis</th>
		<th title="Výrobní čas">Ta [min]</th>
		<th title="Přípravný/dávkový čas">Tp [min]</th>
		<th>Náklad [Kč]</th>
	</tr>
<?php $i = 0 ;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $item): $i++ ?>
        <tr>
			<td class="ntext" title="<?php echo htmlSpecialChars($item->ido) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->zkratka, ENT_NOQUOTES) ?>
<span class="mini"> (<?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->idto, ENT_NOQUOTES) ?>)</span></td>
			<td class="rpopis"><b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->poradi, ENT_NOQUOTES) ?></b></td>
			<td class="popis input"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['addGroupForm']['mpole']['popis'.$i]->control, ENT_NOQUOTES) ?></td>
<?php if ($item->zkratka == 'Strojní' || $item->zkratka == 'Ruční' || $item->zkratka == 'Montáž'): ?>
				<td class="cislo input"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['addGroupForm']['mpole']['ta_cas'.$i]->control, ENT_NOQUOTES) ?></td>
				<td class="cislo input"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['addGroupForm']['mpole']['tp_cas'.$i]->control, ENT_NOQUOTES) ?></td>
				<td class="lpopis">[min]</td>
<?php endif ;if ($item->zkratka == 'Ostatní'): ?>
				<td class="rpopis" colspan="2">[Kč/ks]</td>
				<td class="cislo input"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['addGroupForm']['mpole']['naklad'.$i]->control, ENT_NOQUOTES) ?></td>
<?php endif ;if ($item->zkratka == 'Jednorázové'): ?>
				<td class="rpopis" colspan="2">[Kč celkem]</td>
				<td class="cislo input"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['addGroupForm']['mpole']['naklad'.$i]->control, ENT_NOQUOTES) ?></td>
<?php endif ?>
        </tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
	<tr class="noborder">
		<td colspan="3"></td>
		<td colspan="3" class="tdcenter">
			<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['addGroupForm']['save']->control, ENT_NOQUOTES) ?></span>
			<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['addGroupForm']['cancel']->control, ENT_NOQUOTES) ?></span>
		</td>
	</tr>
</table>
			
<?php $_ctrl = $control->getWidget("addGroupForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render('end') ?>

</div>

	
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('../../../Base/templates/js_number.latte', $template->getParams(), $_l->templates['dda5rok5lf'])->render() ;
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb54b821c400_title')) { function _lb54b821c400_title($_l, $_args) { extract($_args)
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
