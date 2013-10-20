<?php //netteCache[01]000387a:2:{s:4:"time";s:21:"0.57653100 1382277695";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:65:"C:\xampp\htdocs\ems\app\components\UserFilter\FilterControl.latte";i:2;i:1382277694;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xampp\htdocs\ems\app\components\UserFilter\FilterControl.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '8l2zg02gwt')
;
// snippets support
if (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
?>

<div style="position:absolute;z-index:2;float:right;top:-58px;left:635px;padding:0;margin:0;">
	
<?php $form = $control["filterForm"]; echo $form->getElementPrototype()->addAttributes(array('class' => 'hledat', 'autocomplete' => "off"))->startTag() ?>
		<?php echo $form["filter"]->getControl()->addAttributes(array('class' => 'text', 'autofocus' => TRUE, 'onClick' => 'this.select();', 'style' => 'background:#FFF;padding-left:5px;')) ?>

		<?php echo $form["setfilter"]->getControl()->addAttributes(array('class' => 'button', 'style' => 'min-width:40px;max-width:50px;left:-14px;font-weight:normal;')) ?>

<div><?php
foreach ($form->getComponents(TRUE, 'Nette\Forms\Controls\HiddenField') as $_tmp) echo $_tmp->getControl();
if (iterator_count($form->getComponents(TRUE, 'Nette\Forms\Controls\TextInput')) < 2) echo "<!--[if IE]><input type=IEbug disabled style=\"display:none\"><![endif]-->"
?></div>
<?php echo $form->getElementPrototype()->endTag() ?>
	
</div>
