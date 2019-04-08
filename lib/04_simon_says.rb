def echo(string)
	return string
end


def shout(string)
	return string.upcase #.upcase permet de tout mettre en capital.
end


def repeat(string, times = 2)
	return ((string+" ")* times).chop #.chop permet de supprimer l'espace qu'on a du ajouter pour séparet les strings, et j'ai mis times=2 pour que ça se répète bien deux fois si l'utilisateur n'entre pas de chiffres).
end


def start_of_word(string, n1)
	return string [0, n1] #j'ai convertis le string en array et ai mis 0 dedans pour que ça affiche au moins la première lettre à chaque fois. 
end


def first_word(string)
	return string.split(" ").first #.split permet de diviser le string à l'espace et créra donc un tableau avec les morceaux et .first affichera le premier morceau, ici donc le premier mot.
end


def titleize(string)
	string = string.split(" ") #pareil qu'au dessus, .split va diviser le string à chaque espace et créer un tableau avec les mots.

	
	string.each do |word|
		if word.length > 3 #si la longueur du mot fait plus de 3 caractères alors la premiere lettre de chaque mot est en majuscule
			word[0] = word[0].upcase
		else  #si la longueur du mot fait moins de 3 caractères, alors il reste écrit en minuscule.
			word = word.downcase
		end
			
	end

	string = string.join(" ") #Reformer le string a partir du tableau des mot découpés en ajoutant un espace entre les mots.
	string = string[0].upcase #Ne pas oublié que la première lettre de la phrase doit être écrite en majuscule.A reprendre. Car là il ne prend en compte que la première lettre de tout le string et efface le reste. 


end
