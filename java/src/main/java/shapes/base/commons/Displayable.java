package shapes.base.commons;

public interface Displayable {
    default boolean isDisplayable() {
        return true;
    }

    default void display() {
        if (isDisplayable()) {
            System.out.println("Yes, this shape can be displayed.");
        } else {
            System.out.println("No, this shape cannot be displayed.");
        }
    }
}
