package DecoratorPattern;

public class Soy extends CondimentDecorator {
    Beverage beverage;

    public Soy(Beverage beverage) {
        this.beverage = beverage;
    }

    @Override
    public String gerDescription() {
        return beverage.gerDescription() + "Soy";
    }

    @Override
    public double cost() {
        return 0.99 + beverage.cost();
    }
    
}
