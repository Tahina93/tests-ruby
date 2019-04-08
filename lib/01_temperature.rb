def ftoc(fahrenheit)
	fahrenheit = fahrenheit.to_f
	celsius = ((fahrenheit - 32)/1.8)
	celsius = celsius.round(1)
	
end


def ctof(celsius)
	celsius = celsius.to_f
	fahrenheit = ((celsius*1.8)+32)
	fahrenheit = fahrenheit.round(1)
	
end