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

- (NSString *)pizzaSizeToString {
    NSString *result;
    switch (self.size) {
        case Small:
            result = @"Small";
            break;
        case Medium:
            result = @"Medium";
            break;
        case Large:
            result = @"Large";
            break;
        default:
            break;
    }
    return result;
}

- (NSString *)description {
    NSString *result = [NSString stringWithFormat:@"Pizza of size: %@ with toppings: %@", [self pizzaSizeToString], self.toppings];
    return result;
}
@end
