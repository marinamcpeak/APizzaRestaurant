//
//  AngryKitchenManager.m
//  PizzaRestaurant
//
//  Created by Marina Mona June McPeak on 2019-05-31.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "AngryKitchenManager.h"

@implementation AngryKitchenManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings { 
    
    for (int i = 0; i < toppings.count; i++) {
        
        if ([toppings[i] isEqualToString:@"anchovies"]) {
            
            return NO;
            
        }
    }
    
    return YES;
    
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen { 
    
    return NO;
    
}

@end
