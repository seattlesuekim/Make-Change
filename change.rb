def pos
	puts "Enter the total: "
	totalF = gets.chomp.to_f
	puts "Enter the amount given: "
	givenF = gets.chomp.to_f
	change = ((givenF - totalF) * 100).to_i
	while change < 0 do
		puts "The total was #{totalF}. We need $#{totalF - givenF} more. Fork it over."
		if change >= 0 then
			break
		else
			redo
		end
	end
end

def determineChange
	while change > 0 do
		dollars = (change / 100).floor
		change -= dollars
		quarters = (change / 25).floor
		change -= quarters
		dimes = (change / 10).floor
		change -= dimes
		nickels = (change / 5).floor
		change -= nickels
		cents = change
	end
end

def giveChange
	puts "Give the customer $#{dollars}, #{quarters} quarters, #{dimes} dimes, #{nickels} nickels, and #{change} cents."
end

