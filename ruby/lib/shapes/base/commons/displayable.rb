# frozen_string_literal: true

module Displayable
    def should_display
        true
    end

    def display
        if should_display
            puts "Yes, this shape is displayable."
        else
            puts "No, this shape is not displayable."
        end
    end
end
