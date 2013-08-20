<?php //netteCache[01]000395a:2:{s:4:"time";s:21:"0.98011000 1360070350";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:73:"C:\xamlite\htdocs\ems\app\modules\Sprava\templates\Ciselnik\default.latte";i:2;i:1320497586;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Sprava\templates\Ciselnik\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'af44ytjbue')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lbe973ea3a70_drobecky3')) { function _lbe973ea3a70_drobecky3($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default")) ?>
">Číselníky</a><?php call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb8e6caf8be4_drobecky4')) { function _lb8e6caf8be4_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lba6df5e6536_content')) { function _lba6df5e6536_content($_l, $_args) { extract($_args)
?>


<?php call_user_func(reset($_l->blocks['title1']), $_l, get_defined_vars())  ?>

<table class="grid">
<tr>
	<th>Id</th>
	<th>Zkratka</th>
	<th>Název</th>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($dfirem) as $df): ?>
<tr>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($df->id, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($df->zkratka, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($df->nazev, ENT_NOQUOTES) ?></td>
</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</table>

<?php call_user_func(reset($_l->blocks['title2']), $_l, get_defined_vars())  ?>

<table class="grid">
<tr>
	<th>Id</th>
	<th>Zkratka</th>
	<th>Název</th>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($doperaci) as $do): ?>
<tr>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($do->id, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($do->zkratka, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($do->nazev, ENT_NOQUOTES) ?></td>
</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</table>

<?php call_user_func(reset($_l->blocks['title3']), $_l, get_defined_vars())  ?>

<table class="grid">
<tr>
	<th>Id</th>
	<th>Zkratka</th>
	<th>Koeficient</th>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($merjed) as $mj): ?>
<tr>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($mj->id, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($mj->zkratka, ENT_NOQUOTES) ?></td>
<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($mj->koeficient, 4, ',', ' '), ENT_NOQUOTES) ?></td>
</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</table>


<?php call_user_func(reset($_l->blocks['title5']), $_l, get_defined_vars())  ?>

<table class="grid">
<tr>
	<th>Id</th>
	<th>Název</th>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($osloveni) as $os): ?>
<tr>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($os->id, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($os->nazev, ENT_NOQUOTES) ?></td>
</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</table>

<?php call_user_func(reset($_l->blocks['title6']), $_l, get_defined_vars())  ?>

<table class="grid">
<tr>
	<th>Id</th>
	<th>Název</th>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($role) as $r): ?>
<tr>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($r->id, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($r->nazev, ENT_NOQUOTES) ?></td>
</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</table>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<table class="grid">
<tr>
	<th>Id</th>
	<th>Zkratka</th>
	<th>Název</th>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($tcen) as $tc): ?>
<tr>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($tc->id, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($tc->zkratka, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($tc->nazev, ENT_NOQUOTES) ?></td>
</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</table>


<?php call_user_func(reset($_l->blocks['title7']), $_l, get_defined_vars())  ?>

<table class="grid">
<tr>
	<th>Id</th>
	<th>Zkratka</th>
	<th>Název</th>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($tnakladu) as $tn): ?>
<tr>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($tn->id, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($tn->zkratka, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($tn->nazev, ENT_NOQUOTES) ?></td>
</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</table>

<?php call_user_func(reset($_l->blocks['title9']), $_l, get_defined_vars())  ?>

<table class="grid">
<tr>
	<th>Id</th>
	<th>Název</th>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($tkontaktu) as $tk): ?>
<tr>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($tk->id, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($tk->nazev, ENT_NOQUOTES) ?></td>
</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</table>

<?php call_user_func(reset($_l->blocks['title8']), $_l, get_defined_vars())  ?>

<table class="grid">
<tr>
	<th>Id</th>
	<th>Zkratka</th>
	<th>Název</th>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($tsazeb) as $ts): ?>
<tr>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($ts->id, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($ts->zkratka, ENT_NOQUOTES) ?></td>
	<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($ts->nazev, ENT_NOQUOTES) ?></td>
</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</table>

<?php
}}

//
// block title1
//
if (!function_exists($_l->blocks['title1'][] = '_lb7e99f9263b_title1')) { function _lb7e99f9263b_title1($_l, $_args) { extract($_args)
?>
<h2>Druhy firem</h2>
<?php
}}

//
// block title2
//
if (!function_exists($_l->blocks['title2'][] = '_lb93f9b7d381_title2')) { function _lb93f9b7d381_title2($_l, $_args) { extract($_args)
?>
<h2>Druhy operací</h2>
<?php
}}

//
// block title3
//
if (!function_exists($_l->blocks['title3'][] = '_lb7c35c67356_title3')) { function _lb7c35c67356_title3($_l, $_args) { extract($_args)
?>
<h2>Měrné jednotky</h2>
<?php
}}

//
// block title5
//
if (!function_exists($_l->blocks['title5'][] = '_lb01e03e151b_title5')) { function _lb01e03e151b_title5($_l, $_args) { extract($_args)
?>
<h2>Oslovení</h2>
<?php
}}

//
// block title6
//
if (!function_exists($_l->blocks['title6'][] = '_lb3d5de12cce_title6')) { function _lb3d5de12cce_title6($_l, $_args) { extract($_args)
?>
<h2>Role</h2>
<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb34a8b5da1e_title')) { function _lb34a8b5da1e_title($_l, $_args) { extract($_args)
?>
<h2>Typy cen</h2>
<?php
}}

//
// block title7
//
if (!function_exists($_l->blocks['title7'][] = '_lb6ee8d0df75_title7')) { function _lb6ee8d0df75_title7($_l, $_args) { extract($_args)
?>
<h2>Typy nákladů</h2>
<?php
}}

//
// block title9
//
if (!function_exists($_l->blocks['title9'][] = '_lb2498047c7b_title9')) { function _lb2498047c7b_title9($_l, $_args) { extract($_args)
?>
<h2>Typy kontaktů</h2>
<?php
}}

//
// block title8
//
if (!function_exists($_l->blocks['title8'][] = '_lb279d9e8c86_title8')) { function _lb279d9e8c86_title8($_l, $_args) { extract($_args)
?>
<h2>Typy sazeb</h2>
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
