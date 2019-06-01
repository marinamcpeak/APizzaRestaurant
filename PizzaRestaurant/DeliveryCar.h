//
//  DeliveryCar.h
//  PizzaRestaurant
//
//  Created by Cameron Mcleod on 2019-05-31.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"


NS_ASSUME_NONNULL_BEGIN

@interface DeliveryCar : NSObject

-(void)deliverPizza:(Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END
