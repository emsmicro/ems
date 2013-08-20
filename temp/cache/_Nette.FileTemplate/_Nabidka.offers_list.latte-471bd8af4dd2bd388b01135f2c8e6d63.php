<?php //netteCache[01]000398a:2:{s:4:"time";s:21:"0.11773200 1359122090";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:76:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Nabidka\offers_list.latte";i:2;i:1331383476;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Nabidka\offers_list.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'ptku80265i')
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
		<th>Č. nab.</th>
		<th style="min-width:150px;">Nabídka</th>
		<th>Založeno</th>
		<th>Vyřízení do</th>
<?php if ($user->isAllowed('Nabidka','toPdf')): ?>
		<th>PDF</th>
<?php endif ?>
		<th colspan="2">Status nabídky</th>
	</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $it): ?>
		<tr>
			<td title="<?php echo htmlSpecialChars($it->firma) ?>"><?php if ($user->isAllowed('Firma','detail')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Firma:detail", array($it->id_firmy))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->zfirma, ENT_NOQUOTES) ?>
</a><?php endif ?>
</td>
			<td class="cislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->id, ENT_NOQUOTES) ?>
/<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->prij_datum, '%Y'), ENT_NOQUOTES) ?></td>
			<td><?php if ($user->isAllowed('Nabidka','detail')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Nabidka:detail", array($it->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->popis, ENT_NOQUOTES) ?>
</a><?php endif ?>
</td>
			<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->prij_datum, '%d.%m.%Y'), ENT_NOQUOTES) ?></td>
			<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($it->pozad_datum, '%d.%m.%Y'), ENT_NOQUOTES) ?></td>
<?php if ($user->isAllowed('Nabidka','toPdf')): ?>
			<td class="iconpdf">
				<a  title="Export do PDF" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Nabidka:toPdf", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;</a>
			</td>
<?php endif ?>

			<td title="<?php echo htmlSpecialChars($it->nstav) ?>, <?php echo htmlSpecialChars($it->username) ?>
, <?php echo htmlSpecialChars($template->date($it->datzmeny, '%d.%m.%Y %H:%I:%S')) ?>">
<?php if ($it->id_stav == 1): ?>
					<span class="status s1" title="<?php echo htmlSpecialChars($it->nstav) ?>">
<?php endif ;if ($it->id_stav > 1 && $it->id_stav < 5): ?>
					<span class="status s2" title="<?php echo htmlSpecialChars($it->nstav) ?>">
<?php endif ;if ($it->id_stav == 5): ?>
					<span class="status s3" title="<?php echo htmlSpecialChars($it->nstav) ?>">
<?php endif ;if ($it->id_stav == 6): ?>
					<span class="status s4" title="<?php echo htmlSpecialChars($it->nstav) ?>">
<?php endif ;if ($it->id_stav == 7): ?>
					<span class="status s5" title="<?php echo htmlSpecialChars($it->nstav) ?>">
<?php endif ?>
					<span class="mini" title="<?php echo htmlSpecialChars($it->nstav) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->stav, ENT_NOQUOTES) ?></span>
				</span>
			</td>		
		</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
	</table>

