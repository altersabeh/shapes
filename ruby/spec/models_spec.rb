# frozen_string_literal: true

require "rspec/autorun" if __FILE__ == $PROGRAM_NAME

require_relative "fixtures/helper"

DELTA = 0.001

RSpec.describe "Circle Tests" do
    context "area" do
        it "Test Circle Area" do
            circle = Helper.setup_circle
            result = circle.area
            expected = 754.767
            expect((result - expected).abs).to be < DELTA
        end
    end

    context "perimeter" do
        it "Test Circle Perimeter" do
            circle = Helper.setup_circle
            result = circle.perimeter
            expected = 97.389
            expect((result - expected).abs).to be < DELTA
        end
    end
end

RSpec.describe "Rectangle Tests" do
    context "area" do
        it "Test Rectangle Area" do
            rectangle = Helper.setup_rectangle
            result = rectangle.area
            expected = 756.437
            expect((result - expected).abs).to be < DELTA
        end
    end

    context "Perimeter Tests" do
        it "Test Rectangle Perimeter" do
            rectangle = Helper.setup_rectangle
            result = rectangle.perimeter
            expected = 112.0
            expect((result - expected).abs).to be < DELTA
        end
    end
end

RSpec.describe "Square" do
    context "area" do
        it "Test Square Area" do
            square = Helper.setup_square
            result = square.area
            expected = 105.062
            expect((result - expected).abs).to be < DELTA
        end
    end

    context "perimeter" do
        it "Test Square Perimeter" do
            square = Helper.setup_square
            result = square.perimeter
            expected = 41.0
            expect((result - expected).abs).to be < DELTA
        end
    end
end
