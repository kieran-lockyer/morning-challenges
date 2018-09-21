# The Company is currently wanting to produce another 500 units of product sku 276834, which is a lamp with 
# a circular base. Unfortunately, a staff member forgot to order the plywood to make the base and didn’t account 
# for the cost of this wood.

# Plywood can be purchased in 1200 X 2400 mm sheets at a cost of $28.47 per sheet.
# Each lamp base is a circle with a diameter of 320mm. 
# What is the total cost of ordering the plywood for the bases, and how much plywood is wasted?

<<<<<<< HEAD
plywood_len = 2400
plywood_wid = 1200
lamp_base_diam = 320
lamp_base_area = Math::PI * ((lamp_base_diam/2) ** 2)
lamp_offset = Math.sqrt((lamp_base_diam ** 2) - ((lamp_base_diam / 2) ** 2))

no_of_offset = 0
plywood_wid -= lamp_base_diam
while plywood_wid >= 0
    plywood_wid -= lamp_offset
    no_of_offset += 1
end
no_of_offset -= 1
plywood_wid = 1200

fits_in_height = 1 + no_of_offset
plywood_area = plywood_len * plywood_wid
lamps = (plywood_len / lamp_base_diam) * fits_in_height


plywood_boards_needed = (500.0 / lamps).ceil
cost = plywood_boards_needed * 28.47
waste = (plywood_boards_needed * plywood_area) - (500 * lamp_base_area)

puts "plywood boards needed: #{plywood_boards_needed}"
puts "waste: #{"%.2f" % Math.sqrt(waste)}mm squared"
puts "total cost: $#{cost}"
=======
class PlywoodSheet
    attr_accessor :width, :height, :cost

    def initialize(width, height, cost)
        @width = width
        @height = height
        @cost = cost
    end
    def surface_area
        return @width * @height
    end
    # Calculate how many lamp bases can be cut from this sheet.
    # Returns the number of bases and the surface area wasted.
    def how_many_bases(lamp_base)
        bases_per_sheet = (@width / lamp_base.diameter).to_i * (@height / lamp_base.diameter).to_i
        wastage = self.surface_area - (bases_per_sheet * lamp_base.surface_area)
        return bases_per_sheet, wastage
    end
end

class LampBase
    attr_accessor :radius

    def initialize(diameter)
        @radius = diameter / 2.0
    end
    def diameter
        return @radius * 2
    end
    def surface_area
        return Math::PI * @radius * @radius
    end
end

# main

# ASSUMPTION: Every plywood sheet (including the last one) has the maximum number of bases possible cut from it, even if this yields more than lamp_bases_required bases. The extras are assumed to be stored in a warehouse until needed.
plywood = PlywoodSheet.new(1200, 2400, 28.47)
lamp_base = LampBase.new(320)
lamp_bases_required = 500
# now compute the number of sheets required to have enough wood to make lamp_bases_required bases
# ceil is used to round up to the nearest integer, since we can't buy a fraction of a plywood sheet.
bases_per_sheet, wastage_per_sheet = plywood.how_many_bases(lamp_base)
sheets_required = (lamp_bases_required / bases_per_sheet).ceil
# compute cost and wastage totals
total_cost = sheets_required * plywood.cost
total_wastage = sheets_required * wastage_per_sheet

puts "You will need #{sheets_required} sheets of plywood which will cost a total of $#{total_cost}."
puts "You will waste #{(total_wastage / 1000000).round(3)} sq metres of plywood."
>>>>>>> a66f15b560d5615b416b1045b016e9e610546faf
