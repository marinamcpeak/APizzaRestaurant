//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "InputHandler.h"
#import "Pizza.h"

// User input call:
// NSString *formattedHoldString = [InputHandler formatUserInput]

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please enter the size of pizza you'd like, as well as the desired toppings (separated by spaces): ");
        
        Kitchen *restaurantKitchen = [[Kitchen alloc]init];
        
        while (TRUE) {
            
            NSString *formattedUserInputString = [InputHandler formatUserInput];
            
            NSMutableArray *commandWords = [formattedUserInputString componentsSeparatedByString:@" "];
            NSString *theSize = commandWords[0];
            
            NSLog(@"%@", theSize);
            [commandWords removeObject:commandWords[0]];
            Pizza *myPizza = [[Pizza alloc]initWithSize:small andToppings:commandWords];
            NSLog(@"%@",myPizza);
            
            // And then send some message to the kitchen...
        }

    }
    return 0;
}

