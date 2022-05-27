package DecoratorPattern;

public class Mocha extends CondimentDecorator {
    Beverage beverage;

    public Mocha(Beverage beverage) {
        this.beverage = beverage;
    }

    @Override
    public String gerDescription() {
        return beverage.gerDescription() + "Mocha";
    }

    @Override
    public double cost() {
        return 0.20 + beverage.cost();
    }
    
}
