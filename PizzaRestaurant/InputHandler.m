//
//  InputHandler.m
//  PizzaRestaurant
//
//  Created by Endeavour2 on 6/30/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
+(NSString *)getUserInput{
    char input[255];
    fgets(input, 255, stdin);
    
    NSString *parsedString = [[NSString stringWithCString:input encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return parsedString;
}



@end
