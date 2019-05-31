//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Marina Mona June McPeak on 2019-05-30.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(NSString *)pizzaInfo {
    
    
    NSMutableArray *commandWords = [[pizzaInfo componentsSeparatedByString:@" "]mutableCopy];
    
    NSString *theSize = commandWords[0];
    if ([theSize isEqualToString:@"pepperoni"]) {
        NSLog(@"Test");
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
    
    Pizza *pizza = [[Pizza alloc] initWithSize:_pizzaSize andToppings:[commandWords subarrayWithRange:NSMakeRange(1, commandWords.count - 1)]];
    
    return pizza;
}

+ (Pizza *)largePepperoni {
    
    Pizza *pizza = [[Pizza alloc] initWithSize:2 andToppings:@[@"pepperoni", @"cheese", @"tomatoSauce"]];
    return pizza;
    
}

+ (Pizza *)meatLoversWithSize:(PizzaSize)size {
    
    Pizza *pizza = [[Pizza alloc] initWithSize:size andToppings:@[@"pepperoni", @"ham", @"sausage", @"cheese", @"tomatoSauce"]];
    return pizza;
    
}

+ (Pizza *)hawaiianWithSize:(PizzaSize)size {
    
    Pizza *pizza = [[Pizza alloc] initWithSize:size andToppings:@[@"pineapple", @"ham", @"cheese", @"tomatoSauce"]];
    return pizza;
    
}

@end
