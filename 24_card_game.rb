class Card
    attr_accessor :rank, :suit
    
    include Comparable
    def <=>(other)
        @rank <=> other.rank
    end
    
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end
    
    def ace_high_or_low
        if @rank == 1
            print "Enter 'h' for high or 'l' for low: "
            gets.chomp == "h" ? @rank += 13 : @rank = 1
        else
            puts "That card is not an ace, dummy!"
        end
        self
    end

    def face_card?
        @rank > 10
    end 
    
    def to_s
        case @rank
        when 14
            "Ace of #{@suit.to_s.capitalize}"
        when 13
            "King of #{@suit.to_s.capitalize}"
        when 12
            "Queen of #{@suit.to_s.capitalize}"
        when 11
            "Jack of #{@suit.to_s.capitalize}"
        when 1
            "Ace of #{@suit.to_s.capitalize}"
        else
            "#{@rank} of #{@suit.to_s.capitalize}"
        end
    end
end
