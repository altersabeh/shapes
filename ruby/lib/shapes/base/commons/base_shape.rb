# frozen_string_literal: true

class BaseShape
    attr_reader :dimensions

    def initialize(dimensions = [])
        # Initialize the BaseShape with a list of hashes representing dimensions.
        # Each hash should have a single key-value pair, e.g., `[{"width" => 12},
        # {"length" => 15}]`.
        @dimensions = dimensions
    end

    def print_description
        raise NotImplementedError, "Must implement print_description in #{self.class}"
    end

    def show_available_dimension_count
        @dimensions.length
    end

    def self.validate_shape
        true
    end
end
