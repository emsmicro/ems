<?php //netteCache[01]000391a:2:{s:4:"time";s:21:"0.86182300 1363010239";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:69:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Postup\addGroup.latte";i:2;i:1363010230;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Postup\addGroup.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'g7uzd0v1xd')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb8e7bab3bbf_drobecky4')) { function _lb8e7bab3bbf_drobecky4($_l, $_args) { extract($_args)
?> » Hromadná editace operací<?php call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb4c88995ca1_drobecky5')) { function _lb4c88995ca1_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb501a688552_content')) { function _lb501a688552_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<h4><?php echo Nette\Templating\DefaultHelpers::escapeHtml($npostup, ENT_NOQUOTES) ?></h4>
<h4><?php echo Nette\Templating\DefaultHelpers::escapeHtml($nsablona, ENT_NOQUOTES) ?></h4>
<div class="manual">
<?php $_ctrl = $control->getWidget("addGroupForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render('begin') ;$_ctrl = $control->getWidget("addGroupForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render('errors') ?>

<table>
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
			<td class="ntext" title="<?php echo htmlSpecialChars($item->ido) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->zdruh, ENT_NOQUOTES) ?>
<span class="mini"> (<?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->id_typy_operaci, ENT_NOQUOTES) ?>)</span></td>
			<td class="rpopis"><b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->poradi, ENT_NOQUOTES) ?></b></td>
			<td class="popis input"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['addGroupForm']['mpole']['popis'.$i]->control, ENT_NOQUOTES) ?></td>
<?php if ($item->zdruh == 'Strojní' || $item->zdruh == 'Ruční' || $item->zdruh == 'Montáž'): ?>
				<td class="cislo input"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['addGroupForm']['mpole']['ta_cas'.$i]->control, ENT_NOQUOTES) ?></td>
				<td class="cislo input"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['addGroupForm']['mpole']['tp_cas'.$i]->control, ENT_NOQUOTES) ?></td>
				<td class="lpopis">[min]</td>
<?php endif ;if ($item->zdruh == 'Ostatní'): ?>
				<td class="rpopis" colspan="2">[Kč/ks]</td>
				<td class="cislo input"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['addGroupForm']['mpole']['naklad'.$i]->control, ENT_NOQUOTES) ?></td>
<?php endif ;if ($item->zdruh == 'Jednorázové'): ?>
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

	
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('../../../Base/templates/js_number.latte', $template->getParams(), $_l->templates['g7uzd0v1xd'])->render() ;
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbbfdc547dc1_title')) { function _lbbfdc547dc1_title($_l, $_args) { extract($_args)
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
