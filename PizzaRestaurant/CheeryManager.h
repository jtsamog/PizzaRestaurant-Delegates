//
//  CheeryManager.h
//  PizzaRestaurant
//
//  Created by Endeavour2 on 7/1/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

@interface CheeryManager : NSObject<KitchenDelegate>
@property (nonatomic) DeliveryService *deliveryService;

@end
