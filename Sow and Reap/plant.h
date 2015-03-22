//
//  plant.h
//  Sow and Reap
//
//  Created by Timothy Winters on 3/2/15.
//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface plant : SKSpriteNode
@property NSTimer *waterDepletionRate;
@property NSTimer *GrowthRate;
@property int waterLevel;
@property int stage;
@property int health;


-(void)AddWater;
-(void)Plant_Seeds;
-(void)Harvest_Plant;

-(void)seed_Stage;
-(void)sprout_Stage;
-(void)seedling_Stage;
-(void)mature_Stage;
@end
