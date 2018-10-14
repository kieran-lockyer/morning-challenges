class BarTab
    def initialize
        sold_stock
        profitcost
        revenue
    end

    def take_order
        print "What drink would you like: "
        case choice
        when "cocktail"
            quantity[drinks.index("cocktails")] += 1
        when "water"
            quantity[drinks.index("waters")] += 1
        when "beer"
            quantity[drinks.index("beers")] += 1
        else
            puts "We only serve cocktails, beer or water."
        end
    end

    def drinks_sold
        
    end

    def total_profit

    end
end



