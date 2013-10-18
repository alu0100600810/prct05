require "./gcd.rb"


def mcm(a, b)
	(a/gcd(a, b))*b
end
