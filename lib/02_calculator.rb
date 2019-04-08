def add(n1, n2)
	 n1+n2
end


def subtract(n1, n2)
	n1 - n2
end


def sum(array)
	sum = 0 

	array.each {|n| sum += n}
	sum
end


def multiply(n1, n2)
	n1 * n2
end


def power(n1, n2)
	n1 ** n2
end


def factorial(n1)
	total = 1
  (1..n1).each do |n|
    total *= n   
  end
  total
end