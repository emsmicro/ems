<?php //netteCache[01]000383a:2:{s:4:"time";s:21:"0.18940200 1382281605";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:61:"C:\xampp\htdocs\ems\app\modules\Nakup\templates\@layout.latte";i:2;i:1318759208;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xampp\htdocs\ems\app\modules\Nakup\templates\@layout.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'zf9ju5w4fc')
;//
// block drobecky
//
if (!function_exists($_l->blocks['drobecky'][] = '_lb24577fb50e_drobecky')) { function _lb24577fb50e_drobecky($_l, $_args) { extract($_args)
?><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Homepage:")) ?>
">Úvod</a><?php call_user_func(reset($_l->blocks['drobecky2']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky2
//
if (!function_exists($_l->blocks['drobecky2'][] = '_lb7e3e70d81f_drobecky2')) { function _lb7e3e70d81f_drobecky2($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lba8453d678c_content')) { function _lba8453d678c_content($_l, $_args) { extract($_args)
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
