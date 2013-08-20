<?php //netteCache[01]000390a:2:{s:4:"time";s:21:"0.28218400 1359123920";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:68:"C:\xamlite\htdocs\ems\app\modules\Nakup\templates\Import\check.latte";i:2;i:1321975806;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Nakup\templates\Import\check.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '6vuj0e4p9d')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lbc6abbe1b50_drobecky3')) { function _lbc6abbe1b50_drobecky3($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lbbcf51ef1bd_drobecky4')) { function _lbbcf51ef1bd_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbadcb546de1_content')) { function _lbadcb546de1_content($_l, $_args) { extract($_args)
?>

<h1>Import materiálové rozpisky (BOM)</h1>
<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<div id="centered">
<?php if ($pocet>0): ?>
		Pro první posouzení stavu importovaných dat bylo načteno jen prvních <?php echo Nette\Templating\DefaultHelpers::escapeHtml($pocet, ENT_NOQUOTES) ?> záznamů
		<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("check", array($soubor, 0))) ?>
"> (zobrazit všechna data).</a>
<?php endif ?>

	<table class="csv">
		<thead
		<tr>
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($head) as $item): ?>
				<th><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item, ENT_NOQUOTES) ?>
 (<?php echo Nette\Templating\DefaultHelpers::escapeHtml($iterator->counter, ENT_NOQUOTES) ?>)</th>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>

		</tr>
		</thead>

<?php call_user_func(reset($_l->blocks['datacsv']), $_l, get_defined_vars())  ?>

	</table>
<?php if ($pocet>0): ?>
		<span id="odkaz"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("check", array($soubor, 0))) ?>
">Zobrazit všechna data</a></span>
<?php endif ?>


<div class="flash">
	Přiřaďte jednotlivým sloupcům načtených dat z CSV zdroje názvy příslušných polí pro správné uložení dat BOMu do databáze položek materiálové rozpisky.
</div>

<div class="flash warning">
	DŮLEŽITÉ UPOZORNĚNÍ<BR />
	Nesprávné přiřazení sloupců polím databáze může mít za následek nemožnost provést další zpracování TPV produktu vč. ocenění, popř. způsobit velké množství chyb.<br />
	Věnujte proto tomuto kroku <b>náležitou pozornost</b>.
</div>
	<p></p>
<?php $_ctrl = $control->getWidget("checkForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ?>
</div>
<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb6549b69d2b_title')) { function _lb6549b69d2b_title($_l, $_args) { extract($_args)
?>
<h2>2/3 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?></h2>
<?php
}}

//
// block datacsv
//
if (!function_exists($_l->blocks['datacsv'][] = '_lb9559c6612b_datacsv')) { function _lb9559c6612b_datacsv($_l, $_args) { extract($_args)
?>
		<tr>
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($data) as $item): ?>
				<?php if (is_array($item)): ?> <?php call_user_func(reset($_l->blocks['datacsv']), $_l, array('data' => $item) + $template->getParams()) ?>

<?php else: $cislo = str_replace(',','.',$item) ;if (is_numeric($cislo)): ?>
						<td class="tcislo">
<?php else: ?>
						<td>
<?php endif ?>
						<?php echo Nette\Templating\DefaultHelpers::escapeHtml($item, ENT_NOQUOTES) ?>

					</td>
<?php endif ;$iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		</tr>
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
