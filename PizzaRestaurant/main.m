//
//  main.m
//  PizzaRestaurant
//
//  Created by Marina Mona June McPeak on 2019-05-30.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "InputHandler.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please enter the size of pizza you'd like, as well as the desired toppings (separated by spaces): ");
        
        Kitchen *restaurantKitchen = [[Kitchen alloc]init];
        
        while (TRUE) {
            
            NSString *formattedUserInputString = [InputHandler formatUserInput];
            Pizza *thePizza = [restaurantKitchen makePizzaWithSize:formattedUserInputString];
            NSLog(@"%@",thePizza);
            
        }
        
    }
    return 0;
}
