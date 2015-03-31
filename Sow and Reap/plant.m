//
//  plant.m
//  Sow and Reap
//
//  Created by Timothy Winters on 3/2/15.
//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import "plant.h"

@implementation plant

-(void)AddWater {
    self.waterLevel +=20;
    self.health +=5;
    NSLog(@"water Level is %i", self.waterLevel);
}

-(void)Plant_Seeds {
    NSLog(@"Planting seed");
}

-(void)Harvest_Plant {
    NSLog(@"Harvesting plant");
}

int stage = 0;

-(void)seed_Stage {
    
}
-(void)sprout_Stage {
    
}
-(void)seedling_Stage {
    
}
-(void)mature_Stage {
    
}

@end
