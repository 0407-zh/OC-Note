package StrategyPattern.Duck;

import StrategyPattern.Fly.FlyWithWings;
import StrategyPattern.Quack.Quack;

public class MallardDuck extends Duck {

    public MallardDuck() {
        super();
        this.flyBehavior = new FlyWithWings();
        this.quackBehavior = new Quack();
    }

    @Override
    public void display() {
        System.out.println("I'm a real Mallaard duck");
    }
    
}
