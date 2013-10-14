<?php //netteCache[01]000389a:2:{s:4:"time";s:21:"0.00936400 1381571643";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:67:"C:\xamlite\htdocs\ems\app\components\VisualPaginator\template.latte";i:2;i:1381571609;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\components\VisualPaginator\template.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'oot59ctzv0')
;
// snippets support
if (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
if ($paginator->pageCount > 1): ?>
<div class="paginator">
<?php if ($paginator->isFirst()): ?>
	<span class="button">« Předchozí</span>
<?php else: ?>
	<a href="<?php echo htmlSpecialChars($control->link("this", array('page' => $paginator->page - 1))) ?>">« Předchozí</a>
<?php endif ?>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($steps) as $step): if ($step == $paginator->page): ?>
		<span class="current"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($step, ENT_NOQUOTES) ?></span>
<?php else: ?>
		<a href="<?php echo htmlSpecialChars($control->link("this", array('page' => $step))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($step, ENT_NOQUOTES) ?></a>
<?php endif ?>
	<?php if ($iterator->nextValue > $step + 1): ?><span>…</span><?php endif ?>

<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>

<?php if ($paginator->isLast()): ?>
	<span class="button">Následující »</span>
<?php else: ?>
	<a href="<?php echo htmlSpecialChars($control->link("this", array('page' => $paginator->page + 1))) ?>">Následující »</a>
<?php endif ?>
</div>
<?php endif ;
