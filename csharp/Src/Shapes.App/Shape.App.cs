using Shapes.Base.Models;
using Shapes.Client.Shell;

namespace Shapes.App;

class Program {
    static void Main(string[] args) {
        Runner program = new Runner();

        Circle circle = new Circle(15.25);
        circle.PrintDescription();

        program.Run();
    }
}
