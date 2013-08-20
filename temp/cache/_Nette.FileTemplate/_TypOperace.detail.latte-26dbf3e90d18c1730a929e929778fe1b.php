<?php //netteCache[01]000393a:2:{s:4:"time";s:21:"0.93832700 1359741580";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:71:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\TypOperace\detail.latte";i:2;i:1359741576;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\TypOperace\detail.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'ml8afq4dho')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb7ff4005121_drobecky4')) { function _lb7ff4005121_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb10ea21b1e8_drobecky5')) { function _lb10ea21b1e8_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb35ce1813bf_content')) { function _lb35ce1813bf_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<ul id="navi">
<?php if ($user->isAllowed('TypOperace','add')): ?>
	<li title="Nový typ operace"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">Nový...</a></li>
<?php endif ;if ($user->isAllowed('TypOperace','edit')): ?>
	<li title="Změnit typ operace"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($item->id))) ?>
">Změnit</a></li>
<?php endif ?>
</ul>
<table class="grid">
	<tr><th>Druh</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->druh, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Zkratka</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->zkratka, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Název</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->nazev, ENT_NOQUOTES) ?></td></tr>
	<tr><th title="Minimální doba trvání operace [min]">Min. čas [min]</th><td class="cislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item->ta_min, 2, ',', ' '), ENT_NOQUOTES) ?></td></tr>
	<tr><th title="Časová rezerva [%]">Rezerva</th><td class="cislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item->ta_rezerva * 100, 0, ',', ' '), ENT_NOQUOTES) ?> %</td></tr>
</table>

<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbab2ee90eb0_title')) { function _lbab2ee90eb0_title($_l, $_args) { extract($_args)
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
$_l->extends = './default.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
