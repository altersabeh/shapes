namespace Shapes.Base.Commons;

public interface IDisplayable {
    bool ShouldDisplay() {
        return true;
    }

    void Display() {
        if (ShouldDisplay()) {
            Console.WriteLine("Yes, this shape can be displayed.");
        } else {
            Console.WriteLine("No, this shape cannot be displayed.");
        }
    }
}
