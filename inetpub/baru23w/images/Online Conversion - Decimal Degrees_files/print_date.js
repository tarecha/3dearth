var RobsDayOfWeek = new Array('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');
var RobsMonthName = new Array('January','February','March','April','May','June','July','August','September','October','November','December');
var RobstheDate = new Date();

document.write('<NOBR>' +
	RobsDayOfWeek[RobstheDate.getDay()] + ' ' +
	RobsMonthName[RobstheDate.getMonth()] + ' ' +
	RobstheDate.getDate() + ', ' +
	(RobstheDate.getYear() < 1900 ? RobstheDate.getYear() + 1900 : RobstheDate.getYear()) +
	'</NOBR>');
