<?php //netteCache[01]000386a:2:{s:4:"time";s:21:"0.98471100 1381571362";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:64:"C:\xamlite\htdocs\ems\app\modules\Base\templates\mysetting.latte";i:2;i:1381571360;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Base\templates\mysetting.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'vefg1nj0qq')
;//
// block mysetting
//
if (!function_exists($_l->blocks['mysetting'][] = '_lb0feba6a944_mysetting')) { function _lb0feba6a944_mysetting($_l, $_args) { extract($_args)
;if (!$islogin): ?>
	<div id="mysetting">
<?php if (!$ishome || $ishome): if ($ifirma==0): ?>
			<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setCompany")) ?>
"><span><i>(Zvolte aktuálního zákazníka ...)</i></span></a>
<?php else: ?>
			<a title="Změnit" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setCompany")) ?>
"><i>Nastavení:</i></a>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Firma:detail", array($ifirma))) ?>
"><span title="<?php echo htmlSpecialChars($afirma) ?> (<?php echo htmlSpecialChars($ifirma) ?>
)"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->truncate($afirma, 25), ENT_NOQUOTES) ?></span></a> »
<?php if ($iosoba>0): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Osoba:detail", array($iosoba))) ?>
"><span title="<?php echo htmlSpecialChars($aosoba) ?> (<?php echo htmlSpecialChars($iosoba) ?>
)"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->truncate($aosoba, 25), ENT_NOQUOTES) ?></span></a> »
<?php else: ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Osoba:people", array($ifirma))) ?>
"><span><i>(kontakt nevybrán)</i></span></a> »
<?php endif ;if ($inabidka>0): ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Nabidka:detail", array($inabidka))) ?>
"><i>nabídka: </i><span title="<?php echo htmlSpecialChars($anabidka) ?> (<?php echo htmlSpecialChars($inabidka) ?>
)"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->truncate($anabidka, 28), ENT_NOQUOTES) ?></span></a> »
<?php if ($iprodukt>0): ?>
					<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:detail", array($iprodukt))) ?>
"><i>produkt: </i><span title="<?php echo htmlSpecialChars($aprodukt) ?> (<?php echo htmlSpecialChars($iprodukt) ?>
)"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->truncate($aprodukt, 28), ENT_NOQUOTES) ?></span></a> »
					<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Material:default")) ?>
"><span title="Materiálový kusovník">BOM</span></a> »
					<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Postup:default")) ?>
"><span title="Technologický postup">TPV</span></a>
<?php else: ?>
					<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setProduct", array($ifirma))) ?>
"><span><i>(produkt nevybrán)</i></span></a>
<?php endif ;else: ?>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("setOffer", array($ifirma))) ?>
"><span><i>(nabídka nevybrána)</i></span></a>
<?php endif ?>
			<a title="Zrušit setting" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Firma:eraseSet")) ?>
"><span class="seterase">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
<?php endif ;else: if ($ifirma>0): ?>
			<i>Nastavení:</i> <span title=<?php echo Nette\Templating\DefaultHelpers::escapeHtml($ifirma) ?>
><?php echo Nette\Templating\DefaultHelpers::escapeHtml($afirma, ENT_NOQUOTES) ?></span> »
<?php if ($iosoba>0): ?>
				<span title=<?php echo Nette\Templating\DefaultHelpers::escapeHtml($iosoba) ?>
><?php echo Nette\Templating\DefaultHelpers::escapeHtml($aosoba, ENT_NOQUOTES) ?></span> »
<?php else: ?>
				<span><i>(kontakt nevybrán)</i></span> »
<?php endif ;if ($inabidka>0): ?>
				<i>nabídka: </i><span title="<?php echo htmlSpecialChars($anabidka) ?> (<?php echo htmlSpecialChars($inabidka) ?>
)"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->truncate($anabidka, 35), ENT_NOQUOTES) ?> » </span>
<?php if ($iprodukt>0): ?>
					<i>produkt: </i><span title="<?php echo htmlSpecialChars($aprodukt) ?> (<?php echo htmlSpecialChars($iprodukt) ?>
)"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($template->truncate($aprodukt, 35), ENT_NOQUOTES) ?></span>
<?php else: ?>
					<span><i>(produkt nevybrán)</i></span>
<?php endif ;else: ?>
				<span><i>(nabídka nevybrána)</i></span>
<?php endif ;endif ;endif ?>
	</div>
<?php endif ;
}}

//
// end of blocks
//

// template extending and snippets support

$_l->extends = empty($template->_extends) ? FALSE : $template->_extends; unset($_extends, $template->_extends);


if ($_l->extends) {
	ob_start();
} elseif (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
?>

<?php if (!$_l->extends) { call_user_func(reset($_l->blocks['mysetting']), $_l, get_defined_vars()); }  
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
