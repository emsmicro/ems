<?php //netteCache[01]000397a:2:{s:4:"time";s:21:"0.34131500 1359191741";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:75:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Produkt\prods_list.latte";i:2;i:1331626384;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Produkt\prods_list.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '77c32hcri1')
;
// snippets support
if (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
?>


	<table class="grid">
	<tr>
		<th>Zákazník</th>
		<th>Nabídka</th>
		<th title="Číslo produktu">idP</th>
		<th>Název produktu</th>
		<th>Dávka [ks]</th>
		<th>≈ ks/rok</th>
		<th>Poslední status <span class="mini">(detail pod kursorem)</span></th>
	</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($products) as $ip): ?>
		<tr>
			<td title="<?php echo htmlSpecialChars($ip->firma) ?>">
<?php if ($user->isAllowed('Firma','detail')): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Firma:detail", array($ip->idf))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($ip->zfirma, ENT_NOQUOTES) ?></a>
<?php endif ;if (!$user->isAllowed('Firma','detail')): ?>
				<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($ip->zfirma, ENT_NOQUOTES) ?></span>
<?php endif ?>
			</td>
			<td>
<?php if ($user->isAllowed('Nabidka','detail')): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Nabidka:detail", array($ip->idn))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($ip->nabidka, ENT_NOQUOTES) ?></a>
<?php endif ;if (!$user->isAllowed('Nabidka','detail')): ?>
				<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($ip->nabidka, ENT_NOQUOTES) ?></span>
<?php endif ?>
			</td>
			<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($ip->id, ENT_NOQUOTES) ?></td>
			<td><?php if ($user->isAllowed($goPresenter,'default')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link($goPresenter, array($ip->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($ip->nazev, ENT_NOQUOTES) ?>
</a><?php endif ?>
</td>
			<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($ip->davka, 0, ',', ' '), ENT_NOQUOTES) ?></td>
			<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($ip->ks, 0, ',', ' '), ENT_NOQUOTES) ?></td>

			<td title="<?php echo htmlSpecialChars($ip->nstav) ?>, <?php echo htmlSpecialChars($ip->username) ?>
, <?php echo htmlSpecialChars($template->date($ip->datzmeny, '%d.%m.%Y %H:%I:%S')) ?>">
<?php if ($ip->id_stav < 4 || $ip->id_stav == null): ?>
						<span class="status sx0" >
<?php endif ;if ($ip->id_stav > 3 && $ip->id_stav < 7): ?>
						<span class="status sx1">
<?php endif ;if ($ip->id_stav == 7): ?>
						<span class="status sx2">
<?php endif ?>

					<span class="mini"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($ip->stav, ENT_NOQUOTES) ?></span>
<?php if (!$ip->username==null): ?>
						<span class="mini">(<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($ip->datzmeny, '%d.%m.%Y'), ENT_NOQUOTES) ?>)</span>
<?php endif ?>
					</span>
			</td>		
		</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
	</table>

