<<<<<<< HEAD
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
=======
 class Card
  include Comparable
  
  attr_accessor :suit, :rank, :rank_names 
  
  def initialize(suit, rank)
    # Create a new card
    @suit = suit
    @rank = rank
    @rank_names = {
      '1': 'Ace',
      '11': 'Jack',
      '12': 'Queen',
      '13': 'King'
    }    
  end

  def face_card?
    # Is the card a face card (above 10)?
    @rank > 10
  end

  def <=>(other)
    @rank <=> other.rank
  end
  
  def to_s
    # Return human readable card
    rank = @rank_names[@rank.to_s.to_sym] || @rank.to_s
    suit = @suit.to_s
    suit[0] = suit[0].upcase
    "#{rank} of #{suit}"
  end
>>>>>>> d785f49315f21edd5329234273e9431f9c199eea
end