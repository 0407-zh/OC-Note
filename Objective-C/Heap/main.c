//
//  main.c
//  Heap
//
//  Created by 陳峻琦 on 24/5/2022.
//

#include <stdio.h>
#include <stdlib.h>

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person *p) {
    return p->weightInKilos / (p->heightInMeters * p->heightInMeters);
}

int main(int argc, const char * argv[]) {
    //为一个Person 结构体分配内存
    Person *mikey = (Person *)malloc(sizeof(Person));
    
    mikey->weightInKilos = 96;
    mikey->heightInMeters = 1.7;
    
    float mikeyBMI = bodyMassIndex(mikey);
    printf("mikey has a BMI of %f\n", mikeyBMI);
    
    //释放占用的内存，使之能够被重用
    free(mikey);
    
    //将指针变量赋为空
    mikey = NULL;
    
    return 0;
}
