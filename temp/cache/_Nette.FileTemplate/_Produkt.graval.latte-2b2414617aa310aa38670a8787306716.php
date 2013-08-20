<?php //netteCache[01]000393a:2:{s:4:"time";s:21:"0.80707900 1360591657";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:71:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Produkt\graval.latte";i:2;i:1360591653;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Produkt\graval.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'dvqly28ghd')
;
// snippets support
if (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
?>
	var chart;
			$(document).ready(function() {
				chart = new Highcharts.Chart({
					chart: {
						renderTo: 'dgraph_<?php echo Nette\Templating\DefaultHelpers::escapeHtml($idg, ENT_NOQUOTES) ?>',
						animation: false,
						backgroundColor: 'transparent',
						plotBorderWidth: null,
						plotShadow: false,
						style: {
							right: '95px',
							top: '-50px',
						},
					},
					title: {
						text: '',
						style: {
							color: '#999'
						},
					},
					tooltip: {
						formatter: function() {
							return '<b>'+ this.point.name +'</b>: '+ Math.round(this.percentage*10)/10 +' %';
						}
					},
					plotOptions: {
						pie: {
							allowPointSelect: true,
							cursor: 'pointer',
							size: 210,
							animation: false,
							dataLabels: {
								enabled: true,
								color: '#000',
								connectorWidth: 0,
								connectorColor: '#999',
								distance: 5,
								formatter: function() {
									return this.point.name +': '+ Math.round(this.percentage*10)/10 +' %';
								},
								style: {
									padding: 3,
									fontSize: '10px'
								},
							}
						}
					},
				    series: [{
						type: 'pie',
						name: 'ceny',
						data: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($gr_data, ENT_NOQUOTES) ?>

					}]
				});
			});