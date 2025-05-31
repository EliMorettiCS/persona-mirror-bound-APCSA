@tool
extends EditorScript

var day
var month
var year
var dayspassed
	
func _init():
	day = 1
	month = 1
	year = 2025
	dayspassed = 0

func printdate():
	print(str(month)+"/"+str(day)+"/"+str(year).substr(2,3))
	
func nextday():
	dayspassed+=1
	if month == 1 or month == 2 or month == 4 or month == 6 or month == 7 or 9 or month == 11:
		if day >= 31:
			day = 1
			month += 1
		else:
			day += 1
	elif month == 3 or month == 5 or month == 10 or month == 12:
		if day >= 30:
			day = 1
			month += 1
		else:
			day += 1
	elif month == 8:
		if day >= 28:
			day = 1
			month += 1
		else:
			day += 1
	if month >= 12:
		month = 0
		year += 1
		
