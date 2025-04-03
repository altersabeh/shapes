module Dimensional
    def area
        raise NotImplementedError, "This #{self.class} cannot respond to area"
    end
    def perimeter
        raise NotImplementedError, "This #{self.class} cannot respond to perimeter"
    end
end
