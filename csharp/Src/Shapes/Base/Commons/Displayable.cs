namespace Shapes.Base.Commons;

public interface IDisplayable {
    bool IsDisplayable() {
        return true;
    }

    void Display() {
        if (IsDisplayable()) {
            System.Console.WriteLine("Yes, this shape can be displayed.");
        } else {
            System.Console.WriteLine("No, this shape cannot be displayed.");
        }
    }
}
