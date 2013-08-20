<?php //netteCache[01]000385a:2:{s:4:"time";s:21:"0.64319500 1359798448";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:63:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\vzorce.latte";i:2;i:1359798445;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\vzorce.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'vxnn520cod')
;
// snippets support
if (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
$cond = $user->isAllowed('SetSazeb','addKalk') || $user->isAllowed('SetSazeb','editKalk') || $user->isAllowed('SetSazeb','deleteKalk') ?>

<div class="kvzorce">
	<h2>Kalkulační vzorce    
<?php if ($isakce): ?>
		<span class="setadd akce" title="Nový kalkulační vzorec ...">
<?php if ($user->isAllowed('SetSazeb','addKalk')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("addKalk")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
<?php endif ?>
	</h2>
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($vzorce) as $it): $light = "" ;if ($vzorec == $it->id): $light = "light" ;endif ?>
	<div class="vzorec <?php echo htmlSpecialChars($light) ?>">
		<span class="iditemin" style="font-size:medium;" title="id: <?php echo htmlSpecialChars($it->id) ?>
"><b> <?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->zkratka, ENT_NOQUOTES) ?> </b></span>
		<span class="nazev"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->nazev, ENT_NOQUOTES) ?></span>
<?php if ($isakce): ?>
		<span class="akce">
			<span class="setedit" title="Změnit">
<?php if ($user->isAllowed('SetSazeb','editKalk')): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("editKalk", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
			</span>
			<span class="setdel" title="Odstranit">
<?php if ($user->isAllowed('SetSazeb','deleteKalk')): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("deleteKalk", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
			</span>
		</span>
<?php endif ?>
		<div class="popis"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->popis, ENT_NOQUOTES) ?></div>
	</div>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>

</div>