<?php //netteCache[01]000394a:2:{s:4:"time";s:21:"0.85834300 1359736539";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:72:"C:\xamlite\htdocs\ems\app\modules\Sprava\templates\Prava\setRights.latte";i:2;i:1332694342;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Sprava\templates\Prava\setRights.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'vn9pyrl9ge')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb76936189f7_drobecky4')) { function _lb76936189f7_drobecky4($_l, $_args) { extract($_args)
?> » Nastavení přístupových práv<?php call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb89850d6833_drobecky5')) { function _lb89850d6833_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb4e08cbcf7b_content')) { function _lb4e08cbcf7b_content($_l, $_args) { extract($_args)
?>
<div class="manual">
<div class="detail">
	
<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<div style="font-size:medium; margin-bottom: 15px;">Zvolte ty funkce, na které má mít role "<?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitul, ENT_NOQUOTES) ?>" právo.</div>


<?php $form = $control["setRightsForm"]; echo $form->getElementPrototype()->addAttributes(array())->startTag() ?>

<!-- Jednoduché vykreslení chyb -->
<?php if ($form->hasErrors()): ?>
<ul class="errors">
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($form->errors) as $error): ?>
        <li><?php echo Nette\Templating\DefaultHelpers::escapeHtml($error, ENT_NOQUOTES) ?></li>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</ul>
<?php endif ?>

<?php $i = 0 ;$modul = "" ;$prese = "" ;$d = 0 ;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $item): $i++ ;if ($item->modul <> $modul): if (!$iterator->first): ?>
					<tr class="noborder">
						<td colspan="2"></td>
						<td colspan="2" class="tdcenter">
							<span><?php echo $form["save"]->getControl()->addAttributes(array('class'=>'button')) ?></span>
							<span><?php echo $form["cancel"]->getControl()->addAttributes(array('class'=>'button')) ?></span>
						</td>
					</tr>
				</table>
				</fieldset>
				<br />
<?php endif ;$d++ ?>
			<fieldset>
			<table style="position:relative;">
				<tr>
					<td colspan="2" style="background:#C1DAFF;color:#555;font-size:large;padding-left:10px;" title="Role">
						<span style="font-size:small;"><i>Role:</i></span>
						<b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitul, ENT_NOQUOTES) ?></b>
					</td>
					<td colspan="2" style="background:#C1DAFF;color:#091726;font-size:large;padding-left:10px;">
						<span style="font-size:small;"><i>Modul:</i></span>
						<b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->modul, ENT_NOQUOTES) ?></b>
						<span style="position:absolute; font-size:12px; float:right;right:12px; top:10px;" title="Zvolit/zrušit vše">Vše: <?php echo $form["chckall"]->getControl()->addAttributes(array()) ?></span>
					</td>
				</tr>
				<tr>
					<th style="background:#4FA3F7;color:#FFF;text-align:left;padding-left:10px;">Agenda</th>
					<th style="background:#4FA3F7;color:#FFF;text-align:left;padding-left:10px;">Funkce</th>
					<th style="background:#4FA3F7;color:#FFF;text-align:left;padding-left:10px;min-width:420px;">Popis</th>
					<th style="background:#4FA3F7;color:#FFF;">Povolit&nbsp;&nbsp;</th>
				</tr>
<?php $modul = $item->modul ;endif ?>
        <tr>
<?php if ($item->presenter<>$prese): ?>
				<td rowspan="<?php echo htmlSpecialChars($item->cntp) ?>" class="ntext" style="font-size:medium;vertical-align:text-top;">
					<b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->presenter, ENT_NOQUOTES) ?></b>
				</td>
<?php $prese = $item->presenter ;endif ?>
			<td class="ntext"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->funkce, ENT_NOQUOTES) ?>
<span class="mini">&nbsp;(<?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->id, ENT_NOQUOTES) ?>)</span></td>
			<td class="ntext" style="min-width:300px;"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->popis, ENT_NOQUOTES) ?></td>
			<td style="text-align:right;">
				<span title="Povolit - <?php echo htmlSpecialChars($item->popis) ?>">
					<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control['setRightsForm']['mpole']['yes_'.$item->id]->control, ENT_NOQUOTES) ?>

<?php $prvek = 'yes_'.$item->id ?>
										
				</span>
				&nbsp;
			</td>
        </tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		<tr class="noborder">
			<td colspan="2"></td>
			<td colspan="2" class="tdcenter">
				<span><?php echo $form["save"]->getControl()->addAttributes(array('class'=>'button')) ?></span>
				<span><?php echo $form["cancel"]->getControl()->addAttributes(array('class'=>'button')) ?></span>
			</td>
		</tr>
		</div>
</table>
			
<div><?php
foreach ($form->getComponents(TRUE, 'Nette\Forms\Controls\HiddenField') as $_tmp) echo $_tmp->getControl();
if (iterator_count($form->getComponents(TRUE, 'Nette\Forms\Controls\TextInput')) < 2) echo "<!--[if IE]><input type=IEbug disabled style=\"display:none\"><![endif]-->"
?></div>
<?php echo $form->getElementPrototype()->endTag() ?>

</div>
</div>

<script type='text/javascript'>

$(document).ready(
    function() {
        //clicking the parent checkbox should check or uncheck all child checkboxes
        $(".checkall").click(
            function() {
                $(this).parents('fieldset:eq(0)').find('.child').attr('checked', this.checked);
            }
        );
        //clicking the last unchecked or checked checkbox should check or uncheck the parent checkbox
        $('.child').click(
            function() {
                if ($(this).parents('fieldset:eq(0)').find('.checkall').attr('checked') == true && this.checked == false)
                    $(this).parents('fieldset:eq(0)').find('.checkall').attr('checked', false);
                if (this.checked == true) {
                    var flag = true;
                    $(this).parents('fieldset:eq(0)').find('.child').each(
	                    function() {
	                        if (this.checked == false)
	                            flag = false;
	                    }
                    );
                    $(this).parents('fieldset:eq(0)').find('.checkall').attr('checked', flag);
                }
            }
        );
    }
);


</script><?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbd95572363a_title')) { function _lbd95572363a_title($_l, $_args) { extract($_args)
?>
<h1><?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?>
 "<?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitul, ENT_NOQUOTES) ?>"</h1>
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
$_l->extends = 'default.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
