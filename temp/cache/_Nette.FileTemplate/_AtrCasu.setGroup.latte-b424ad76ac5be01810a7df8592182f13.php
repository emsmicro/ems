<?php //netteCache[01]000392a:2:{s:4:"time";s:21:"0.89282100 1366451405";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:70:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\AtrCasu\setGroup.latte";i:2;i:1331887143;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\AtrCasu\setGroup.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '6161epw3pq')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb0749a2e678_drobecky4')) { function _lb0749a2e678_drobecky4($_l, $_args) { extract($_args)
?> » Přiřazení atributu času typovým operacím<?php call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb6183b3aae2_drobecky5')) { function _lb6183b3aae2_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbb747242f29_content')) { function _lbb747242f29_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<h2 title="(id atributu = <?php echo htmlSpecialChars($ida) ?>)">
		Atribut: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitul, ENT_NOQUOTES) ?>

</h2>

<div class="manual">
<div style="font-size:smaller; margin-bottom: 15px;">Zvolte ty typové operace jejichž délku časový atribut "<?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitul, ENT_NOQUOTES) ?>" ovlivňuje.</div>
<?php $_ctrl = $control->getWidget("setGroupForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render('begin') ;$_ctrl = $control->getWidget("setGroupForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render('errors') ?>

<table>
	<tr>
		<th>Druh</th>
		<th>Zkratka</th>
		<th>Popis</th>
		<th>Přiřadit</th>
	</tr>
<?php $i = 0 ;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $item): $i++ ?>
        <tr>
			<td class="ntext"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->zkratka, ENT_NOQUOTES) ?></td>
			<td class="ntext"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->tzkratka, ENT_NOQUOTES) ?></td>
			<td class="ntext"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->nazev, ENT_NOQUOTES) ?>
<span class="mini">&nbsp;(<?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->idto, ENT_NOQUOTES) ?>)</span></td>
			<td style="text-align:right;">
				<span title="Přiřadit">
				<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['setGroupForm']['mpole']['yes_'.$item->idto]->control, ENT_NOQUOTES) ?>

				</span>
				&nbsp;
			</td>
        </tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
	<tr class="noborder">
		<td colspan="4" class="tdcenter">
			<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['setGroupForm']['save']->control, ENT_NOQUOTES) ?></span>
			<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['setGroupForm']['cancel']->control, ENT_NOQUOTES) ?></span>
		</td>
	</tr>
</table>
			
<?php $_ctrl = $control->getWidget("setGroupForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render('end') ?>

</div>
<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb65113af702_title')) { function _lb65113af702_title($_l, $_args) { extract($_args)
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
