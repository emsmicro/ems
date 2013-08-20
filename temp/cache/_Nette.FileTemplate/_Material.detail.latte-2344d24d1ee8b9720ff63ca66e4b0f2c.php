<?php //netteCache[01]000393a:2:{s:4:"time";s:21:"0.73619000 1360332646";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:71:"C:\xamlite\htdocs\ems\app\modules\Nakup\templates\Material\detail.latte";i:2;i:1332941412;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Nakup\templates\Material\detail.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '5bnp422stm')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lbd6016419d4_drobecky4')) { function _lbd6016419d4_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lb63c2848476_drobecky5')) { function _lb63c2848476_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb851e1889cd_content')) { function _lb851e1889cd_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<?php $cond = $user->isAllowed('Material','add') || $user->isAllowed('Material','edit') ?>

<table class="grid">
<?php if ($cond): ?>
	<tr>
		<td class="takce"><?php if ($user->isAllowed('Material','add')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">Nová...</a><?php endif ?>
</td>
		<td class="takce"><?php if ($user->isAllowed('Material','edit')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($item->id))) ?>
">Změnit</a><?php endif ?>
</td>
	</tr>
<?php endif ?>

	<tr><th>Zkratka</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->zkratka, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Název</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->nazev, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Cena Kč</th><td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item->cena_kc, 4, ',', ' '), ENT_NOQUOTES) ?></td></tr>
	<tr><th>Cena CM</th><td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($item->cena_cm, 4, ',', ' '), ENT_NOQUOTES) ?></td></tr>
	<tr><th>K2 ID</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->id_k2, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Měrná jednotka</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->jednotka, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Kurz</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->kurz_nakupni, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Měna</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->mena, ENT_NOQUOTES) ?></td></tr>
</table>
<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb3c3f433773_title')) { function _lb3c3f433773_title($_l, $_args) { extract($_args)
?>
<h2>
<?php if ($item->id_k2>0): ?>
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->id_k2, ENT_NOQUOTES) ?> : 
<?php endif ?>
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
$_l->extends = 'default.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
