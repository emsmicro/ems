<?php //netteCache[01]000389a:2:{s:4:"time";s:21:"0.99160000 1363095352";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:67:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Postup\detail.latte";i:2;i:1363095350;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Postup\detail.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'jbw682upc5')
;//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lba1d61625f1_drobecky4')) { function _lba1d61625f1_drobecky4($_l, $_args) { extract($_args)
?> » <?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ;call_user_func(reset($_l->blocks['drobecky5']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky5
//
if (!function_exists($_l->blocks['drobecky5'][] = '_lbc4332e5fa3_drobecky5')) { function _lbc4332e5fa3_drobecky5($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb25d79f4a4c_content')) { function _lb25d79f4a4c_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars()) ; $cond = $user->isAllowed('Postup','addTypo') || $user->isAllowed('Postup','editTypo') || $user->isAllowed('Postup','deleteTypo') ?>

<ul id="navi">
<?php if ($user->isAllowed('Postup','add')): ?>
	<li title="Nový TP"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">Nový...</a></li>
<?php endif ;if ($user->isAllowed('Postup','edit')): ?>
	<li title="Změnit TP"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($idt))) ?>
">Změnit</a></li>
<?php endif ;if ($user->isAllowed('Postup','addSabl')): ?>
	<li title="Přidat šablonu"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("addSabl", array($idt))) ?>
">Přidat šablonu ...</a></li>
<?php endif ?>
</ul>

<table class="grid">
	<tr><th>K2 číslo</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->id_k2, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Zkratka</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->zkratka, ENT_NOQUOTES) ?></td></tr>
	<tr><th>Název</th><td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($item->nazev, ENT_NOQUOTES) ?></td></tr>
</table>

<div id="cbody">

<h2>
		Skupiny operací přiřazené technologickému postupu
		<span class="mini" style="width:200px;float:right;text-align:right;padding:5px 10px;margin:0;">
			<a href="#" id="closeAll" title="Sbalit vše">Sbalit</a> | <a href="#" id="openAll" title="Rozbalit vše">Rozbalit</a>
		</span>
</h2>

<div class="detcol">
<?php $i = 0 ;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($sabl) as $sab): $i++ ?>
	<div style="position:relative;">
	<h3 class="collapsible" id="section<?php echo htmlSpecialChars($i) ?>"}>
		<span class="colid"># <?php echo Nette\Templating\DefaultHelpers::escapeHtml($sab['pporadi'], ENT_NOQUOTES) ?>
</span><span style="margin-left:80px;"><b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($sab['zsablona'], ENT_NOQUOTES) ?>
</b> - <?php echo Nette\Templating\DefaultHelpers::escapeHtml($sab['nsablona'], ENT_NOQUOTES) ?></span>
		<span class="cpin"></span>
	</h3>
	<div class="container">
		<span class="colakce">
			<span class="set editgroup" title="Hromadná změna">
<?php if ($user->isAllowed('Postup','addGroup')): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("addGroup", array($idt, $sab['id_sablony']))) ?>
"></a>
<?php endif ?>
			</span>
			<span class="set edit" title="Změnit šablonu">
<?php if ($user->isAllowed('Postup','editSabl')): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("editSabl", array($idt, $sab['id_sablony']))) ?>
"></a>
<?php endif ?>
			</span>
			<span class="set del" title="Odstranit šablonu">
<?php if ($user->isAllowed('Postup','deleteSabl')): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("deleteSabl", array($idt, $sab['id_sablony']))) ?>
"></a>
<?php endif ?>
			</span>
		</span>

		<div class="content">
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('detOperace.latte', array('items' => $sab['key']) + $template->getParams(), $_l->templates['jbw682upc5'])->render() ?>
		</div>
	</div>
	</div>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>

<?php if ($noop): $i++ ?>
	<div style="position:relative;">
	<h3 class="collapsible" id="section<?php echo htmlSpecialChars($i) ?>"} style="background-color:#999;">
		<span class="colid"># <?php echo Nette\Templating\DefaultHelpers::escapeHtml($i, ENT_NOQUOTES) ?></span><span style="margin-left:80px;"><b>Ručně zadáno</b> - operace doplněné bez šablony</span>
		<span class="cpin"></span>
	</h3>
	<div class="container">
		<span class="colakce">
			<span class="set editgroup" title="Hromadná změna">
<?php if ($user->isAllowed('Operace','addGroup')): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Operace:addGroup", array($idt))) ?>
"></a>
<?php endif ?>
			</span>
			<span class="set edit" title="Přidat 1 operaci">
<?php if ($user->isAllowed('Operace','add')): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Operace:add", array($idt))) ?>
"></a>
<?php endif ?>
			</span>
			<span class="set del" title="Odstranit všechny tyto operace">
<?php if ($user->isAllowed('Operace','delete')): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Operace:delete", array(-1, $idt))) ?>
"></a>
<?php endif ?>
			</span>
		</span>

		<div class="content">
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('detNoOper.latte', array('items' => $noop) + $template->getParams(), $_l->templates['jbw682upc5'])->render() ?>
		</div>
	</div>
	</div>
<?php endif ?>
	
</div>

</div>

<script type="text/javascript" src="<?php echo htmlSpecialChars($basePath) ?>/js/jquery.cookie.js"></script>
<script type="text/javascript" src="<?php echo htmlSpecialChars($basePath) ?>/js/jquery.collapsible.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        //collapsible management
        $('.collapsible').collapsible({
            defaultOpen: 'section1',
			cookieName: 'nav',
			speed: 300,
        });
    });

	//assign open/close all to functions
	function openAll() {
		$('.collapsible').collapsible('open');
	}
	function closeAll() {
		$('.collapsible').collapsible('close');
	}
	
	//listen for close/open all
	$('#closeAll').click(function(event) {
		event.preventDefault();
		closeAll();

	});
	$('#openAll').click(function(event) {
		event.preventDefault();
		openAll();

	});	
	
	
	
</script><?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb48741234e1_title')) { function _lb48741234e1_title($_l, $_args) { extract($_args)
?>
<h1><?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?></h1>
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
