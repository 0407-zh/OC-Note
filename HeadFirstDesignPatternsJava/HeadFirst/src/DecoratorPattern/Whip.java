package DecoratorPattern;

public class Whip extends CondimentDecorator {
    Beverage beverage;

    public Whip(Beverage beverage) {
        this.beverage = beverage;
    }

    @Override
    public String gerDescription() {
        return beverage.gerDescription() + "Whip";
    }

    @Override
    public double cost() {
        return 0.99 + beverage.cost();
    }
    
}
