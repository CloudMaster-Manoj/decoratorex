class BasicCar
    def initialize(cost,manufacturer,color)
        @cost = cost
        @model = manufacturer
        @color = color
        @description = "basic car"
    end
    def cost
        puts "the cost is #{@cost}"
        return @cost
    end
    def details
       return @description + " ; " + @color + " ; " + @model + ": #{@cost}"
    end
end

class CarDecorator
    def initialize(real_car)
        @real_car = real_car
        @extra_cost = 0
        @feature = "No extra feature"
    end
    def cost 
     return @extra_cost + @real_car.cost
    end
    def details
        return @feature + "  ; " + @real_car.details
    end
    
end


class ElectricWindowsDecorator < CarDecorator
    def initialize(real_car)
        super(real_car)
        @feature = "Electric Window"
        @extra_cost = 1000
    end
    def feature
        return @feature + " : #{@extra_cost} +" + @real_car.details
    end
end

class MirrorDecorator < CarDecorator
    def initialize(real_car)
        super(real_car)
        @feature = "Anti Glare view of the body"
        @extra_cost = 500
    end
    
    def feature
        return @feature + " : #{@extra_cost} +" + @real_car.details
    end
end

class ParkingDecorator < CarDecorator
    def initialize(real_car)
        super(real_car)
        @feature = "Parking sensors with high functionality"
        @extra_cost = 200
    end
    
    def feature
        return @feature + " : #{@extra_cost} +" + @real_car.details
    end
end
