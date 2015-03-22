//
//  Tomato.m
//  Tomato Tap
//
//  Created by Timothy Winters on 3/2/15.
//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import "Tomato.h"

@implementation Tomato
-(instancetype)init {
    if(self = [super init]) {
        self = [Tomato spriteNodeWithImageNamed:@"seeds.jpg"];
        self.name = @"Tomato";
        self.waterLevel = 60;
        self.health = 100;
        self.stage = 0;
        counter = 0;
        self.waterDepletionRate = [NSTimer timerWithTimeInterval:10 target:self selector:@selector(timerRan) userInfo:nil repeats:YES];
               [[NSRunLoop mainRunLoop] addTimer:self.waterDepletionRate forMode:NSDefaultRunLoopMode];
            }
    return self;
}

-(void)timerRan {
    NSLog(@"%i",self.waterLevel);
    self.waterLevel -= 10;
    counter++;
    if(self.waterLevel >=150) {
        self.texture = [SKTexture textureWithImage:[UIImage imageNamed:@"tomato.jpg"]];
        self.stage = 1;
        NSLog(@"Stage is %i", self.stage);
    }
    if(self.waterLevel > 70 && self.waterLevel <130 && counter==5) {
        NSLog(@"Tomato plant is growing and needs water");
    self.texture = [SKTexture textureWithImage:[UIImage imageNamed:@"micro-greenery.jpg"]];
    } else if (self.waterLevel <=30 && self.waterLevel > 0) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"waterLevel" object:self];
    } else if (self.waterLevel <=0){
        NSLog(@"Tomato plant is dead");
        [self.waterDepletionRate invalidate];
    }
}


-(void)seed_Stage {
    if (self.stage ==1) {
        
    }
        }

-(void)seedling_Stage {
    
    }
    


-(void)sprout_Stage {
    
}

-(void)mature_Stage {
    
}











@end
