<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang = "ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Pie Charts: Donut Hole</title>
	<link rel="stylesheet" href="/resources/css/style.css">
	<script type="text/javascript" src="/resources/js/jquery.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.mousewheel.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.canvaswrapper.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.colorhelpers.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.saturated.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.browser.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.drawSeries.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.errorbars.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.uiConstants.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.logaxis.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.symbol.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.flatdata.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.navigate.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.fillbetween.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.stack.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.touchNavigate.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.hover.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.touch.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.time.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.axislabels.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.selection.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.composeImages.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.legend.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flot.pie.js"></script>
	
	<script type="text/javascript">

	$(function() {

		var data = [],
			index = 0;
		
		<c:forEach var="_data" items="${data}">
			data[index] = {
					label: "${_data.key}",
					data: "${_data.value}"
			}
			index += 1;
		</c:forEach>
		
		var legendContainer = document.getElementById("legendContainer");
		
		$.plot("#placeholder", data, {
			series: {
				pie: {
					radius: 3/4,
					innerRadius: 0.5,
					show: true,
					label: {
						show: false
					}
				}
			},
			legend: {
				show: true,
				labelFormatter: labelFormatter
			}
		})

	});
	
	function labelFormatter(label, series) {
		return label + "&nbsp;" + Math.round(series.percent) + "%";
	}

	</script>
</head>
<body>
    <div id="header">
		<h2>Pie Charts</h2>
	</div>

	<div id="content">

		<div class="container">
			<div id="placeholder" class="placeholder"></div>
		</div>

	</div>
</body>
</html>