<?php //netteCache[01]000393a:2:{s:4:"time";s:21:"0.70995400 1359041692";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:71:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Obchod\default.latte";i:2;i:1321176166;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Obchod\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '9hk2dxvlnb')
;//
// block drobecky2
//
if (!function_exists($_l->blocks['drobecky2'][] = '_lba4ebef4ada_drobecky2')) { function _lba4ebef4ada_drobecky2($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Obchod:default")) ?>
">Obchod</a><?php call_user_func(reset($_l->blocks['drobecky3']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lb0d23650fc2_drobecky3')) { function _lb0d23650fc2_drobecky3($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb8e1a9891a1_content')) { function _lb8e1a9891a1_content($_l, $_args) { extract($_args)
;call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>


<?php if ($is_todo): ?>
	<h2><?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitle, ENT_NOQUOTES) ?></h2>
	<div class="todod">
<?php call_user_func(reset($_l->blocks['todolist']), $_l, get_defined_vars())  ?>
	</div>
<?php endif ?>


<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb690526b4df_title')) { function _lb690526b4df_title($_l, $_args) { extract($_args)
?>
<h1><?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?></h1>
<?php
}}

//
// block todolist
//
if (!function_exists($_l->blocks['todolist'][] = '_lb0e69a3694d_todolist')) { function _lb0e69a3694d_todolist($_l, $_args) { extract($_args)
;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($todos) as $oblast=>$item): ?>
			<ul>
				<li id="todo"><span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($oblast, ENT_NOQUOTES) ?></span>
<?php if (is_array($item)): call_user_func(reset($_l->blocks['todolist']), $_l, array('todos' => $item) + $template->getParams()) ;else: if ($item == 'ne'): ?>
								<span class="ne"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item, ENT_NOQUOTES) ?></span>
<?php else: ?>
								<span class="ano"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item, ENT_NOQUOTES) ?></span>
<?php endif ;endif ?>
				</li>
			</ul>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ;
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
$_l->extends = '../@layout.latte' ?>

<?php $_ctrl = $control->getWidget("navigation"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render()  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
