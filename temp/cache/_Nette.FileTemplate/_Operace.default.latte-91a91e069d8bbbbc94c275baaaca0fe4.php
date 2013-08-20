<?php //netteCache[01]000391a:2:{s:4:"time";s:21:"0.27127600 1361456813";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:69:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Operace\default.latte";i:2;i:1361456809;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\Operace\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'eekqd2zrg4')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lb4790f85dec_drobecky3')) { function _lb4790f85dec_drobecky3($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default")) ?>
">Operace</a><?php call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb0bd08f2917_drobecky4')) { function _lb0bd08f2917_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb592ec62a0a_content')) { function _lb592ec62a0a_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>
<h2><?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitle, ENT_NOQUOTES) ?></h2>
<h3><?php echo Nette\Templating\DefaultHelpers::escapeHtml($company, ENT_NOQUOTES) ?></h3>

<div id="setstat">
<?php $title4="" ;$title5="" ;$activ4="" ;$activ5="" ?>
	<span class="mini">Stav produktu:</span>
		<span class="mini">
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($stavy4) as $st4): ?>
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($st4->zkratka, ENT_NOQUOTES) ?>, 
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($st4->datzmeny, '%d.%m.%Y %H:%I:%S'), ENT_NOQUOTES) ?>, 
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($st4->username, ENT_NOQUOTES) ?>.
<?php $activ4="active" ;$title4=$st4->zkratka; $st4->datzmeny ;$iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		</span>
		<span class="mini">
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($stavy5) as $st5): ?>
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($st5->zkratka, ENT_NOQUOTES) ?>, 
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($st5->datzmeny, '%d.%m.%Y %H:%I:%S'), ENT_NOQUOTES) ?>, 
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($st5->username, ENT_NOQUOTES) ?>.
<?php $activ5="active" ;$title5=$st5->zkratka; $st5->datzmeny ;$iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		</span>
		<span class="mini" title="Produkt: <?php echo htmlSpecialChars($idp) ?>">Počet operací: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($isoper, ENT_NOQUOTES) ?>.</span>
<?php if ($title4==""): $title4="Nastavit status: Započetí prací na TPV." ;endif ;if ($title5==""): $title5="Nastavit status: Dokončení TPV." ;endif ?>
	<ul id="navstat">
		<li class="<?php echo htmlSpecialChars($activ4) ?>"><a title="<?php echo htmlSpecialChars($title4) ?>
" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("changeStatus", array($idp, 4))) ?>
">TPV zahájeno</a>
		</li>
		<li class="<?php echo htmlSpecialChars($activ5) ?>"><a title="<?php echo htmlSpecialChars($title5) ?>
" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("changeStatus", array($idp, 5))) ?>
">TPV dokončeno</a>
		</li>
	</ul>
</div>


<ul id="navi">
<?php if ($user->isAllowed('Operace','addGroup') and $unlocked): ?>
	<li>	<a title="Hromnadné zadání dle typových operací" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Operace:addGroup")) ?>
">&#10010 operace</a></li>
<?php endif ;if ($user->isAllowed('Operace','add') and $unlocked): ?>
	<li>		<a title="Přidat jednu operaci" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Operace:add")) ?>
">&#10010 1 </a></li>
<?php endif ;if ($isoper): if ($user->isAllowed('Operace','delete') and $unlocked): ?>
		<li>	<a title="Odstranit všechny operace" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Operace:delete", array(0))) ?>
">Smazat vše</a></li>
<?php endif ;if ($user->isAllowed('Operace','export')): ?>
		<li title="Export TPV do CSV"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("export")) ?>
">Export TPV</a></li>
<?php endif ;endif ?>
</ul>

<?php if ($isoper>0): endif ;$cond = $user->isAllowed('Operace','add') || $user->isAllowed('Operace','edit') || $user->isAllowed('Operace','delete') ?>

	<table class="grid">
	<tr>
		<th>#</th>
		<th>Operace</th>
		<th>Popis</th>
		<th title="Výrobní čas">Ta [min]</th>
		<th title="Přípravný/dávkový čas">Tp [min]</th>
		<th>Náklad [Kč]</th>
<?php if ($cond): ?>
		<td colspan="2" class="takce">
			<span class="setadd" title="Přidat novou operaci"><?php if ($user->isAllowed('Operace','add') and $unlocked): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
		</td>
<?php endif ?>
	</tr>
<?php $styl1="" ;$titl1="Kalkulace času" ;if ($unlocked): $styl1="border-right:none;" ;$titl1="Kalkulovat čas" ;endif ;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $it): ?>
	<tr>
		<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->oporadi, ENT_NOQUOTES) ?></td>
		<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->nazev, ENT_NOQUOTES) ?></td>
		<td><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("detail", array($it->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->popis, ENT_NOQUOTES) ?></a></td>
		<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->ta_cas, 2, ',', ' '), ENT_NOQUOTES) ?></td>
		<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->tp_cas, 2, ',', ' '), ENT_NOQUOTES) ?></td>
		<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->naklad, 2, ',', ' '), ENT_NOQUOTES) ?></td>
<?php if ($user->isAllowed('Operace','tcalc')): ?>
		<td class="takce" style="padding:2px;<?php echo htmlSpecialChars(Nette\Templating\DefaultHelpers::escapeCss($styl1)) ?>">
<?php if ($it->pocet>0): ?>
			<span class="setcalc" title="<?php echo htmlSpecialChars($titl1) ?>"><?php if ($user->isAllowed('Operace','tcalc')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("tcalc", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
<?php endif ?>
		</td>
<?php endif ;if ($cond and $unlocked): ?>
		<td class="takce" style="padding:2px;border-left:none;">
			<span class="setedit" title="Změnit"><?php if ($user->isAllowed('Operace','edit')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
			<span class="setdel" title="Odstranit"><?php if ($user->isAllowed('Operace','delete')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("delete", array($it->id))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
		</td>
<?php endif ?>
	</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
	</table>
<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbe8b87e7cfb_title')) { function _lbe8b87e7cfb_title($_l, $_args) { extract($_args)
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
$_l->extends = '../Tpv/default.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
