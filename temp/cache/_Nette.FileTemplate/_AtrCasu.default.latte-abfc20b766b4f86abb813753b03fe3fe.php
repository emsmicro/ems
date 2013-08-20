<?php //netteCache[01]000391a:2:{s:4:"time";s:21:"0.78135200 1359562480";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:69:"C:\xamlite\htdocs\ems\app\modules\Tpv\templates\AtrCasu\default.latte";i:2;i:1331037752;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Tpv\templates\AtrCasu\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'czpptpiajf')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lb2f5dfc04cd_drobecky3')) { function _lb2f5dfc04cd_drobecky3($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default")) ?>
">Atributy času</a><?php call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lbb5164ce74c_drobecky4')) { function _lbb5164ce74c_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lbb1e14a0702_content')) { function _lbb1e14a0702_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>



<?php $cond = $user->isAllowed('AtrCasu','add') || $user->isAllowed('AtrCasu','edit') || $user->isAllowed('AtrCasu','delete') ?>

<table class="grid">
<tr>
	<th>Zkratka</th>
	<th>Název</th>
	<th title="Přiřazení k typovým operacím">Přiřazení</th>
	<th title="Jaký čas bude spočítán?">Typ času</th>
	<th title="Čas na montáž/osazení jednoho výskytu prvku.">čas [sec/ks]</th>
<?php if ($cond): ?>
	<td class="takce">
		<span class="setadd" title="Nový atribut"><?php if ($user->isAllowed('AtrCasu','add')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
	</td>
<?php endif ?>
</tr>

<?php $zkr = $items[0]->zkratka ;$naz = "" ;$tna = "" ;$tzk = "" ;$typ = 0 ;$cas = 0 ;$iid = 0 ;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $it): if ($zkr <> $it->zkratka): ?>
		<tr>
			<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($zkr, ENT_NOQUOTES) ?></td>
			<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($naz, ENT_NOQUOTES) ?></td>
			<td class="mini" title="<?php echo htmlSpecialChars(substr($tna,0,-2)) ?>">
				<?php echo Nette\Templating\DefaultHelpers::escapeHtml(substr($tzk,0,-2), ENT_NOQUOTES) ?>

<?php if ($user->isAllowed('AtrCasu','setGroup')): ?>
					&nbsp;<a title="Přiřadit typové operaci" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setGroup", array($iid))) ?>
">&#x25B7;</a>&nbsp;
<?php endif ?>
			</td>
			<td><?php if ($typ==1): ?>Přímý<?php else: ?>Dávkový<?php endif ?></td>
			<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cas, 2, ',', ' '), ENT_NOQUOTES) ?></td>
<?php if ($cond): ?>
			<td class="takce">
				<span class="setedit" title="Změnit"><?php if ($user->isAllowed('AtrCasu','edit')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($iid))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
				<span class="setdel" title="Odstranit"><?php if ($user->isAllowed('AtrCasu','delete')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("delete", array($iid))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
			</td>
<?php endif ?>
		</tr>
<?php $zkr = $it->zkratka ;$tna = "" ;$tzk = "" ;endif ;$zkr = $it->zkratka ;$naz = $it->nazev ;$tna .= "•  ".$it->tonaz.chr(13).chr(10) ;$tzk .= $it->tozkr.", " ;$typ = $it->typ ;$cas = $it->cas_sec ;$iid = $it->id ;$iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
	<tr>
		<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($zkr, ENT_NOQUOTES) ?></td>
		<td><?php echo Nette\Templating\DefaultHelpers::escapeHtml($naz, ENT_NOQUOTES) ?></td>
		<td class="mini" title="<?php echo htmlSpecialChars(substr($tna,0,-2)) ?>">
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml(substr($tzk,0,-2), ENT_NOQUOTES) ?>

<?php if ($user->isAllowed('AtrCasu','setGroup')): ?>
				&nbsp;<a title="Přiřadit typové operaci" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setGroup", array($iid))) ?>
">&#x25B7;</a>&nbsp;
<?php endif ?>
		</td>
		<td><?php if ($typ==1): ?>Přímý<?php else: ?>Dávkový<?php endif ?></td>
		<td class="tcislo"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($cas, 2, ',', ' '), ENT_NOQUOTES) ?></td>
<?php if ($cond): ?>
		<td class="takce">
			<span class="setedit" title="Změnit"><?php if ($user->isAllowed('AtrCasu','edit')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($iid))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
			<span class="setdel" title="Odstranit"><?php if ($user->isAllowed('AtrCasu','delete')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("delete", array($iid))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
		</td>
<?php endif ?>
	</tr>
</table>
<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbf1c683abe7_title')) { function _lbf1c683abe7_title($_l, $_args) { extract($_args)
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
