<?php //netteCache[01]000390a:2:{s:4:"time";s:21:"0.95752400 1359122089";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:68:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Obchod\dash.latte";i:2;i:1323273416;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Obchod\dash.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'fypms8til9')
;//
// block drobecky2
//
if (!function_exists($_l->blocks['drobecky2'][] = '_lbe6f1aa5081_drobecky2')) { function _lbe6f1aa5081_drobecky2($_l, $_args) { extract($_args)
?> » <a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Obchod:default")) ?>
">Obchod</a><?php call_user_func(reset($_l->blocks['drobecky3']), $_l, get_defined_vars()) ; 
}}

//
// block drobecky3
//
if (!function_exists($_l->blocks['drobecky3'][] = '_lbf668130d2c_drobecky3')) { function _lbf668130d2c_drobecky3($_l, $_args) { extract($_args)
;
}}

//
// block content
//
if (!function_exists($_l->blocks['content'][] = '_lb3f296707fa_content')) { function _lb3f296707fa_content($_l, $_args) { extract($_args)
;call_user_func(reset($_l->blocks['title']), $_l, get_defined_vars())  ?>

<div class="graf">
<?php if ($data_bar<>"" || $data<>""): ?>
			<div id="container" class="graf2"></div>
			<div style="float:left;width:1%">&nbsp;</div>
			<div id="container2" class="graf2">
<?php if ($data==""): ?>
				<span class="center"><a href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("Produkt:")) ?>
">Zvolte oceněný produkt ...</a></span>
<?php endif ?>
			</div>
<?php endif ?>

	<div class="kolaps">

		<div class="clear" style="padding-top: 20px;">
<?php if ($pnezap>0): ?>
				<div class="kol-1">
					<h3>Nabídky, na kterých nebyly započaty žádné práce (<?php echo Nette\Templating\DefaultHelpers::escapeHtml($pnezap, ENT_NOQUOTES) ?>)</h3>
					<div>
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('../Nabidka/offers_list.latte', array('items' => $nezapocate) + $template->getParams(), $_l->templates['fypms8til9'])->render() ?>
					</div>
				</div>
<?php endif ;if ($pneoc>0): ?>
				<div class="kol-2">
					<h3>Nabídky, u kterých nebylo dokončeno ocenění (<?php echo Nette\Templating\DefaultHelpers::escapeHtml($pneoc, ENT_NOQUOTES) ?>)</h3>
					<div>
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('../Nabidka/offers_list.latte', array('items' => $neocenene) + $template->getParams(), $_l->templates['fypms8til9'])->render() ?>
					</div>
				</div>
<?php endif ?>
		</div>

<?php if ($is_todo): ?>
			<div class="kol-0">
				<h3><?php echo Nette\Templating\DefaultHelpers::escapeHtml($subtitle, ENT_NOQUOTES) ?></h3>
				<div class="todob">
<?php call_user_func(reset($_l->blocks['todolist']), $_l, get_defined_vars())  ?>
				</div>
			</div>
<?php endif ?>
	</div>
</div>

<script type='text/javascript' src='<?php echo htmlSpecialChars($basePath, ENT_QUOTES) ?>/js/jquery.cookie.js'></script>
<script type='text/javascript' src='<?php echo htmlSpecialChars($basePath, ENT_QUOTES) ?>/js/jquery.collapse.js'></script>
<script type='text/javascript'>

            $(".kol-0,.kol-1,.kol-2").collapse({ show: function(){ 
                    this.animate({ 
                        opacity: 'toggle',
                        height: 'toggle'
                     }, 300);
					
                 },
				head: 'h3',
                hide : function() { 
                    this.fadeOut();
                 }
             });

</script>



<?php if ($data_bar<>"" || $data<>""): ?>
	<script type='text/javascript' src='<?php echo htmlSpecialChars($basePath, ENT_QUOTES) ?>/js/highcharts.js'></script>
	<script type="text/javascript">
<?php Nette\Latte\Macros\CoreMacros::includeTemplate('graph.latte', array('data_bar' => $data_bar, 'catg_bar' => $catg_bar, 'data' => $data) + $template->getParams(), $_l->templates['fypms8til9'])->render() ?>
	</script>
<?php endif ;
}}

//
// block title
//
if (!function_exists($_l->blocks['title'][] = '_lbec7180c8b8_title')) { function _lbec7180c8b8_title($_l, $_args) { extract($_args)
?>
<h1><?php echo Nette\Templating\DefaultHelpers::escapeHtml($titul, ENT_NOQUOTES) ?></h1>
<?php
}}

//
// block todolist
//
if (!function_exists($_l->blocks['todolist'][] = '_lb07cea3f43a_todolist')) { function _lb07cea3f43a_todolist($_l, $_args) { extract($_args)
;$iterations = 0; foreach ($iterator = $_l->its[] = new Nette\Iterators\CachingIterator($todos) as $oblast=>$item): ?>
						<ul>
							<li id="todoc"><span><?php echo Nette\Templating\DefaultHelpers::escapeHtml($oblast, ENT_NOQUOTES) ?></span>
<?php if (is_array($item)): call_user_func(reset($_l->blocks['todolist']), $_l, array('todos' => $item) + $template->getParams()) ;else: if ($item <> ''): if ($user->isAllowed($item)): ?>
											<span class="ref"><a title="Přejít" href="<?php echo Nette\Templating\DefaultHelpers::escapeHtml($control->link("{$item}")) ?>
">&nbsp;&nbsp;&nbsp;&nbsp;</a></span>
<?php endif ;endif ;endif ?>
							</li>
						</ul>
<?php $iterations++; endforeach; array_pop($_l->its); $iterator = end($_l->its) ;
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
$_l->extends = '../@layout.latte' ?>


<?php $_ctrl = $control->getWidget("navigation"); if ($_ctrl instanceof Nette\Application\UI\IPartiallyRenderable) $_ctrl->validateControl(); $_ctrl->render()  ?>


<?php 
// template extending support
if ($_l->extends) {
	ob_end_clean();
	Nette\Latte\Macros\CoreMacros::includeTemplate($_l->extends, get_defined_vars(), $template)->render();
}
