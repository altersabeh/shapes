# frozen_string_literal: true

module Dimensional
    def area
        raise NotImplementedError, "Must implement area in #{self.class}"
    end

    def perimeter
        raise NotImplementedError, "Must implement perimeter in #{self.class}"
    end
end
