//
//  CheeryKitchenManager.m
//  PizzaRestaurant
//
//  Created by Marina Mona June McPeak on 2019-05-31.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "CheeryKitchenManager.h"

@implementation CheeryKitchenManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    return YES;
    
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    
    NSLog(@"Have a nice day!");
    
    return YES;
    
}

@end
