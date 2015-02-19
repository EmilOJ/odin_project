def stock_picker(prices)
	indecies = []
	profit = 0
	prices[0..-2].each_with_index do |price_buy, index_buy|
		prices[index_buy+1..-1].each_with_index do |price_sell, index_sell|
			index_sell += index_buy+1
			profit_suggestion = price_sell - price_buy
			if profit_suggestion > profit
				profit = profit_suggestion
				indecies = [index_buy, index_sell]
			end
		end 
	end
	indecies
end

# Test
p stock_picker([17,3,6,9,15,8,6,1,10]) == [1,4]