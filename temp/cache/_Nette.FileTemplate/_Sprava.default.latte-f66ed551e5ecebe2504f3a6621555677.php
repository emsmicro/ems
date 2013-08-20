<?php //netteCache[01]000393a:2:{s:4:"time";s:21:"0.48853600 1359541784";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:71:"C:\xamlite\htdocs\ems\app\modules\Sprava\templates\Sprava\default.latte";i:2;i:1323273870;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Sprava\templates\Sprava\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '7875m65lbl')
;//
// block drobecky2
//
if (!function_exists($_l->blocks['drobecky2'][] = '_lb7166e687f4_drobecky2')) { function _lb7166e687f4_drobecky2($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Sprava:default")) ?>
">Správa</a><?php call_user_func(reset($_l->blocks['drobecky3']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lbd956afac9e_drobecky3')) { function _lbd956afac9e_drobecky3($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb46fd88710b_content')) { function _lb46fd88710b_content($_l, $_args) { extract($_args)
;call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<div class="kolaps">
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

            $(".kol-0").collapse({ show: function(){ 
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

</script><?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb08c99ee315_title')) { function _lb08c99ee315_title($_l, $_args) { extract($_args)
?>
<h1>Stránka správy systému</h1>
<?php
}}

//
// block todolist
//
if (!function_exists($_l->blocks['todolist'][] = '_lbf325e1fee8_todolist')) { function _lbf325e1fee8_todolist($_l, $_args) { extract($_args)
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
