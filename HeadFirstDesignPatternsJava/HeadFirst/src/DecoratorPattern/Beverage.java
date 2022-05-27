package DecoratorPattern;

public abstract class Beverage {
    String description = "Unknown Beverage";

    public String gerDescription() {
        return description;
    }

    public abstract double cost();
}