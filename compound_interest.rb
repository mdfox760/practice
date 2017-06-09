# Author       : Robert Richardson
# Date          : 07-12-2014
# Project       : Compound Interest
# Description : Calculate Compound Interest

# FV = PV * ( 1 + r/p) ^ n * p

def  calc_interest(pv, r, n, y)
	r = r / 100                             # Convert To Decimal
	fv = pv * (1 + (r / n))**(y * n)
	return fv                               # Future Value
end

def main()
	print "\nPresent Value: "
	pv = gets.chomp.to_f # present value
	print "\nInterest Rate: "
	r = gets.chomp.to_f # rate
	print "\nPeriods In Year: "
	n = gets.chomp.to_f # periods in year to grow
	print "\nYears To Grow: "
	y = gets.chomp.to_f # years
	print "\nTotal: "  + calc_interest(pv, r, n, y).to_s  + "\n"
	gets # pause the console
end

main()
