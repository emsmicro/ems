<?php //netteCache[01]000392a:2:{s:4:"time";s:21:"0.95636800 1359123950";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:70:"C:\xamlite\htdocs\ems\app\modules\Nakup\templates\Import\confirm.latte";i:2;i:1320498188;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Nakup\templates\Import\confirm.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'bnv63iccn1')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lb2f9ab27da0_drobecky3')) { function _lb2f9ab27da0_drobecky3($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lbfe07b20712_drobecky4')) { function _lbfe07b20712_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbef11e35793_content')) { function _lbef11e35793_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<?php if ($isok): ?>
	<div class="flash exclamation">
		<p>Opravdu chcete pro produkt "<b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($aprodukt, ENT_NOQUOTES) ?>
</b>" importovat ze souboru [<?php echo Nette\Templating\DefaultHelpers::escapeHtml($file, ENT_NOQUOTES) ?>] data do databáze?</p>
		<p><b>Upozornění</b>: pokud součástí importovaných dat je i pole s cenou, má se za to, že cena je v <strong>Kč</strong>!</p>
	</div>
	<div>
		<p></p>
		Přehled přiřazení vstupních polí ze souboru <b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($file, ENT_NOQUOTES) ?></b> výstupním polím databáze:
		<table class="csv">
			<th>Vstupní pole (CSV)</th>
			<th></th>
			<th>Výstupní pole (DB)</th>
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($info) as $k => $v): ?>
				<tr>
					<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($v, ENT_NOQUOTES) ?>
  (<?php echo Nette\Templating\DefaultHelpers::escapeHtml($iterator->counter, ENT_NOQUOTES) ?>)</td>
					<td>--></td>
					<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($k, ENT_NOQUOTES) ?></td>
				</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		</table>
	</div>
<?php $_ctrl = $control->getWidget("confirmForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ?>

<?php else: ?>
	<p>Data nelze importovat, nedostatečné vstupní údaje.</p>
<?php endif ;
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbd00c902b7c_title')) { function _lbd00c902b7c_title($_l, $_args) { extract($_args)
?>
<h1>3/3 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?></h1>
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
$_l->extends = './default.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
