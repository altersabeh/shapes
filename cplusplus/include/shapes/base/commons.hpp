#ifndef SHAPES_BASE_COMMONS_HPP
#define SHAPES_BASE_COMMONS_HPP

#include <map>
#include <string>
#include <vector>

namespace shapes::base {
namespace commons {
    class BaseShape {
      private:
        std::vector<std::map<std::string, double>> dimensions;

      public:
        BaseShape(const std::vector<std::map<std::string, double>>& dimensions);
        virtual ~BaseShape();
        [[nodiscard]]
        auto getDimensions() const -> const std::vector<std::map<std::string, double>>&;
        [[nodiscard]]
        auto showAvailableDimensionCount() const -> size_t;
        static auto validateShape() -> bool;
        virtual void printDescription() const = 0; // Pure virtual function
    };

    class Dimensional {
      public:
        virtual ~Dimensional();
        /**
         * Calculates the area of the shape.
         */
        [[nodiscard]]
        virtual auto area() const -> double
            = 0;
        /**
         * Calculates the perimeter of the shape.
         */
        [[nodiscard]]
        virtual auto perimeter() const -> double
            = 0;
    };

    class Displayable {
      public:
        virtual ~Displayable();
        [[nodiscard]]
        virtual auto shouldDisplay() const -> bool;
        virtual void display() const;
    };
} // namespace commons
} // namespace shapes::base

#endif // SHAPES_BASE_COMMONS_HPP
