//
//  Lettuce.m
//  Sow and Reap
//
//  Created by Timothy Winters on 3/2/15.
//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import "Lettuce.h"

@implementation Lettuce

-(instancetype)init {
    if(self = [super init]) {
        self = [Lettuce spriteNodeWithImageNamed:@"seeds.jpg"];
        self.name = @"Lettuce";
        self.waterLevel = 40;
        self.stage = 0;
        self.waterDepletionRate = [NSTimer timerWithTimeInterval:20 target:self selector:@selector(timerRan) userInfo:nil repeats:YES];
        [[NSRunLoop mainRunLoop] addTimer:self.waterDepletionRate forMode:NSDefaultRunLoopMode];
    }
    return self;
}

-(void)timerRan {
    NSLog(@"%i",self.waterLevel);
    self.waterLevel -= 10;
    if(self.waterLevel >=110) {
    self.texture = [SKTexture textureWithImage:[UIImage imageNamed:@"lettuce.jpg"]];
        NSLog(@"Your plant is doing well");
    }
    if(self.waterLevel > 60 && self.waterLevel <100) {
        NSLog(@"Lettuce plant needs watering");
    self.texture = [SKTexture textureWithImage:[UIImage imageNamed:@"micro-greenery.jpg"]];
    } else if (self.waterLevel <=20 && self.waterLevel > 0) {
        NSLog(@"Lettuce plant is wilting");
    } else if (self.waterLevel <=0){
        NSLog(@"Lettuce plant is dead");
        [self.waterDepletionRate invalidate];
    }
}

-(void)seed_Stage {
    
}

-(void)seedling_Stage {
    
}

-(void)sprout_Stage {
    
}

-(void)mature_Stage {
    
}


@end
