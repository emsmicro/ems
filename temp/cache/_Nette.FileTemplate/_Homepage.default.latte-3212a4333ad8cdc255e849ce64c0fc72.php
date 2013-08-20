<?php //netteCache[01]000393a:2:{s:4:"time";s:21:"0.43812600 1359096224";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:71:"C:\xamlite\htdocs\ems\app\modules\Base\templates\Homepage\default.latte";i:2;i:1323272444;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Base\templates\Homepage\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'sh2j325rkm')
;//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb7b3cc2266e_content')) { function _lb7b3cc2266e_content($_l, $_args) { extract($_args)
;call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<?php if ($islogin): ?>
	<div class="logref">
	<h4>
		<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Sign:in")) ?>
"><span title="Přihlásit se">Do systému se musíte přihlásit zde ...</span></a>
	</h4>
	</div>
<?php endif ?>

<div class="kolaps">

	<div class="kol-0">
		<h2>Jak postupovat při tvorbě nabídky?</h2>
		<div class="centered flowchart">
			<img src="<?php echo htmlSpecialChars($basePath) ?>/images/flow_1.png" />
<?php if ($user->isAllowed('Nabidka','add')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Nabidka:add")) ?>
"><div class="newoffer"></div></a>
<?php endif ;if ($user->isAllowed('Produkt','add')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:add")) ?>
"><div class="newproduct"></div></a>
<?php endif ;if ($aproduct>0 && $user->isAllowed('Import','default')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Import:default")) ?>
"><div class="bomimport"></div></a>
<?php endif ;if ($aproduct>0 && $user->isAllowed('Material','default')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Material:default")) ?>
"><div class="k2material"></div></a>
<?php endif ;if ($aproduct>0 && $user->isAllowed('Operace','default')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Operace:default")) ?>
"><div class="tpvoper"></div></a>
<?php endif ;if ($aproduct>0 && $user->isAllowed('Operace','addGroup')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Operace:addGroup")) ?>
"><div class="tpvgroup"></div></a>
<?php endif ;if ($aproduct>0 && $user->isAllowed('Produkt','detail')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:detail", array($aproduct))) ?>
"><div class="detprod"></div></a>
<?php endif ;if ($aoffer>0 && $user->isAllowed('Nabidka','toPdf')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Nabidka:toPdf", array($aoffer))) ?>
"><div class="detoffer"></div></a>
<?php endif ?>
		</div>
	</div>

<?php if ($is_todo): ?>
		<div class="kol-1">
			<h2><?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitle, ENT_NOQUOTES) ?></h2>
			<div class="todod">
<?php call_user_func(reset($_l->blocks['todolist']), $_l, get_defined_vars())  ?>
			</div>
		</div>
<?php endif ?>

</div>

<script type='text/javascript' src='<?php echo htmlSpecialChars($basePath, ENT_QUOTES) ?>/js/jquery.cookie.js'></script>
<script type='text/javascript' src='<?php echo htmlSpecialChars($basePath, ENT_QUOTES) ?>/js/jquery.collapse.js'></script>
<script type='text/javascript'>

            $(".kol-0, .kol-1").collapse({ show: function(){ 
                    this.animate({ 
                        opacity: 'toggle',
                        height: 'toggle'
                     }, 300);
					
                 },
				head: 'h2',
                hide : function() { 
                    this.fadeOut();
                 }
             });

</script>
<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbf502c1a5c9_title')) { function _lbf502c1a5c9_title($_l, $_args) { extract($_args)
?>
<h1><?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?></h1>
<?php
}}

//
// block todolist
//
if (!function_exists($_l->blocks['todolist'][] = '_lbffd1b31db1_todolist')) { function _lbffd1b31db1_todolist($_l, $_args) { extract($_args)
;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($todos) as $oblast=>$item): ?>
					<ul>
						<li id="todo"><span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($oblast, ENT_NOQUOTES) ?></span>
<?php if (is_array($item)): call_user_func(reset($_l->blocks['todolist']), $_l, array('todos' => $item) + $template->getParams()) ;else: if ($item <> ''): if ($user->isAllowed($item,'default')): ?>
										<span class="ref"><a title="Přejít" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("{$item}:default")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a></span>
<?php endif ;endif ;endif ?>
						</li>
					</ul>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ;
}}

//
// end of blocks
//

// template extending and snippets support

$_l->extends = empty($template->_extends) ? FALSE : $template->_extends; unset($_extends, $template->_extends);


if ($_l->extends) {
	ob_start();
} elseif (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
if (!$_l->extends) { call_user_func(reset($_l->blocks['content']), $_l, get_defined_vars()); }  
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
