package StrategyPattern.Duck;

import StrategyPattern.Fly.FlyBehavior;
import StrategyPattern.Quack.QuackBehavior;

public abstract class Duck {
    protected FlyBehavior flyBehavior;
    protected QuackBehavior quackBehavior;

    public Duck() {

    }

    public abstract void display();

    public void swim() {
        System.out.println("All ducks float, even decoys!");
    }

    //委托给行为类
    public void performFly() {
        flyBehavior.fly();
    }

    //委托给行为类
    public void performQuack() {
        quackBehavior.quack();
    }

    public void setFlyBehavior(FlyBehavior fb) {
        flyBehavior = fb;
    }

    public void setQuackBehavior(QuackBehavior qb) {
        quackBehavior = qb;
    }
}
