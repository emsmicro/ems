<?php //netteCache[01]000387a:2:{s:4:"time";s:21:"0.14499800 1359214644";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:65:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Tpv\default.latte";i:2;i:1323274014;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Tpv\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '7c3itek8gf')
;//
// block drobecky2
//
if (!function_exists($_l->blocks['drobecky2'][] = '_lb151f1bf5d3_drobecky2')) { function _lb151f1bf5d3_drobecky2($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Tpv:default")) ?>
">TPV</a><?php call_user_func(reset($_l->blocks['drobecky3']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lbb396f52450_drobecky3')) { function _lbb396f52450_drobecky3($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb0ae43f4664_content')) { function _lb0ae43f4664_content($_l, $_args) { extract($_args)
;call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>


<div class="kolaps">
	<div >
		<div class="kol-1">
			<h3>Produkty, na kterých nebyla započata práce na TPV</h3>
			<div>
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('../../../Obchod/templates/Produkt/prods_list.latte', array('products' => $nezapocate) + $template->getParams(), $_l->templates['7c3itek8gf'])->render() ?>
			</div>
		</div>
		<div class="kol-2">
			<h3>Produkty, u kterých nebylo TPV dokončeno</h3>
			<div>
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('../../../Obchod/templates/Produkt/prods_list.latte', array('products' => $nedokoncene) + $template->getParams(), $_l->templates['7c3itek8gf'])->render() ?>
			</div>
		</div>
	</div>


<?php if ($is_todo): ?>
		<div class="kol-0">
			<h3><?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitle, ENT_NOQUOTES) ?></h3>
			<div class="todod">
<?php call_user_func(reset($_l->blocks['todolist']), $_l, get_defined_vars())  ?>
			</div>
		</div>
<?php endif ?>
</div>

<script type='text/javascript' src='<?php echo htmlSpecialChars($basePath, ENT_QUOTES) ?>/js/jquery.cookie.js'></script>
<script type='text/javascript' src='<?php echo htmlSpecialChars($basePath, ENT_QUOTES) ?>/js/jquery.collapse.js'></script>
<script type='text/javascript'>

            $(".kol-0, .kol-1, .kol-2").collapse({ show: function(){ 
                    this.animate({ 
                        opacity: 'toggle',
                        height: 'toggle'
                     }, 300);
					
                 },
				head: 'h3',
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
if (!function_exists($_l->blocks['title'][] = '_lb1ff8dab802_title')) { function _lb1ff8dab802_title($_l, $_args) { extract($_args)
?>
<h1><?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?></h1>
<?php
}}

//
// block todolist
//
if (!function_exists($_l->blocks['todolist'][] = '_lb69d94f09b3_todolist')) { function _lb69d94f09b3_todolist($_l, $_args) { extract($_args)
;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($todos) as $oblast=>$item): ?>
					<ul>
						<li id="todo"><span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($oblast, ENT_NOQUOTES) ?></span>
<?php if (is_array($item)): call_user_func(reset($_l->blocks['todolist']), $_l, array('todos' => $item) + $template->getParams()) ;else: if ($item <> ''): if ($user->isAllowed($item)): ?>
										<span class="ref"><a title="Přejít" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("{$item}")) ?>
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

$_l->extends = true; unset($_extends, $template->_extends);


if ($_l->extends) {
	ob_start();
} elseif (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
$_l->extends = '../@layout.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
