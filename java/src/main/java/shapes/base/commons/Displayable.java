package shapes.base.commons;

public interface Displayable {
    default boolean shouldDisplay() {
        return true;
    }

    default void display() {
        if (shouldDisplay()) {
            System.out.println("Yes, this shape can be displayed.");
        } else {
            System.out.println("No, this shape cannot be displayed.");
        }
    }
}
