module shapes.base.commons.displayable;

import std.stdio;

interface Displayable {
    final bool shouldDisplay() const {
        return true;
    }

    final void display() const {
        if (shouldDisplay()) {
            writeln("Yes, this shape can be displayed.");
        } else {
            writeln("No, this shape cannot be displayed.");
        }
    }
}
