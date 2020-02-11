require 'awesome_print'

def draw_letters
	letters = {A: 9, B: 2, C: 2, D: 4, E: 12, F: 2, G: 3, H: 2, I: 9, J: 1, K: 1, L: 4, M: 2, N: 6, O: 8, P: 2, Q: 1, R: 6, S: 4, T: 6, U: 4, V: 2, W: 2, X: 1, Y: 2, Z: 1}

	pool_of_letters = []
	
	letters.each do |letter, amount|
		amount.times do
			pool_of_letters << letter.to_s
		end
	end

	drawn_letters = []

	10.times do 
		letter = pool_of_letters.sample
		pool_of_letters.slice!(pool_of_letters.index(letter))
		drawn_letters << letter
	end

	drawn_letters.each do |letter|
		pool_of_letters << letter
	end

	return drawn_letters
end

print draw_letters