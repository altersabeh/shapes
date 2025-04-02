``` c#
string shape = ReadInput();

Action action = shape.ToLower() switch {
    "pizza" or "p" => Handler.HandleCircle,
    "toast" or "t" => Handler.HandleRectangle,
    "cracker" or "c" => Handler.HandleSquare,
    _ => () => {
        Console.WriteLine("WRONG CHOICE! ARE YOU BLIND?");
        Console.WriteLine("JUST PICK 'P', 'T', OR 'C'!");
    }
};

action();
```
