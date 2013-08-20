<?php //netteCache[01]000386a:2:{s:4:"time";s:21:"0.81290800 1359041692";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:64:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\@layout.latte";i:2;i:1318759112;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\@layout.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'wc54w5wl5b')
;//
// block drobecky
//
if (!function_exists($_l->blocks['drobecky'][] = '_lb107361488a_drobecky')) { function _lb107361488a_drobecky($_l, $_args) { extract($_args)
?><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Homepage:")) ?>
">Úvod</a><?php call_user_func(reset($_l->blocks['drobecky2']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky2
//
if (!function_exists($_l->blocks['drobecky2'][] = '_lb8f67479fba_drobecky2')) { function _lb8f67479fba_drobecky2($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbd32b474b0b_content')) { function _lbd32b474b0b_content($_l, $_args) { extract($_args)
;
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
$_l->extends = '../../Base/templates/@layout.latte'  ?>

<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
