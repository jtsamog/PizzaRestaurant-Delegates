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
    return ![toppings containsObject:@"anchovies"];
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Kitchen did make Pizza size %@ with %@", [pizza pizzaSizeToString], pizza.toppings);

    [self.deliveryService deliverPizza:pizza];
}
@end
