//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Endeavour2 on 7/1/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    if ([toppings containsObject:@"anchovies"]) {
        NSLog(@"Sorry, we do not make pizza with anchovies");
        return NO;
    }else{
        return YES;
    }
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Kitchen did make Pizza size %ld with %@", pizza.size, pizza.toppings);
    [self.deliveryService deliverPizza:pizza];
}
@end
