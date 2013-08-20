<?php //netteCache[01]000385a:2:{s:4:"time";s:21:"0.02154900 1359714070";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:63:"C:\xamlite\htdocs\ems\app\modules\Nakup\templates\K2\find.latte";i:2;i:1358937980;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Nakup\templates\K2\find.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'nglstkcpei')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb7f9d98cb19_drobecky4')) { function _lb7f9d98cb19_drobecky4($_l, $_args) { extract($_args)
?> » Hledání v K2<?php call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb2e4316325b_drobecky5')) { function _lb2e4316325b_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbb92d067d08_content')) { function _lbb92d067d08_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>


<?php $form = $control["findForm"]; echo $form->getElementPrototype()->addAttributes(array('class' => 'hledat'))->startTag() ?>

<!-- Jednoduché vykreslení chyb -->
<?php if ($form->hasErrors()): ?>
<ul class="errors">
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($form->errors) as $error): ?>
    <li><?php echo Nette\Templating\DefaultHelpers::escapeHtml($error, ENT_NOQUOTES) ?></li>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</ul>
<?php endif ?>

	<table>
	<tr>
		<td><?php echo $form["nazev"]->getControl()->addAttributes(array('class' => 'text', 'autofocus' => TRUE)) ?></td>
		<td><?php echo $form["find"]->getControl()->addAttributes(array('class' => 'button default')) ?></td>
		<td><?php echo $form["cancel"]->getControl()->addAttributes(array('class' => 'button')) ?></td>
	</tr>
	</table>
<div><?php
foreach ($form->getComponents(TRUE, 'Nette\Forms\Controls\HiddenField') as $_tmp) echo $_tmp->getControl();
if (iterator_count($form->getComponents(TRUE, 'Nette\Forms\Controls\TextInput')) < 2) echo "<!--[if IE]><input type=IEbug disabled style=\"display:none\"><![endif]-->"
?></div>
<?php echo $form->getElementPrototype()->endTag() ?>



<?php if (isset($items)): ?>
	<p></p>
<?php if (count($items)>0): ?>
		<table class="grid">
		<tr>
			<th>ID</th>
			<th>Zkratka</th>
			<th>Název</th>
			<th>Dod. cena</th>
			<th>Dodavatel</th>
			<td class="takce">Výběr</td>
		</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $it): ?>
			<tr>
				<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->idz, ENT_NOQUOTES) ?></td>
				<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->zkratka, ENT_NOQUOTES) ?></td>
				<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->nazev, ENT_NOQUOTES) ?></td>
				<td class="tcislo" title="<?php echo htmlSpecialChars($template->date($it->datum, '%d.%m.%Y')) ?>
, <?php echo htmlSpecialChars($template->number($it->mnoz, 0, ',', ' ')) ?> ks">
<?php if ($it->cena>0): ?>
							<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->cena, 4, ',', ' '), ENT_NOQUOTES) ?>

							&nbsp;<?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->mena, ENT_NOQUOTES) ?>

<?php else: ?>
							<i>není</i>
<?php endif ?>
				</td>
				<td title="<?php echo htmlSpecialChars($it->dodavatel) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->ZFir, ENT_NOQUOTES) ?></td>
				<td class="takce">
<?php if ($actidp>0 && $it->cena>0): ?>
						<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("select", array($idm, $it->idz, $it->idc))) ?>
">&#x25C0 Zvolit&nbsp;</a>
<?php endif ;if ($it->cena>0): if ($user->isAllowed('K2','prices')): ?>
						<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("prices", array($idm, $it->idz))) ?>
">&nbsp;Ceny &#x25B6;</a>
<?php endif ;else: if ($user->isAllowed('K2','prices')): ?>
						<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("prices", array($idm, $it->idz))) ?>
">&nbsp;Posl. nákupy &#x25B6;</a>
<?php endif ;endif ?>
				</td>
			</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		</table>
		<p></p>
<?php endif ?>

<?php else: if ($hledam<>''): ?>
		<div class="flash exclamation">
		"<?php echo Nette\Templating\DefaultHelpers::escapeHtml($hledam, ENT_NOQUOTES) ?>" NENALEZENO!
		</div>
<?php endif ;endif ?>

<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lba24b63314a_title')) { function _lba24b63314a_title($_l, $_args) { extract($_args)
?>
<h2>
		<?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?>

</h2>
<?php
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
$_l->extends = '../Material/default.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
