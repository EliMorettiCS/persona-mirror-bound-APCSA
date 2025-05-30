@tool
extends EditorScript
var day
var month
var year
var dayspassed
	
func _init():
	day = 30
	month = 5
	year = 2025
	dayspassed = 0

func printdate():
	print(str(month)+"/"+str(day)+"/"+str(year).substr(2,3))
	
func _run():
	printdate()
	
func nextday():
	dayspassed+=1
	if month == 1 or 2 or 4 or 6 or 7 or 9 or 11:
		if day >= 31:
			day = 0
			month += 1
		else:
			day += 1
	elif month == 3 or 5 or 10 or 12:
		if day >= 30:
			day = 0
			month += 1
		else:
			day += 1
	elif month == 8:
		if day >= 28:
			day = 0
			month += 1
		else:
			day += 1
	if month >= 12:
		month = 0
		year += 1
