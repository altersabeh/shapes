# frozen_string_literal: true

require_relative "handler"
require_relative "input_reader"

class Runner
    def initialize
        puts "=" * 53
        puts "Welcome to the Area and Perimeter Calculator!"
        puts "=" * 53
    end

    def self.starting_message
        puts "Choose a shape to calculate its area and perimeter."
        puts "  [C] CIRCLE"
        puts "  [R] RECTANGLE"
        puts "  [S] SQUARE"
        puts "Type '[E]XIT' to quit the program."
    end

    def run
        print_thank_you_message = proc do
            puts "Thank you for using the Shapes CLI!"
            puts "P.S. Did you know? The secret code is 42!"
        end

        loop do
            Runner.starting_message

            print "Enter a shape (or 'q' to quit): "
            shape = gets.strip.downcase

            if shape == "q"
                print_thank_you_message.call
                break
            end

            actions = {
                "circle" => -> { Handler.handle_circle },
                "c" => -> { Handler.handle_circle },
                "rectangle" => -> { Handler.handle_rectangle },
                "r" => -> { Handler.handle_rectangle },
                "square" => -> { Handler.handle_square },
                "s" => -> { Handler.handle_square }
            }

            action = actions.fetch(shape, lambda {
                puts "Invalid input. Please try again."
                puts "Type one of the listed options."
            })

            action.call

            puts "=" * 50
        end
    end
end
