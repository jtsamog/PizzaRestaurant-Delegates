//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Endeavour2 on 6/29/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PizzaSize){
    Small,
    Medium,
    Large
};

@interface Pizza : NSObject
@property (nonatomic, readonly) NSArray *toppings;
@property (nonatomic, readonly) PizzaSize size;

- (instancetype)initWithSize:(PizzaSize)size andToppings:(NSArray *)toppings;
@end
