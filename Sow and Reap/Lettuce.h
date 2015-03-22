//
//  Lettuce.h
//  Sow and Reap
//
//  Created by Timothy Winters on 3/2/15.
//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import "plant.h"

@interface Lettuce : plant
@property int waterLevel;
static int counter;
@property int stage;
@property int health;
-(void)seed_Stage;
-(void)sprout_Stage;
-(void)seedling_Stage;
-(void)mature_Stage;
@end