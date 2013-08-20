<?php //netteCache[01]000394a:2:{s:4:"time";s:21:"0.92910000 1362320245";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:72:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Produkt\default.latte";i:2;i:1362320243;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Produkt\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '33wailwdv0')
;//
// block drobecky2
//
if (!function_exists($_l->blocks['drobecky2'][] = '_lb000da97088_drobecky2')) { function _lb000da97088_drobecky2($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default")) ?>
">Produkty</a><?php call_user_func(reset($_l->blocks['drobecky3']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lb3f943c2864_drobecky3')) { function _lb3f943c2864_drobecky3($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb38cf69d6cb_content')) { function _lb38cf69d6cb_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<?php $cond = $user->isAllowed('Produkt','add') || $user->isAllowed('Produkt','edit') || $user->isAllowed('Produkt','delete') ?>

<table class="grid">
<tr>
	<th>Nabídka</th>
<?php if ($user->isAllowed('Produkt','setProduct')): ?>
	<th><img src="<?php echo htmlSpecialChars($basePath) ?>/images/select.png" title="Zvolit jako aktuální" /></th>
<?php endif ?>
	<th title="Číslo produktu" style="text-align:right;">ID</th>
	<th>K2 číslo</th>
	<th>Název produktu</th>
<?php if ($cond): ?>
	<td class="takce">
		<span class="setadd" title="Přidat nový produkt">
<?php if ($user->isAllowed('Produkt','add')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
	</td>
<?php endif ?>
	<th>Status produktu</th>
</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $it): $unlocked = $it->id_stav<>21 ;if ($unlocked): ?>
	<tr>
<?php else: ?>
	<tr class="locked">
<?php endif ?>
	<td>
<?php if ($inabidka>0 && $it->nabidka=='.. nepřiřazen ..'  && $unlocked): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("assign", array($it->id))) ?>
">Přiřadit k nabídce...</a>
<?php else: if ($it->nabidka<>'.. nepřiřazen ..'): if ($user->isAllowed('Produkt','eraseOffer') && $unlocked): ?>
				<span class="disconn">
					<a title="Zrušit přiřazení" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("eraseOffer", array($it->id, $it->idn))) ?>
">
						&nbsp;
					</a>
				</span>
<?php endif ;endif ;if ($user->isAllowed('Nabidka','detail')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Nabidka:detail", array($it->idn))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->nabidka, ENT_NOQUOTES) ?></a>
<?php endif ;if (!$user->isAllowed('Nabidka','detail')): ?>
			<span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->nabidka, ENT_NOQUOTES) ?></span>
<?php endif ;endif ?>
	</td>
<?php if ($user->isAllowed('Produkt','setProduct')): ?>
	<td><span class="iconsel"><a title="Zvolit" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setProduct", array($it->id))) ?>
">&nbsp&nbsp;</a></span></td>
<?php endif ?>
	<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->id, ENT_NOQUOTES) ?></td>
	<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->id_k2, ENT_NOQUOTES) ?></td>
	<td><a title="<?php echo htmlSpecialChars($it->id) ?>" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("detail", array($it->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->nazev, ENT_NOQUOTES) ?></a></td>
<?php if ($cond): ?>
	<td class="takce" title="stav: <?php echo htmlSpecialChars($it->id_stav) ?>">
		<span class="setedit" title="Změnit">
<?php if ($user->isAllowed('Produkt','edit') && $unlocked): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
		<span class="setdel" title="Odstranit">
<?php if ($user->isAllowed('Produkt','delete') && $unlocked): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("delete", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
<?php if (!$unlocked): ?>
		<span title="<?php echo htmlSpecialChars($it->nstav) ?>: <?php echo htmlSpecialChars($it->uzivatel) ?>
, <?php echo htmlSpecialChars($template->date($it->datzmeny, '%d.%m.%Y v %H:%I:%S')) ?>">
			<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stat21.png" />
		</span>
<?php endif ?>
	</td>
<?php endif ?>
	
	<td title="<?php echo htmlSpecialChars($it->nstav) ?> <?php echo htmlSpecialChars($it->username) ?>
 <?php echo htmlSpecialChars($template->date($it->datzmeny, '%d.%m.%Y %H:%I:%S')) ?>">
<?php if ($it->id_stav < 3): ?>
				<span class="status s1">
<?php endif ;if ($it->id_stav > 2 && $it->id_stav < 5): ?>
				<span class="status s2">
<?php endif ;if ($it->id_stav > 4 && $it->id_stav < 7): ?>
				<span class="status s4">
<?php endif ;if ($it->id_stav == 7): ?>
				<span class="status s5">
<?php endif ;if ($it->id_stav > 7): ?>
				<span>
					<img src="<?php echo htmlSpecialChars($basePath) ?>/images/stat<?php echo htmlSpecialChars($it->id_stav) ?>.png" style="height:24px;width:24px;" />
<?php endif ?>
				<span class="mini"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->stav, ENT_NOQUOTES) ?></span>
			</span>
	</td>		
	
</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
</table>
<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbea1d47ed78_title')) { function _lbea1d47ed78_title($_l, $_args) { extract($_args)
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
$_l->extends = '../Obchod/default.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
