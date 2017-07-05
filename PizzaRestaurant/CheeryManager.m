//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by Endeavour2 on 7/1/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager
-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return YES;
}
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return YES;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Thank you for your patronage! Have a great day");
    NSLog(@"Kitchen did make Pizza size %ld with %@", pizza.size, pizza.toppings);
    [self.deliveryService deliverPizza:pizza];
}
@end
