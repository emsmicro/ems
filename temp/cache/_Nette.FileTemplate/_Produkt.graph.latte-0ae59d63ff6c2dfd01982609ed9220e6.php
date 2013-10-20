<?php //netteCache[01]000390a:2:{s:4:"time";s:21:"0.34564300 1382281597";s:9:"callbacks";a:2:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:68:"C:\xampp\htdocs\ems\app\modules\Obchod\templates\Produkt\graph.latte";i:2;i:1360233026;}i:1;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:10:"checkConst";}i:1;s:25:"Nette\Framework::REVISION";i:2;s:30:"f38d86f released on 2011-08-24";}}}?><?php

// source file: C:\xampp\htdocs\ems\app\modules\Obchod\templates\Produkt\graph.latte

?><?php list($_l, $_g) = Nette\Latte\Macros\CoreMacros::initRuntime($template, 'urxvayajrs')
;
// snippets support
if (!empty($control->snippetMode)) {
	return Nette\Latte\Macros\UIMacros::renderSnippets($control, $_l, get_defined_vars());
}

//
// main template
//
?>

		<!-- Funkce pro nastavení výšky divu pro graf -->

		
//		$.fn.equalizeHeights = function(){
//			return this.height( Math.max.apply(this, $(this).map(function(i,e){ return $(e).height() }).get() ) )
//		}
//		$('#tceny, #container_graph').equalizeHeights();
			

			<!-- Bar Graph -->
			
			var chart;
			$(document).ready(function() {
				chart = new Highcharts.Chart({
					chart: {
						renderTo: 'container_graph',
						defaultSeriesType: 'column'
					},
					title: {
						text: ''
					},
					legend: {
						shadow: true,
						layout: 'vertical',
						align: 'right',
						verticalAlign: 'middle'
					},
					xAxis: {
						categories: ['Kategorie ceny']
					},
					yAxis: {
						min: 0,
						opposite: true,
						tickInterval: 25,
						title: {
							text: '%'
						}
					},
					tooltip: {
						formatter: function() {
							return ''+
								 this.series.name +': '+ this.y +' Kč ('+ Math.round(this.percentage*10)/10 +'%)';
						}
					},
					plotOptions: {
						column: {
							stacking: 'percent'
						},
						series: {
						   pointWidth: 120
						}
					},
					series: <?php echo Nette\Templating\DefaultHelpers::escapeHtml($data_bar, ENT_NOQUOTES) ?>

				});

			});
