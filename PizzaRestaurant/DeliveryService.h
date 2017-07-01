//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Endeavour2 on 7/1/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

@interface DeliveryService : NSObject
@property (nonatomic) DeliveryCar *deliveryCar;
@property (nonatomic) NSMutableArray *pizzasProducedLogs;

-(void)deliverPizza:(Pizza *)pizza;
-(NSArray *)pizzasDeliveredList;

@end
