def who_is_bigger(a, b, c)
	 x = [a, b, c]
  if x[0] == nil || x[1] == nil || x[2] == nil
    maximum = "nil detected"
  else
    maximum = x.max
    if maximum == a
      maximum = "a is bigger"
    elsif maximum == b
      maximum = "b is bigger"
    else
      maximum = "c is bigger"
    end
  end
  return maximum #j'ai donc mis a, b et c dans un array et ensuité sorti le plus grand nombre avec .max
end


def reverse_upcase_noLTA(str)
	return str.reverse.upcase.tr("ALT", "")  #.tr permet de remplacer ALT par "" donc rien. 
end


def array_42(array)
	return array.include?(42) #.include?() regarde si l'array contient bien le chiffre 42.
end


def magic_array(array)
	return array.flatten.sort.map {|value|value*2}.reject{|n|n.modulo(3)==0}.uniq.sort #.uniq sert à ce qu'il n'y ai pas de chiffre en double et .sort pour qu'ils soient dans l'ordre.
end