namespace Shapes.Base.Commons;

public interface IDisplayable {
    bool IsDisplayable() {
        return true;
    }

    void Display() {
        if (IsDisplayable()) {
            Console.WriteLine("Yes, this shape can be displayed.");
        } else {
            Console.WriteLine("No, this shape cannot be displayed.");
        }
    }
}
