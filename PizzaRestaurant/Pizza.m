//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Endeavour2 on 6/29/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

-(instancetype)initWithSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}
@end
