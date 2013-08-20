<?php //netteCache[01]000392a:2:{s:4:"time";s:21:"0.65849800 1359736619";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:70:"C:\xamlite\htdocs\ems\app\modules\Sprava\templates\Query\default.latte";i:2;i:1332238527;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Sprava\templates\Query\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'xpta9qhb19')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lbc8d44fd659_drobecky3')) { function _lbc8d44fd659_drobecky3($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb9523d79a32_drobecky4')) { function _lb9523d79a32_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb8d9bd33be5_content')) { function _lb8d9bd33be5_content($_l, $_args) { extract($_args)
?>

<h2><?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?></h2>
<span class="mini" style="position:relative;float:right;top:-20px;right:20px;"><i>Jen SQL příkaz SELECT</i></span>

<?php $form = $control["qForm"]; echo $form->getElementPrototype()->addAttributes(array('class' => 'hledat'))->startTag() ?>

<!-- Jednoduché vykreslení chyb -->
<?php if ($form->hasErrors()): ?>
<ul class="errors">
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($form->errors) as $error): ?>
    <li><?php echo Nette\Templating\DefaultHelpers::escapeHtml($error, ENT_NOQUOTES) ?></li>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</ul>
<?php endif ?>

	<div style="position:relative;">
		<span style="position:absolute;float:left; left:250px; width:500px; top:-40px;">
			<?php echo $form["gou"]->getControl()->addAttributes(array('class' => 'button default')) ?>

			<span style="margin-left: 150px;">
				<?php echo $form["tbs"]->getControl()->addAttributes(array('class' => 'button small')) ?>

				<?php echo $form["sch"]->getControl()->addAttributes(array('class' => 'button small')) ?>

			</span>
		</span>
				<?php echo $form["dotaz"]->getControl()->addAttributes(array('class' => 'text', 'autofocus' => TRUE, 'title' => 'Zadejte SQL dotaz SELECT')) ?>

	</div>
<div><?php
foreach ($form->getComponents(TRUE, 'Nette\Forms\Controls\HiddenField') as $_tmp) echo $_tmp->getControl();
if (iterator_count($form->getComponents(TRUE, 'Nette\Forms\Controls\TextInput')) < 2) echo "<!--[if IE]><input type=IEbug disabled style=\"display:none\"><![endif]-->"
?></div>
<?php echo $form->getElementPrototype()->endTag() ?>


<div id="centered">
	
<?php if (isset($head)): ?>
	<p></p>
	<table class="grid">
		<thead
		<tr>
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($head) as $item): ?>
				<th title="<?php echo htmlSpecialChars($iterator->counter) ?>"><i><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item, ENT_NOQUOTES) ?></i></th>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>

		</tr>
		</thead>
<?php endif ?>
		
<?php if (isset($data)): call_user_func(reset($_l->blocks['qdata']), $_l, get_defined_vars())  ?>

	</table>

	
<?php endif ?>

</div>
<p></p>
<?php
}}

//
// block qdata
//
if (!function_exists($_l->blocks['qdata'][] = '_lbf2ed6105aa_qdata')) { function _lbf2ed6105aa_qdata($_l, $_args) { extract($_args)
?>
		<tr>
<?php $ii = 0 ;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($data) as $item): if (is_array($item)): $ii = 0 ;call_user_func(reset($_l->blocks['qdata']), $_l, array('data' => $item) + $template->getParams()) ;else: $ii++ ;if (is_numeric($item) && gettype($item)<>'object'): $cislo = str_replace(',','.',$item) ?>
						<td class="tcislo">
<?php if (gettype($item)=='double'): ?>
								<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cislo, 6, ',', ''), ENT_NOQUOTES) ?>

<?php elseif (gettype($item)=='integer'): ?>
								<?php echo Nette\Templating\DefaultHelpers::escapeHtml($cislo, ENT_NOQUOTES) ?>

<?php elseif (strpos($cislo,',') !== false): ?>
								<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cislo, 4, ',', ''), ENT_NOQUOTES) ?>

<?php else: ?>
								<?php echo Nette\Templating\DefaultHelpers::escapeHtml($cislo, ENT_NOQUOTES) ?>

<?php endif ;elseif (gettype($item)=='object'): ?>
						<td>
							<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($item, '%d. %m. %Y'), ENT_NOQUOTES) ?>

<?php elseif (gettype($item)=='NULL'): ?>
						<td style="text-align:center;">
							<span class="mini"><i>null</i></span>
<?php else: ?>
						<td>
<?php if ($ii == $idc): ?>
								<a title="Data tabulky" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default", array($csql . $item))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item, ENT_NOQUOTES) ?></a>
<?php else: ?>
								<?php echo Nette\Templating\DefaultHelpers::escapeHtml($item, ENT_NOQUOTES) ?>

<?php endif ;endif ?>
					</td>
<?php endif ;$iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		</tr>
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
$_l->extends = '../Sprava/default.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
