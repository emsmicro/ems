<?php //netteCache[01]000391a:2:{s:4:"time";s:21:"0.59374900 1359122857";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:69:"C:\xamlite\htdocs\ems\app\modules\Nakup\templates\Nakup\default.latte";i:2;i:1323273112;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Nakup\templates\Nakup\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '5yc5zrq3sr')
;//
// block drobecky2
//
if (!function_exists($_l->blocks['drobecky2'][] = '_lbeb65d90186_drobecky2')) { function _lbeb65d90186_drobecky2($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Nakup:default")) ?>
">Nákup</a><?php call_user_func(reset($_l->blocks['drobecky3']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lb887429cc9d_drobecky3')) { function _lb887429cc9d_drobecky3($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb23591bfc75_content')) { function _lb23591bfc75_content($_l, $_args) { extract($_args)
;call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<div class="fpanel">
	<div class="dpanel">
		<span class="big"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($bezcen->pocet, ENT_NOQUOTES) ?>
/<?php echo Nette\Templating\DefaultHelpers::escapeHtml($bezcen->celkem, ENT_NOQUOTES) ?></span><br />
		<span class="small">Mater. položky: neoceněné/celkem</span>
	</div>
</div>

<div class="kolaps">
	<div >
		<div class="kol-1">
			<h3>Produkty, na kterých nebyla započata práce</h3>
			<div>
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('../../../Obchod/templates/Produkt/prods_list.latte', array('products' => $nezapocate) + $template->getParams(), $_l->templates['5yc5zrq3sr'])->render() ?>
			</div>
		</div>
		<div class="kol-2">
			<h3>Produkty, u kterých nebylo dokončeno ocenění</h3>
			<div>
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('../../../Obchod/templates/Produkt/prods_list.latte', array('products' => $neocenene) + $template->getParams(), $_l->templates['5yc5zrq3sr'])->render() ?>
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
if (!function_exists($_l->blocks['title'][] = '_lb83945056e3_title')) { function _lb83945056e3_title($_l, $_args) { extract($_args)
?>
<h1><?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?></h1>
<?php
}}

//
// block todolist
//
if (!function_exists($_l->blocks['todolist'][] = '_lbe087dcaacd_todolist')) { function _lbe087dcaacd_todolist($_l, $_args) { extract($_args)
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
