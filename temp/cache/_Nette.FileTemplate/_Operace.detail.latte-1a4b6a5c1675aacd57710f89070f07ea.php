<?php //netteCache[01]000390a:2:{s:4:"time";s:21:"0.67196200 1359737193";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:68:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Operace\detail.latte";i:2;i:1333616713;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Operace\detail.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'eqkovma0q8')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb9ea7b546dc_drobecky4')) { function _lb9ea7b546dc_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb544e2e238c_drobecky5')) { function _lb544e2e238c_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbb46dd4e204_content')) { function _lbb46dd4e204_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<h2><?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitle, ENT_NOQUOTES) ?></h2>
<h3><?php echo Nette\Templating\DefaultHelpers::escapeHtml($company, ENT_NOQUOTES) ?></h3>
<ul id="navi">
<?php if ($user->isAllowed('Operace','add')): ?>
	<li title="Nová operace"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">Nový...</a></li>
<?php endif ;if ($user->isAllowed('Operace','edit')): ?>
	<li title="Změnit operaci"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($item->id))) ?>
">Změnit</a></li>
<?php endif ?>
</ul>

<table class="grid">
	<tr><th>Typ</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->typ, ENT_NOQUOTES) ?></td></tr>
	<tr><th width="90px">Popis operace</th><td width="250px"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->popis, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Náklad</th><td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item->naklad, 2, ',', ' '), ENT_NOQUOTES) ?></td></tr>
	<tr><th>Čas Ta [min]</th><td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item->ta_cas, 2, ',', ' '), ENT_NOQUOTES) ?></td></tr>
	<tr><th>Čas Tp [min]</th><td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item->tp_cas, 2, ',', ' '), ENT_NOQUOTES) ?></td></tr>
</table>

<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb15e91a34a0_title')) { function _lb15e91a34a0_title($_l, $_args) { extract($_args)
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
