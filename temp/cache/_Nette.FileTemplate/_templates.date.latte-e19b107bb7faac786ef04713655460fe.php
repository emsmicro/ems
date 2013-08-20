<?php //netteCache[01]000381a:2:{s:4:"time";s:21:"0.47086000 1359281029";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:59:"C:\xamlite\htdocs\ems\app\modules\Base\templates\date.latte";i:2;i:1322932090;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Base\templates\date.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'nruys0g1o8')
;
// snippets support
if (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
?>

	<script type='text/javascript' src="<?php echo htmlSpecialChars($basePath) ?>/js/jquery-ui-1.8.16.custom.min.js"></script>
	<script type='text/javascript' src="<?php echo htmlSpecialChars($basePath) ?>/js/jquery-ui-timepicker-addon.js"></script>
	<script type='text/javascript' src="<?php echo htmlSpecialChars($basePath) ?>/js/jquery-ui-datepicker-cs.js"></script>
	<script type='text/javascript' src="<?php echo htmlSpecialChars($basePath) ?>/js/jquery-ui-timepicker-cs.js"></script>
	<script type='text/javascript' src="<?php echo htmlSpecialChars($basePath) ?>/js/dateInput.js"></script>
	<link rel="stylesheet" type="text/css" href="<?php echo htmlSpecialChars($basePath) ?>/css/ui-lightness/jquery-ui-1.8.16.custom.css " />
	<link rel="stylesheet" type="text/css" href="<?php echo htmlSpecialChars($basePath) ?>/css/dateInput.css" /></link>

	<script type="text/javascript">

	$(function() {
		$.timepicker.regional['cs'] = {
			timeOnlyTitle: 'Vyberte čas',
			timeText: 'Čas',
			hourText: 'Hodiny',
			minuteText: 'Minuty',
			secondText: 'Vteřiny',
			currentText: 'Nyní',
			closeText: 'Zavřít',
			timeFormat: 'h:m',
			ampm: false
		};
		$.timepicker.setDefaults($.timepicker.regional['cs']);

		$('input[data-dateinput-type]').dateinput({
			datetime: {
				dateFormat: 'd.m.yy',
				timeFormat: 'h:mm'
			},
			'datetime-local': {
				dateFormat: 'd.m.yy',
				timeFormat: 'h:mm'
			},
			date: {
				dateFormat: 'd.m.yy'
			},
			month: {
				dateFormat: 'MM yy'
			},
			week: {
				dateFormat: "w. 'týden' yy"
			},
			time: {
				timeFormat: 'h:mm'
			}
		});

		
	});

	</script>
