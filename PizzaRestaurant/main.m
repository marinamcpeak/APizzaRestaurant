//
//  main.m
//  PizzaRestaurant
//
//  Created by Marina Mona June McPeak on 2019-05-30.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "AngryKitchenManager.h"
#import "CheeryKitchenManager.h"
#import "InputHandler.h"
#import "DeliveryService.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [[Kitchen alloc] init];
        AngryKitchenManager *angryKitchenManager = [[AngryKitchenManager alloc] init];
        CheeryKitchenManager *cheeryKitchenManager = [[CheeryKitchenManager alloc] init];
        DeliveryService *deliveryService = [[DeliveryService alloc] init];
        
        
        NSLog(@"Please select your manager of choice.\nEnter 1 for Angry Mangager, 2 for Cheery Manager, or 3 to get the pizza yourself.");

        while (YES) {
            
            NSString *formattedUserInputManagerString = [InputHandler formatUserInput];
            
            if ([formattedUserInputManagerString isEqualToString:@"1"]) {
                
                restaurantKitchen.delegate = angryKitchenManager;
                break;
                
            } else if ([formattedUserInputManagerString isEqualToString:@"2"]) {
                
                restaurantKitchen.delegate = cheeryKitchenManager;
                cheeryKitchenManager.deliveryService = deliveryService;
                break;
                
            } else if ([formattedUserInputManagerString isEqualToString:@"3"]) {
                
                restaurantKitchen.delegate = NULL;
                break;
                
            } else {
                
                NSLog(@"Oops, sorry, %@ not a valid input. Please try again.", formattedUserInputManagerString);
                
            }
        }
    
        
        while (YES) {
            
            NSLog(@"Please enter the size of pizza you'd like, as well as the desired toppings (separated by spaces). If you would like to see your history, type history:");
            
            NSString *formattedUserInputString = [InputHandler formatUserInput];
            
            if([formattedUserInputString isEqualToString: @"history"]) {
                [deliveryService printHistory];
            } else {
            
                Pizza *thePizza = [restaurantKitchen makePizzaWithSize:formattedUserInputString];
                
                if (thePizza == NULL) {
                    
                    continue;
                    
                } else {
                
                
                NSLog(@"%@",thePizza);
            
                }
            }
        }
        
    }
    return 0;
}
