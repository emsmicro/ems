<?php //netteCache[01]000382a:2:{s:4:"time";s:21:"0.16068800 1382114849";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:60:"C:\xampp\htdocs\ems\app\modules\Base\templates\@layout.latte";i:2;i:1381848769;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xampp\htdocs\ems\app\modules\Base\templates\@layout.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, '6r0p2bt8iw')
;//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lb41d6bc0c55_title')) { function _lb41d6bc0c55_title($_l, $_args) { extract($_args)
;
}}

//
// block drobecky
//
if (!function_exists($_l->blocks['drobecky'][] = '_lb1724bc3209_drobecky')) { function _lb1724bc3209_drobecky($_l, $_args) { extract($_args)
?> <?php
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
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Language" content="cs" />
	<meta name="description" content="EMS nabídky Mikroelektronika" />
<?php if (isset($robots)): ?>
	<meta name="robots" content="<?php echo htmlSpecialChars($robots) ?>" />
<?php endif ?>

	<title><?php if (!$_l->extends) { ob_start(); call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars()); echo $template->trim($template->striptags(ob_get_clean())); } ?> | EMS nabídky</title>
    <link rel="shortcut icon" href="<?php echo htmlSpecialChars($basePath) ?>/images/favicon.ico" />

	<link rel="stylesheet" media="screen,projection,tv" href="<?php echo htmlSpecialChars($basePath) ?>/css/screen.css" type="text/css" />
	<link rel="stylesheet" media="print" href="<?php echo htmlSpecialChars($basePath) ?>/css/print.css" type="text/css" />
	<link rel="stylesheet" type="text/css" media="screen" href="<?php echo htmlSpecialChars($basePath) ?>/css/site.css" />
	<script type="text/javascript" src="<?php echo htmlSpecialChars($basePath) ?>/js/jquery.min.js"></script>
	<script type="text/javascript" src="<?php echo htmlSpecialChars($basePath) ?>/js/netteForms.js"></script>
	<script type="text/javascript" src="<?php echo htmlSpecialChars($basePath) ?>/js/autoNumeric.js"></script>
		<script type="text/javascript">
				
		document.onkeydown = function (e) { 
		  e = e || window.event;
		  var keyCode = e.keyCode || e.which,
			  arrow = { left: 37, up: 38, right: 39, down: 40 };

		  if (e.ctrlKey) {
			switch (keyCode) {
			  case arrow.left:
			  //... handle Ctrl-LeftArrow
				  history.back()
				  break;
			  case arrow.right:
			  //... handle Ctrl-RightArrow
				  history.forward()
				  break;
			}
		  } else {
			if(keyCode === 27){ // escape, close box, esc 
				 //... Go back one page
				history.back()
			} 
		  }
		};				
	</script>
	
	<?php if (isset($is_addon)): Nette\Latte\Macros\UIMacros::callBlock($_l, 'addon', $template->getParams()) ;endif ?>


</head>

<body>
	<div id="topcont">

		<div id="logo"></div>
		<div id="titul">mikroelektronika :: EMS 
<?php if ($user->isAllowed('Nabidka','default')): ?>
			<a title="Seznam nabídek" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Nabidka:default")) ?>
">nabídky</a>
<?php endif ;if (!$user->isAllowed('Nabidka','default')): ?>
			<span>nabídky</span>
<?php endif ?>
		</div>
		<div id="slogan">Systém pro správu nabídek a kalkulací cen
<?php if ($user->isAllowed('Produkt','default')): ?>
				<a title="Seznam produktů" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:default")) ?>
">služeb a produktů</a>
<?php endif ?>
						v oblasti EMS ...
		</div>


<?php Nette\Latte\Macros\CoreMacros::includeTemplate('mysetting.latte', $template->getParams(), $_l->templates['6r0p2bt8iw'])->render() ?>

<?php $_ctrl = $control->getWidget("navigation"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ?>

		<div id="breadcrumbs">
			<?php if (!$_l->extends) { call_user_func(reset($_l->blocks['drobecky']), $_l, get_defined_vars()); } ?>&nbsp;
			<span id="back" title="zpět">
					<a href="#">&#x25C0;</a>
					<script type="text/javascript">
							document.getElementById("back").innerHTML =
									'<a href="javascript:window.history.go(-1);">&#x25C0;<\/a>';
					</script>
			</span>
		</div>
		<div id="messages">
<?php $iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($flashes) as $flash): ?>
			<div class="flash <?php echo htmlSpecialChars($flash->type) ?>"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($flash->message, ENT_NOQUOTES) ?></div>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ?>
		</div>
	</div>
	
	<div id="content">

<?php if ($user->loggedIn): ?>
		<div id="logged-in">
				<a title="<?php echo htmlSpecialChars($user->getIdentity()->nrole) ?>" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Homepage:editMe", array($user->getIdentity()->id))) ?>
"><?php echo Nette\Templating\DefaultHelpers::escapeHtml($user->getIdentity()->jmeno, ENT_NOQUOTES) ?>
 <?php echo Nette\Templating\DefaultHelpers::escapeHtml($user->getIdentity()->prijmeni, ENT_NOQUOTES) ?></a>
				<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Sign:out")) ?>
">Odhlásit se.</a>
<?php if ($user->isAllowed('Sprava','default')): ?>
				<span class="config" title="Správa systému">
					<a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Sprava:default")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
				</span>
<?php endif ?>
		</div>
<?php endif ?>

<?php Nette\Latte\Macros\UIMacros::callBlock($_l, 'content', $template->getParams()) ?>
		
<?php if (isset($is_filter)): ?>
		<?php if ($is_filter): ?> <?php $_ctrl = $control->getWidget("uFilter"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render() ?>
 <?php endif ?>

<?php endif ?>
		
		<div style="height:30px;"></div>
		
		<div style="clear:both;"></div>	
	</div>
	
		
	<div id="footer">
           Copyright © 2011 - 2013, Bc. Štěpán Mračko, Powered by Apache, PHP, MSSQL, Nette.&nbsp;&nbsp;&nbsp;&nbsp;
           <a href='mailto:emsmicro@gmail.com?subject=Zpráva%20pro%20administrátora%20EMS nabídky...&body=Drahý%20správče!%0D' title='Poslat mail správci'>Poslat zprávu správci</a>
	</div>
</body>
</html><?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
