# frozen_string_literal: true

def read_input
    print "Your Answer >>> "
    user_input = gets.chomp
    user_input = user_input.strip.downcase
    read_exit(user_input)
    user_input
end

def read_number
    loop do
        user_input = read_input
        begin
            return Float(user_input)
        rescue ArgumentError
            puts "Invalid number. Please try again."
        end
    end
end

def read_exit(user_input)
    return unless %w[exit e].include?(user_input)

    puts "Thank you for using the Shapes CLI!"
    exit(0)
end
