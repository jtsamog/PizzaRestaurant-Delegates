//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Kitchen.h"
#import "Pizza.h"
#import "Manager.h"
#import "CheeryManager.h"

int main(int argc, const char * argv[]){
    @autoreleasepool {
        
        
        NSLog(@"Please enter your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Manager *strictManager = [Manager new];
        CheeryManager *cheeryManager = [CheeryManager new];
        DeliveryService *deliveryService = [DeliveryService new];
        DeliveryCar *deliveryCar = [DeliveryCar new];
        strictManager.deliveryService = deliveryService;
        cheeryManager.deliveryService = deliveryService;
        deliveryService.deliveryCar = deliveryCar;
        PizzaSize pizzaSize;
        
        while (TRUE) {  // Loop forever
            
            NSString *inputString = [InputHandler getUserInput];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            NSString *size = commandWords[0];
            NSRange range = NSMakeRange(1, commandWords.count-1);
            NSArray *toppings = [commandWords subarrayWithRange:range];
            
            //validate pizza size with enum list
            if ([size isEqualToString:@"small"]) {
                pizzaSize = Small;
            }else if ([size isEqualToString:@"medium"]){
                pizzaSize = Medium;
            }else if ([size isEqualToString:@"large"]){
                pizzaSize = Large;
            }else{
                NSLog(@"Please enter a valid size: small, medium or large");
            continue;
            }
            
            // And then send some message to the kitchen...
            
            restaurantKitchen.delegate = strictManager; //set delegate to manager
            [restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppings];
            
//            restaurantKitchen.delegate = cheeryManager; //set delegate to cheery mgr
//            [restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppings];
            
            [deliveryService pizzasDeliveredList];
        }

    }
    return 0;
}

