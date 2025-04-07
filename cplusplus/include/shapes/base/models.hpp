#ifndef SHAPES_BASE_MODELS_HPP
#define SHAPES_BASE_MODELS_HPP

#include "commons.hpp"

using namespace shapes::base::commons;

namespace shapes::base {
namespace models {
    class Circle : public BaseShape, public Dimensional, public Displayable {
      private:
        double radius;
        std::string color;
        [[nodiscard]]
        auto formatDimensions() const -> std::string;

      public:
        explicit Circle(double radius);
        [[nodiscard]]
        auto getColor() const -> const std::string&;
        void setColor(const std::string& value);
        [[nodiscard]]
        auto area() const -> double override;
        [[nodiscard]]
        auto perimeter() const -> double override;
        void printDescription() const override;
    };

    class Rectangle : public Dimensional {
      public:
        explicit Rectangle(double width, double height);
        [[nodiscard]]
        auto area() const -> double override;
        [[nodiscard]]
        auto perimeter() const -> double override;

      private:
        double width;
        double height;
    };

    class Square : public Dimensional {
      public:
        explicit Square(double side);
        [[nodiscard]]
        auto area() const -> double override;
        [[nodiscard]]
        auto perimeter() const -> double override;

      private:
        double side;
    };
} // namespace models
} // namespace shapes::base

#endif // SHAPES_BASE_MODELS_HPP
