<?php //netteCache[01]000380a:2:{s:4:"time";s:21:"0.79806000 1359041692";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:58:"C:\xamlite\htdocs\ems\app\components\Navigation\menu.latte";i:2;i:1345459440;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\components\Navigation\menu.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'uh560x4w5k')
;//
// block menu
//
if (!function_exists($_l->blocks['menu'][] = '_lb90bfdd5ba6_menu')) { function _lb90bfdd5ba6_menu($_l, $_args) { extract($_args)
;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($children) as $item): ?>
	<li>
<?php if ($item->isMain): if (!$item->isHidden): if ($item->isCurrent): ?>
					<span class="main active" title="<?php echo htmlSpecialChars($item->tag) ?>
"><a href="<?php echo htmlSpecialChars($item->url) ?>"><strong><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->label, ENT_NOQUOTES) ?></strong></a></span>
<?php else: ?>
					<span class="main" title="<?php echo htmlSpecialChars($item->tag) ?>"><a href="<?php echo htmlSpecialChars($item->url) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->label, ENT_NOQUOTES) ?></a></span>
<?php endif ;endif ;else: if ($item->isCurrent): ?>
				<span class="nomain active"><a href="<?php echo htmlSpecialChars($item->url) ?>
" ><strong><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->label, ENT_NOQUOTES) ?></strong></a></span>
<?php else: ?>
				<span class="nomain"><a href="<?php echo htmlSpecialChars($item->url) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->label, ENT_NOQUOTES) ?></a></span>
<?php endif ;endif ;if ($renderChildren && count($item->getComponents()) > 0): ?>
			<ul>
<?php call_user_func(reset($_l->blocks['menu']), $_l, array('children' => $item->getComponents()) + $template->getParams()) ?>
			</ul>
<?php endif ?>
	</li>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</ul>
<?php
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
?>
<ul id="menu">
<?php if ($useHomepage): ?>
	<li>
<?php if ($homepage->isMain): if ($homepage->isCurrent): ?>
				<span class="main active"><a href="<?php echo htmlSpecialChars($homepage->url) ?>
"><img src="<?php echo htmlSpecialChars($basePath) ?>/images/logom.png" alt="<?php echo htmlSpecialChars($homepage->label) ?>" /></a></span>
<?php else: ?>
				<span class="main"><a href="<?php echo htmlSpecialChars($homepage->url) ?>"><img src="<?php echo htmlSpecialChars($basePath) ?>
/images/logom1.png" alt="<?php echo htmlSpecialChars($homepage->label) ?>" /></a></span>
<?php endif ;else: if ($homepage->isCurrent): ?>
				<span class="nomain active"><a href="<?php echo htmlSpecialChars($homepage->url) ?>
"><img src="<?php echo htmlSpecialChars($basePath) ?>/images/logom.png" alt="<?php echo htmlSpecialChars($homepage->label) ?>" /></a></span>
<?php else: ?>
				<span class="nomain"><a href="<?php echo htmlSpecialChars($homepage->url) ?>
"><img src="<?php echo htmlSpecialChars($basePath) ?>/images/logom1.png" alt="<?php echo htmlSpecialChars($homepage->label) ?>" /></a></span>
<?php endif ;endif ?>
	</li>
<?php endif ?>

<?php if (!$_l->extends) { call_user_func(reset($_l->blocks['menu']), $_l, get_defined_vars()); }  
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
