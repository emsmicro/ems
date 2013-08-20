<?php //netteCache[01]000384a:2:{s:4:"time";s:21:"0.99388800 1359123151";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:62:"C:\xamlite\htdocs\ems\app\modules\Base\templates\Sign\in.latte";i:2;i:1333549984;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Base\templates\Sign\in.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'mtfmbzfimy')
;//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb4dbeae4792_content')) { function _lb4dbeae4792_content($_l, $_args) { extract($_args)
?>
<div style="margin-left:220px;">
<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

	<div style="position:relative;top:10px;">
<?php $form = $control["signInForm"]; echo $form->getElementPrototype()->addAttributes(array('class' => 'sign'))->startTag() ?>

		<table>

			<tr><td><?php echo $form["username"]->getControl()->addAttributes(array('class' => 'text', 'autofocus' => TRUE)) ?></td></tr>
			<tr><td><?php echo $form["password"]->getControl()->addAttributes(array('class' => 'text')) ?></td></tr>
			<tr><td><center><?php echo $form["send"]->getControl()->addAttributes(array('class' => 'button default')) ?></center></td></tr>
		</tr>
		</table>

		<img src="<?php echo htmlSpecialChars($basePath) ?>/images/login.png" 
			 style="position:absolute; top: 20px; left: 220px;"
			 />
	</div>
<div><?php
foreach ($form->getComponents(TRUE, 'Nette\Forms\Controls\HiddenField') as $_tmp) echo $_tmp->getControl();
if (iterator_count($form->getComponents(TRUE, 'Nette\Forms\Controls\TextInput')) < 2) echo "<!--[if IE]><input type=IEbug disabled style=\"display:none\"><![endif]-->"
?></div>
<?php echo $form->getElementPrototype()->endTag() ?>
</div>
<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb1a71213f0a_title')) { function _lb1a71213f0a_title($_l, $_args) { extract($_args)
?>
	<h1>Přihlášení do systému</h1>
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
$_l->extends = '../@layout.latte' ;$robots = 'noindex' ?>

<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
