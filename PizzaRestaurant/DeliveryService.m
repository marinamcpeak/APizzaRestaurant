//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Cameron Mcleod on 2019-05-31.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"

@interface DeliveryService()

@property DeliveryCar *deliveryCar;

@end

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _history = [[NSMutableArray alloc] init];
        _deliveryCar =[[DeliveryCar alloc] init];
        
    }
    return self;
}

-(void)deliverPizza:(Pizza *)pizza {
    [self.deliveryCar deliverPizza: pizza];
    [self.history addObject:pizza.description];
}

-(void)printHistory {
    for(NSString* delivery in self.history) {
        NSLog(@"%@", delivery);
    }
}

@end
