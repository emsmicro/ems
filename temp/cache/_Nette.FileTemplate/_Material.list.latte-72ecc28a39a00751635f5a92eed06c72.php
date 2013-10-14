<?php //netteCache[01]000391a:2:{s:4:"time";s:21:"0.25205300 1381580912";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:69:"C:\xamlite\htdocs\ems\app\modules\Nakup\templates\Material\list.latte";i:2;i:1381580909;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Nakup\templates\Material\list.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'viuz1sqzmt')
;//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lbed6b2c5d59_drobecky3')) { function _lbed6b2c5d59_drobecky3($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default")) ?>
">Materiál</a><?php call_user_func(reset($_l->blocks['drobecky4']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky4
//
if (!function_exists($_l->blocks['drobecky4'][] = '_lb85fe934f6a_drobecky4')) { function _lb85fe934f6a_drobecky4($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb63777d27ed_content')) { function _lb63777d27ed_content($_l, $_args) { extract($_args)
?>

<?php call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<div id="setstat">
<?php $title3="" ;$title6="" ;$activ3="" ;$activ6="" ?>
	<span class="mini">Stav produktu:</span>
		<span class="mini">
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($stavy3) as $st3): ?>
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($st3->zkratka, ENT_NOQUOTES) ?>, 
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($st3->datzmeny, '%d.%m.%Y %H:%I:%S'), ENT_NOQUOTES) ?>, 
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($st3->username, ENT_NOQUOTES) ?>.
<?php $activ3="active" ;$title3=$st3->zkratka; $st3->datzmeny ;$iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		</span>
		<span class="mini">
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($stavy6) as $st6): ?>
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($st6->zkratka, ENT_NOQUOTES) ?>, 
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->date($st6->datzmeny, '%d.%m.%Y %H:%I:%S'), ENT_NOQUOTES) ?>, 
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($st6->username, ENT_NOQUOTES) ?>.
<?php $activ6="active" ;$title6=$st6->zkratka; $st6->datzmeny ;$iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		</span>
<?php if ($title3==""): $title3="Nastavit status: Čekání na ocenění." ;endif ;if ($title6==""): $title6="Nastavit status: Materiál oceněn." ;endif ;if ($user->isAllowed('Material','changeStatus')): ?>
	<ul id="navstat">
		<li class="<?php echo htmlSpecialChars($activ3) ?>"><a title="<?php echo htmlSpecialChars($title3) ?>
" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("changeStatus", array($idp, 3))) ?>
">Čekám na ceny</a>
		</li>
		<li class="<?php echo htmlSpecialChars($activ6) ?>"><a title="<?php echo htmlSpecialChars($title6) ?>
" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("changeStatus", array($idp, 6))) ?>
">Oceněno</a>
		</li>
	</ul>
<?php endif ?>
</div>

<ul id="navi">
<?php if ($is_rows): if ($co==1): if ($user->isAllowed('Material','list')): ?>
			<li class="active">
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("list", array(1))) ?>
">Neoceněné položky</a>
			</li>
<?php endif ;else: if ($user->isAllowed('Material','list')): ?>
			<li>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("list", array(1))) ?>
">Neoceněné položky</a>
			</li>
<?php endif ;endif ;if ($co==2): if ($user->isAllowed('Material','list')): ?>
			<li class="active">
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("list", array(2))) ?>
">Oceněné položky</a>
			</li>
<?php endif ;else: if ($user->isAllowed('Material','list')): ?>
			<li>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("list", array(2))) ?>
">Oceněné položky</a>
			</li>
<?php endif ;endif ;endif ;if ($user->isAllowed('Material','default')): ?>
	<li>	<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("default")) ?>
">Všechno</a></li>
<?php endif ;if ($user->isAllowed('Import','default')): ?>
	<li>	<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Import:default")) ?>
">Import BOM z CSV</a></li>
<?php endif ;if ($user->isAllowed('Kurz','default')): ?>
	<li>		<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Kurz:default")) ?>
">Kurzy</a></li>
<?php endif ?>
</ul>


<?php if ($is_rows): ?>

<?php $cond = $user->isAllowed('Material','add') || $user->isAllowed('Material','edit') || $user->isAllowed('Material','delete') ?>

	<table class="grid">
	<tr>
		<th>Zkratka</th>
		<th>Název</th>
		<th>K2 číslo</th>
		<th>Cena v Kč</th>
		<th>Počet</th>
<?php if ($cond): ?>
		<td class="takce"><?php if ($user->isAllowed('Material','add')): ?>
<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("add")) ?>
">Přidat záznam</a><?php endif ?>
</td>
<?php endif ?>
	</tr>

<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($items) as $it): ?>
	<tr>
<?php if ($it->id_k2): ?>
			<td title="Detail: <?php echo htmlSpecialChars($it->id) ?>">
<?php if ($user->isAllowed('Material','detail')): ?>
					<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("detail", array($it->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->zkratka, ENT_NOQUOTES) ?></a>
<?php else: ?>
					<?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->zkratka, ENT_NOQUOTES) ?>

<?php endif ?>
			</td>
<?php else: ?>
			<td  title="Detail: <?php echo htmlSpecialChars($it->id) ?>" class="redlight">
<?php if ($user->isAllowed('Material','detail')): ?>
					<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("detail", array($it->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->zkratka, ENT_NOQUOTES) ?></a>
<?php else: ?>
					<?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->zkratka, ENT_NOQUOTES) ?>

<?php endif ?>
			</td>
<?php endif ?>
		<td>
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->nazev, ENT_NOQUOTES) ?>

<?php if ($user->isAllowed('K2','find')): ?>
				&nbsp;<a title="Najít v K2" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("K2:find", array($it->id))) ?>
">&#x25B7;</a>&nbsp;
<?php endif ?>
		</td>
<?php if ($it->id_k2): ?>
			<td class="tcislo">
<?php if ($user->isAllowed('K2','find')): ?>
					<a title="Info z K2" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("K2:find", array($it->id, $it->id_k2,'N'))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->id_k2, ENT_NOQUOTES) ?></a>
<?php else: ?>
					<?php echo Nette\Templating\DefaultHelpers::escapeHtml($it->id_k2, ENT_NOQUOTES) ?>

<?php endif ?>
			</td>
<?php else: ?>
			<td style="text-align:center; padding:0; margin:0;">
<?php if ($user->isAllowed('K2','find')): ?>
				<span class="icon20">
					<a title="Najít v K2" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("K2:find", array($it->id))) ?>
">&nbsp&nbsp;</a>
				</span>
<?php endif ?>
			</td>
<?php endif ;if ($it->cena_kc <> $it->cena_cm): ?>
			<td class="tcislo"><?php if ($it->cena_kc>0): ?>
<span class="look" 
					title="<?php echo htmlSpecialChars($template->number($it->cena_cm, 6, ',', ' ')) ?>
 <?php echo htmlSpecialChars($it->mena) ?>">
				<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->cena_kc, 4, ',', ' '), ENT_NOQUOTES) ?></span>
<?php endif ?>
			</td>
<?php else: ?>
			<td class="tcislo">
<?php if ($it->cena_kc>0): ?>
				<span title="<?php echo htmlSpecialChars($template->number($it->cena_cm, 6, ',', ' ')) ?>">
					<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->cena_kc, 4, ',', ' '), ENT_NOQUOTES) ?>

				</span>
<?php endif ?>
			</td>
<?php endif ?>
		<td class="tcislo">
			<?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->number($it->mnozstvi, 0, ',', ' '), ENT_NOQUOTES) ?>

		</td>
<?php if ($cond): ?>
		<td class="takce">
<?php if ($user->isAllowed('Material','edit')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("edit", array($it->id))) ?>
">Změnit</a>
<?php endif ;if ($user->isAllowed('Material','delete')): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("delete", array($it->id))) ?>
">Odstranit</a>
<?php endif ?>
		</td>
<?php endif ?>
	</tr>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
	
	</table>
	
<?php $_ctrl = $control->getWidget("pg"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ?>
	<div>
		<span class="mini"><i>(Podtržené ceny mají cenu v cizí měně, která se zobrazí po najetí kurzorem myši nad cenu v Kč.)</i></span>
	</div>
<?php endif ;
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbcc9b367246_title')) { function _lbcc9b367246_title($_l, $_args) { extract($_args)
?>
<h2><?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?></h2>
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
$_l->extends = '../Nakup/default.latte'  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
