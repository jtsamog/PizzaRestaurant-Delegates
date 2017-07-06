//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Endeavour2 on 7/1/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "Pizza.h"
#import "DeliveryCar.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _pizzasProducedLogs = [NSMutableArray new];
    }
    return self;
}
-(void)deliverPizza:(Pizza *)pizza{
    [self.deliveryCar deliverPizza:pizza];
    [self.pizzasProducedLogs addObject:pizza];
}
//-(NSArray *)pizzasDeliveredList{
//    return _pizzasProducedLogs;
//}
@end
