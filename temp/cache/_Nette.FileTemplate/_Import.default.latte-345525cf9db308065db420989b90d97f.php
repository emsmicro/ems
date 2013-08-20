<?php //netteCache[01]000392a:2:{s:4:"time";s:21:"0.58198000 1359123033";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:70:"C:\xamlite\htdocs\ems\app\modules\Nakup\templates\Import\default.latte";i:2;i:1322936486;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Nakup\templates\Import\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '6snitkanum')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lb3935421f08_drobecky3')) { function _lb3935421f08_drobecky3($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb0dab651afe_drobecky4')) { function _lb0dab651afe_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb2aec69ab2f_content')) { function _lb2aec69ab2f_content($_l, $_args) { extract($_args)
?>

<h1>Průvodce importem materiálové rozpisky (BOM)</h1>
<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<div class="flash exclamation">
	Vstupní soubor pro import materiálové rozpisky (BOM) musí být ve formátu CSV. Jednotlivá pole musí být oddělena středníkem a textová pole nesmí být v uvozovkách či apostrofech.<br />
	Pokud používáte MS Excel pro uložení dat do CSV, vyberte oblast dat (bez prázdných řádků a sloupců) a zvolte uložit jako "CSV (oddělený středníkem)".
</div>	

<p></p>

<?php $_ctrl = $control->getWidget("uploadForm"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ;
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb64675a1a4a_title')) { function _lb64675a1a4a_title($_l, $_args) { extract($_args)
?>
<h2>1/3 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?></h2>
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
$_l->extends = '../Nakup/default.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
