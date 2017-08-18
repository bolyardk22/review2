def simple_meat(meatarray)
	cleanerma = meatarray.reject { |item| item.nil? || item == '' }
	if cleanerma.length == 0
		meatanswer = "no meat<br>"

	elsif cleanerma.length == 1
		meatanswer = "#{cleanerma[0]}<br>"

	elsif cleanerma.length == 2
		meatanswer = "#{cleanerma[0]}<br>#{cleanerma[1]}<br>"

	elsif cleanerma.length == 3
		meatanswer = "#{cleanerma[0]}<br>#{cleanerma[1]}<br>#{cleanerma[2]}<br>"

	elsif cleanerma.length == 4
		meatanswer = "#{cleanerma[0]}<br>#{cleanerma[1]}<br>#{cleanerma[2]}<br>#{cleanerma[3]}<br>"

	else
		meatanswer = "error<br>"
	end
	p meatanswer
end

def simple_veggie(vegarray)
	cleanerva = vegarray.reject { |item| item.nil? || item == '' }
	if cleanerva.length == 0
		veganswer = "no vegetables<br>"

	elsif cleanerva.length == 1
		veganswer = "#{cleanerva[0]}<br>"

	elsif cleanerva.length == 2
		veganswer = "#{cleanerva[0]}<br>#{cleanerva[1]}<br>"

	elsif cleanerva.length == 3
		veganswer = "#{cleanerva[0]}<br>#{cleanerva[1]}<br>#{cleanerva[2]}<br>"

	elsif cleanerva.length == 4
		veganswer = "#{cleanerva[0]}<br>#{cleanerva[1]}<br>#{cleanerva[2]}<br>#{cleanerva[3]}<br>"

	else
		veganswer = "error<br>"
	end
	veganswer
end

def simple_cheese(cheesearray)
	cleanerca = cheesearray.reject { |item| item.nil? || item == '' }
	if cleanerca.length == 0
		cheeseanswer = "no cheese<br>"

	elsif cleanerca.length == 1
		cheeseanswer = "#{cleanerca[0]}<br>"

	elsif cleanerca.length == 2
		cheeseanswer = "#{cleanerca[0]}<br>#{cleanerca[1]}<br>"

	elsif cleanerca.length == 3
		cheeseanswer = "#{cleanerca[0]}<br>#{cleanerca[1]}<br>#{cleanerca[2]}<br>"

	elsif cleanerca.length == 4
		cheeseanswer = "#{cleanerca[0]}<br>#{cleanerca[1]}<br>#{cleanerca[2]}<br>#{cleanerca[3]}<br>"

	else
		cheeseanswer = "error<br>"
	end
	cheeseanswer
end

def meat_box(meats)
	if meats.length == 0
end

def veg_box(vegs)

end

def cheese_box(cheeses)

end