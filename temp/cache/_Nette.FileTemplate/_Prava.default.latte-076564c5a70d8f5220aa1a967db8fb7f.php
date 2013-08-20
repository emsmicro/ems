<?php //netteCache[01]000392a:2:{s:4:"time";s:21:"0.10628200 1359736510";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:70:"C:\xamlite\htdocs\ems\app\modules\Sprava\templates\Prava\default.latte";i:2;i:1332611277;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Sprava\templates\Prava\default.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'cjdfex3x7m')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lbca2d6b4ce8_drobecky3')) { function _lbca2d6b4ce8_drobecky3($_l, $_args) { extract($_args)
?> » Práva/Role<?php call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb33119701ab_drobecky4')) { function _lb33119701ab_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb1b575fd5cf_content')) { function _lb1b575fd5cf_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>



<?php $cond = $user->isAllowed('Prava','add') || $user->isAllowed('Prava','edit') || $user->isAllowed('Prava','delete') || $user->isAllowed('Prava','setRights') ?>

<table id="mtab" class="grid">
<tr>
	<th title="Název role">Role</th>
	<th title="Seznam povolených funkcí aplikace" style="width:680px;">
		Práva k funkcím jednotlivých agend
		<span style="font-size:x-small; color:#999999; margin-left:20px;"><i>(Pod kursorem myši je popis funkce.)</i></span>
	</th>
<?php if ($cond): ?>
	<td class="takce">
		<span class="setadd" title="Nová role">
<?php if ($user->isAllowed('Prava','add')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<?php endif ?>
		</span>
	</td>
<?php endif ?>
</tr>

<?php $rol = $items[0]->prole ;$mod = "**" ;$tpr = "**" ;$iid = 0 ;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $it): if ($rol <> $it->prole): if ($cond): ?>
			<td style="vertical-align:bottom;" class="takce">
				<span class="setperm" title="Nastavit práva pro roli"><?php if ($user->isAllowed('Prava','setRights')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setRights", array($iid))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
				<span class="setedit" title="Změnit roli"><?php if ($user->isAllowed('Prava','edit')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($iid))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
				<span class="setdel" title="Odstranit roli"><?php if ($user->isAllowed('Prava','delete')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("delete", array($iid))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
			</td>
<?php endif ?>
		</tr>
<?php endif ;if ($iterator->first || $rol <> $it->prole): $iid = $it->idr ;$rol = $it->prole ?>
		<tr>
			<td style="vertical-align:top;font-size:medium;" title="<?php echo htmlSpecialChars($it->role) ?>
=<?php echo htmlSpecialChars($it->idr) ?>">
				<?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->prole, ENT_NOQUOTES) ?>

			</td>
			<td class="mini" style="position:relative">
<?php if ($user->isAllowed('Prava','setRights')): ?>
					<ul id="modprava">
						<li><a title="Nastavit práva pro základní modul Base" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setRights", array($iid, 'Base'))) ?>
">Home</a></li>
						<li><a title="Nastavit práva pro modul Obchod" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setRights", array($iid, 'Obchod'))) ?>
">Obchod</a></li>
						<li><a title="Nastavit práva pro modul Nákup" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setRights", array($iid, 'Nakup'))) ?>
">Nákup</a></li>
						<li><a title="Nastavit práva pro modul TPV" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setRights", array($iid, 'Tpv'))) ?>
">TPV</a></li>
						<li><a title="Nastavit práva pro modul Správa" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setRights", array($iid, 'Sprava'))) ?>
">Správa</a></li>
					</ul>
<?php endif ?>
				</ul>
				<ul>
<?php endif ?>

<?php if ($mod<>$it->modul): $mod=$it->modul ;if (!is_null($mod)): ?>
			<p style="font-size:larger; margin:0 0 0 -15px; padding:5px 0 3px 10px;background:#EFF5FC;">
				<span><i>Modul:</i> <b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($mod, ENT_NOQUOTES) ?></b></span>
			</p>
<?php endif ;endif ;if ($tpr<>$it->presenter): if (!is_null($it->presenter)): ?>
				</li>
			<li>
				<span><b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->presenter, ENT_NOQUOTES) ?> : </b></span>
<?php endif ;$tpr=$it->presenter ;endif ;$fce = $it->funkce ;if (!is_null($fce)): $tit = "• ".$it->presenter.' : '.$it->funkce.' - '.$it->popis ?>
		<span title="<?php echo htmlSpecialChars($tit) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($fce, ENT_NOQUOTES) ?> | </span>
<?php endif ?>

<?php if ($iterator->last): ?>
				</ul>
			</td>
<?php if ($cond): ?>
			<td style="vertical-align:bottom;" class="takce">
				<span class="setperm" title="Nastavit práva pro roli"><?php if ($user->isAllowed('Prava','setRights')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setRights", array($iid))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
				<span class="setedit" title="Změnit roli"><?php if ($user->isAllowed('Prava','edit')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($iid))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
				<span class="setdel" title="Odstranit roli"><?php if ($user->isAllowed('Prava','delete')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("delete", array($iid))) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a><?php endif ?>
</span>
			</td>
<?php endif ?>
		</tr>
<?php endif ;$iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>

</table>
<?php
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb4d0c75a0b7_title')) { function _lb4d0c75a0b7_title($_l, $_args) { extract($_args)
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
$_l->extends = '../Sprava/default.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
