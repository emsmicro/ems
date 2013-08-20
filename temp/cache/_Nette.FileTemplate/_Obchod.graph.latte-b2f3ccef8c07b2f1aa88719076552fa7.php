<?php //netteCache[01]000391a:2:{s:4:"time";s:21:"0.19821800 1359122090";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:69:"C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Obchod\graph.latte";i:2;i:1323615174;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xamlite\htdocs\ems\app\modules\Obchod\templates\Obchod\graph.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'i4ezukukhs')
;
// snippets support
if (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
if ($data_bar<>''): ?>
		var chart2;
			$(document).ready(function() {
				chart2 = new Highcharts.Chart({
					chart: {
						renderTo: 'container',
						defaultSeriesType: 'bar',
						backgroundColor: 'transparent',
					},
					title: {
						text: 'Stav nabídek',
						style: {
							color: '#FFF'
						},
					},
					xAxis: {
						labels: {
							style: {
								color: '#C48400'
							},
						},
						categories: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($catg_bar, ENT_NOQUOTES) ?>

					},
					yAxis: {
						min: 0,
						labels: {
							style: {
								color: '#C48400'
							},
						},
						title: {
							text: 'Počet nabídek',
							style: {
								color: '#FFF'
							},
						}
					},
					legend: {
						backgroundColor: 'transparent',
						style: {
							color: '#FFF'
						},
						reversed: true
					},
					tooltip: {
						formatter: function() {
							return ''+
								 this.point.name +': '+ this.y +'';
						}
					},
					plotOptions: {
						series: {
							stacking: 'normal',
							colorByPoint: true
						}
					},
				     series: [{ 
						name: 'Počet',
						data: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($data_bar, ENT_NOQUOTES) ?>

					}]
				});
			});			
			
<?php endif ?>
			
<?php if ($data<>""): ?>

			var chart;
			$(document).ready(function() {
				chart = new Highcharts.Chart({
					chart: {
						renderTo: 'container2',
						backgroundColor: 'transparent',
						plotBorderWidth: null,
						plotShadow: false
					},
					title: {
						text: 'Skladba ceny: <b><?php echo Nette\Templating\DefaultHelpers::escapeHtml($nproduct, ENT_NOQUOTES) ?></b>',
						style: {
							color: '#FFF'
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
							size: 190,
							dataLabels: {
								enabled: true,
								color: '#FFF',
								connectorWidth: 0,
								connectorColor: '#FFF',
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
						data: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($data, ENT_NOQUOTES) ?>

					}]
				});
			});
			
<?php endif ;
