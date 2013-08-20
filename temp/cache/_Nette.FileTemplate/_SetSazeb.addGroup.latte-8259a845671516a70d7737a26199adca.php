<?php //netteCache[01]000396a:2:{s:4:"time";s:21:"0.58881200 1359652634";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:74:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\SetSazeb\addGroup.latte";i:2;i:1359557331;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\SetSazeb\addGroup.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '1wuf84m95p')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb47422dc9cb_drobecky4')) { function _lb47422dc9cb_drobecky4($_l, $_args) { extract($_args)
?> » Hromadné zadání režijních sazeb<?php call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb331b8391f8_drobecky5')) { function _lb331b8391f8_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb5031ff3cbc_content')) { function _lb5031ff3cbc_content($_l, $_args) { extract($_args)
?>


<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<div class="manual">

<?php $_ctrl = $control->getWidget("addGroupForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render('begin') ;$_ctrl = $control->getWidget("addGroupForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render('errors') ?>

<table>
	<tr>
		<th>#</th>
		<th>Popis</th>
		<th>Sazba [%]</th>
	</tr>
<?php $i = 0 ;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $item): $i++ ?>
        <tr>
			<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->poradi, ENT_NOQUOTES) ?></td>
			<td class="ntext2"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->nazev, ENT_NOQUOTES) ?>
<span class="mini"> (<?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->id, ENT_NOQUOTES) ?>)</span></td>
			<td class="cislo input"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['addGroupForm']['mpole']['hodnota'.$i]->control, ENT_NOQUOTES) ?></td>
        </tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
	<tr class="noborder">
		<td colspan="3" class="tdcenter">
			<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['addGroupForm']['save']->control, ENT_NOQUOTES) ?></span>
			<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['addGroupForm']['cancel']->control, ENT_NOQUOTES) ?></span>
		</td>
	</tr>

</table>

<?php $_ctrl = $control->getWidget("addGroupForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render('end') ?>

</div>

<?php if ($vzorce): Nette\Latte\Macros\CoreMacros::includeTemplate('../vzorce.latte', $template->getParams(), $_l->templates['1wuf84m95p'])->render() ;endif ?>

<?php Nette\Latte\Macros\CoreMacros::includeTemplate('../../../Base/templates/js_number.latte', $template->getParams(), $_l->templates['1wuf84m95p'])->render() ;
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbf46e286e96_title')) { function _lbf46e286e96_title($_l, $_args) { extract($_args)
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
