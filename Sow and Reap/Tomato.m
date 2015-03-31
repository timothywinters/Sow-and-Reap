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
    self.health +=5;
    NSLog(@"%i", counter);
    counter++;
    if( self.stage ==0 && counter >= 2) {
        self.stage = 1;
    }
    
    if(self.stage ==1 && counter >=4) {
        self.texture = [SKTexture textureWithImage:[UIImage imageNamed:@"Seedling.Tomato.Border.png"]];

        self.stage++;
    }
    if(self.stage ==2 && counter >= 5) {
        self.texture =[SKTexture textureWithImageNamed:@"Green.Tomato.Border.png"];

        self.stage++;
    }
    if(self.stage ==3 && counter >= 8) {
        self.texture = [SKTexture textureWithImageNamed:@"Ripe.Tomato.Border.png"];
        
        self.stage++;
    }

    if(self.waterLevel > 70) {
        NSLog(@"Tomato plant needs water");
        self.health -=10;
    } else if (self.waterLevel <=30 && self.waterLevel > 0) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"waterLevel" object:self];
        self.health -=20;
    } else if (self.health <=0){
        NSLog(@"Tomato plant is dead");
        [self.waterDepletionRate invalidate];
    }
}


-(void)seed_Stage {
    if (self.stage ==0) {

    }
        }

-(void)seedling_Stage {
    if (self.stage ==1) {

    }
    }
    


-(void)sprout_Stage {
    if(self.stage ==2) {
    }
}

-(void)mature_Stage {
    if(self.stage ==3) {
    }
}











@end
