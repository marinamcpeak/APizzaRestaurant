//
//  CheeryKitchenManager.h
//  PizzaRestaurant
//
//  Created by Marina Mona June McPeak on 2019-05-31.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

NS_ASSUME_NONNULL_BEGIN

@interface CheeryKitchenManager : NSObject <KitchenDelegate>

@property DeliveryService *deliveryService;

@end

NS_ASSUME_NONNULL_END
