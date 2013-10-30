def pos
	puts "Enter the total: "
	totalF = gets.chomp.to_f
	while true do
		puts "Enter the amount given: "
		givenF = gets.chomp.to_f
		change = ((givenF - totalF) * 100).to_i
		if change >= 0 then
			return change
		else
			puts "The total was #{totalF}. We need $#{totalF - givenF} more. Fork it over."
			next
		end
	end
end


def determineChange(pos)

	change = pos()
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
	puts "Give the customer $#{dollars}, #{quarters} quarters, #{dimes} dimes, #{nickels} nickels, and #{change} cents."
end

determineChange(pos)