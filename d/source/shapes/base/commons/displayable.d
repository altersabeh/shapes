module shapes.base.commons.displayable;

import std.stdio;

interface Displayable {
    final bool isDisplayable() const {
        return true;
    }

    final void display() const {
        if (isDisplayable()) {
            writeln("Yes, this shape can be displayed.");
        } else {
            writeln("No, this shape cannot be displayed.");
        }
    }
}
