def simple_meat(meatarray,checkboxstring)
	cleanerma = meatarray.reject { |item| item.nil? || item == '' }
	if cleanerma.length == 0
		meatanswer = "#{checkboxstring}no meat<br>"

	elsif cleanerma.length == 1
		meatanswer = "#{checkboxstring}#{cleanerma[0]}<br>"

	elsif cleanerma.length == 2
		meatanswer = "#{checkboxstring}#{cleanerma[0]}<br>#{checkboxstring}#{cleanerma[1]}<br>"

	elsif cleanerma.length == 3
		meatanswer = "#{checkboxstring}#{cleanerma[0]}<br>#{checkboxstring}#{cleanerma[1]}<br>#{checkboxstring}#{cleanerma[2]}<br>"

	elsif cleanerma.length == 4
		meatanswer = "#{checkboxstring}#{cleanerma[0]}<br>#{checkboxstring}#{cleanerma[1]}<br>#{checkboxstring}#{cleanerma[2]}<br>#{checkboxstring}#{cleanerma[3]}<br>"

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
	if meats == 0
		meatboxquestion = '<input type="checkbox" id="#{meats[0]}" value="#{meats[0]}"> name="meatboxname">'

	elsif meats == 1
		meatboxquestion = '<input type="checkbox" id="#{meats[0]}#{meats[1]}" value="#{meats[0]}#{meats[1]}"> name="meatboxname">'

	elsif meats == 2
		meatboxquestion = '<input type="checkbox" id="#{meats[0]}#{meats[1]}#{meats[2]}" value="#{meats[0]}#{meats[1]}#{meats[2]}"> name="meatboxname">'

	elsif meats == 3
		meatboxquestion = '<input type="checkbox" id="#{meats[0]}#{meats[1]}#{meats[2]}#{meats[3]}" value="#{meats[0]}#{meats[1]}#{meats[2]}#{meats[3]}"> name="meatboxname">'

	else
		meatboxquestion = "error"
	end
end

def veg_box(vegs)
	"in progress"
end

def cheese_box(cheeses)
	"in progressss"
end