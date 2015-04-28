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
        self = [Lettuce spriteNodeWithImageNamed:@"Sown.Tomato.png"];
        self.name = @"Lettuce";
        self.waterLevel = 40;
        self.health = 100;
        self.stage = 0;
        counter = 0;
        
        SKAction *wait = [SKAction waitForDuration:10];
        SKAction *performSelector = [SKAction performSelector:@selector(timerRan) onTarget:self];
        SKAction *sequence = [SKAction sequence:@[performSelector, wait]];
        SKAction *repeat   = [SKAction repeatActionForever:sequence];
        [self runAction:repeat withKey:@"plant_Cycle"];
    }
    
    return self;
}


-(void)timerRan {
    NSLog(@"Water Level is %i",self.waterLevel);
    NSLog(@"Health is %i", self.health);
    self.waterLevel -= 10;
    NSLog(@"counter is %i", counter);
    counter++;
    if( self.stage ==0 && counter >= 2) {
        self.stage = 1;
    }
    
    if(self.stage ==1 && counter >=4) {
        self.texture = [SKTexture textureWithImage:[UIImage imageNamed:@""]];
        
        self.stage++;
    }
    if(self.stage ==2 && counter >= 5) {
        self.texture =[SKTexture textureWithImageNamed:@""];
        
        self.stage++;
    }
    if(self.stage ==3 && counter >= 8) {
        self.texture = [SKTexture textureWithImageNamed:@""];
        
        self.stage++;
    }
    
    if (self.stage ==4 && counter >= 10) {
        self.texture = [SKTexture textureWithImageNamed:@""];
    }
    
    if(self.waterLevel >= 70) {
        NSLog(@"Lettuce plant needs water");
        self.health -=10;
    } else if (self.waterLevel <=30 && self.waterLevel >= 1) {
        NSLog(@"Lettuce plant is wilting");
        self.health -=20;
        //} else if (self.waterLevel <= 0) {
        //  self.health -=30;
    } else if (self.health <=0) {
        NSLog(@"Lettuce plant is dead");
        [self removeActionForKey:@"plant_Cycle"];
        [self removeFromParent];
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
