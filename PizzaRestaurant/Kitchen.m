//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Marina Mona June McPeak on 2019-05-30.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
@class Pizza;

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(NSString *)pizzaInfo {
    
    NSMutableArray *commandWords = [[pizzaInfo componentsSeparatedByString:@" "]mutableCopy];
    
    NSString *theSize = commandWords[0];
    
    if ([theSize isEqualToString:@"pepperoni"]) {
        
        Pizza *pizza = [Kitchen largePepperoni];
        
        return pizza;
        
    }
    

    if(commandWords.count > 0) {
        
        if ( [theSize isEqualToString:@"small"]) {
            
            _pizzaSize = 0;
            
        } else if ([theSize isEqualToString:@"medium"]) {
            
            _pizzaSize = 1;
            
        } else if ([theSize isEqualToString:@"large"]) {
            
            _pizzaSize = 2;
            
        }
        if ([commandWords[1] isEqualToString:@"meatlovers"]) {
            
            Pizza *pizza = [Kitchen meatLoversWithSize:_pizzaSize];
            return pizza;
        }
        if ([commandWords[1] isEqualToString:@"hawaiian"]) {
            
            Pizza *pizza = [Kitchen hawaiianWithSize:_pizzaSize];
            return pizza;
        }
    
    }
    
    NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count - 1)];
    
    if (self.delegate == NULL) {
        
        return [[Pizza alloc] initWithSize:_pizzaSize andToppings:toppings];
        
    }
    
    if ([self.delegate kitchen:self shouldMakePizzaOfSize:_pizzaSize andToppings:toppings]) {
        
        if ([self.delegate kitchenShouldUpgradeOrder:self]) {
            
            _pizzaSize = large;
            
        }
        
        Pizza *pizza = [[Pizza alloc] initWithSize:_pizzaSize andToppings:toppings];
        
        if( [self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)] ) {
            
            [self.delegate kitchenDidMakePizza:pizza];
            
        }
        
        return pizza;
        
    } else {
        
        NSLog(@"No pizza could be delivered.");
        
        return nil;
    }

}

+ (Pizza *)largePepperoni {
    
    Pizza *pizza = [[Pizza alloc] initWithSize:2 andToppings:@[@"pepperoni",
                                                               @"cheese",
                                                               @"tomato sauce"]];
    return pizza;
    
}

+ (Pizza *)meatLoversWithSize:(PizzaSize)size {
    
    Pizza *pizza = [[Pizza alloc] initWithSize:size andToppings:@[@"pepperoni",
                                                                  @"ham",
                                                                  @"sausage",
                                                                  @"cheese",
                                                                  @"tomato sauce"]];
    return pizza;
    
}

+ (Pizza *)hawaiianWithSize:(PizzaSize)size {
    
    Pizza *pizza = [[Pizza alloc] initWithSize:size andToppings:@[@"pineapple",
                                                                  @"ham",
                                                                  @"cheese",
                                                                  @"tomato sauce"]];
    return pizza;
    
}

@end
