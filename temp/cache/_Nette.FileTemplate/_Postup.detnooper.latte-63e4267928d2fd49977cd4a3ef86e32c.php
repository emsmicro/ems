<?php //netteCache[01]000392a:2:{s:4:"time";s:21:"0.83425300 1360838375";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:70:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Postup\detnooper.latte";i:2;i:1360838244;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Postup\detnooper.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'zu7vbpy6ms')
;
// snippets support
if (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
$cond = $user->isAllowed('Operace','add') || $user->isAllowed('Operace','edit') || $user->isAllowed('Operace','delete') ?>


<table class="grid" style="width:99%;margin: 0 5px 0 5px;">
<tr>
	<th>#</th>
	<th>Popis</th>
	<th class="cislo">Ta [min]</th>
	<th class="cislo">Tp [min]</th>
	<th class="cislo">Náklad [Kč]</th>
	
<?php if ($cond): ?>
	<td colspan="2" class="takce">
		<span class="setadd" title="Přidat novou operaci"><?php if ($user->isAllowed('Operace','add') and $unlocked): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Operace:add", array(1))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
	</td>
<?php endif ?>
	
</tr>
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $item): ?>
<tr>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->oporadi, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->popis, ENT_NOQUOTES) ?></td>
<?php if ($item->ta_cas <> 0): ?>
	<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item->ta_cas, 2, ',', ' '), ENT_NOQUOTES) ?></td>
<?php endif ;if ($item->ta_cas == 0): ?>
	<td></td>
<?php endif ;if ($item->tp_cas <> 0): ?>
	<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item->tp_cas, 2, ',', ' '), ENT_NOQUOTES) ?></td>
<?php endif ;if ($item->tp_cas == 0): ?>
	<td></td>
<?php endif ;if ($item->naklad <> 0): ?>
	<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item->naklad, 2, ',', ' '), ENT_NOQUOTES) ?></td>
<?php endif ;if ($item->naklad == 0): ?>
	<td></td>
<?php endif ?>
	
<?php if ($user->isAllowed('Operace','tcalc')): ?>
	<td class="takce" style="padding:0;" title="Kalkulovat čas">
<?php if ($item->pocet>0): ?>
		<span class="setcalc"><?php if ($user->isAllowed('Operace','tcalc')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Operace:tcalc", array($item->id, 1))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
<?php endif ?>
	</td>
<?php endif ?>
	
<?php if ($cond and $unlocked): ?>
	<td class="takce" style="padding:2px;border-left:none;">
		<span class="setedit" title="Změnit"><?php if ($user->isAllowed('Operace','edit')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Operace:edit", array($item->id, 1))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
		<span class="setdel" title="Odstranit"><?php if ($user->isAllowed('Operace','delete')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Operace:delete", array($item->id, 1))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
	</td>
<?php endif ?>
	
	
	
</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</table>

