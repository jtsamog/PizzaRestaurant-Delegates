//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Endeavour2 on 7/1/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService
-(void)deliverPizza:(Pizza *)pizza{
    [self.deliveryCar deliverPizza:pizza];
    [self.pizzasProducedLogs addObject:pizza];
}
-(NSArray *)pizzasDeliveredList{
    return self.pizzasProducedLogs;
}
@end
