//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Marina Mona June McPeak on 2019-05-30.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray*) arrayOfPizzaToppings
{
    self = [super init];
    if (self) {
        _pizzaSize = size;
        _pizzaToppings = arrayOfPizzaToppings;
    }
    return self;
}

-(NSString *)description{
    
    NSString *desc = [NSString stringWithFormat: @"Pizza - size: @%@\n Toppings: %@", @[@"small", @"medium", @"large"] [_pizzaSize], _pizzaToppings ];
    
    return desc;
}
@end
