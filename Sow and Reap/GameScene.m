//
//  GameScene.m
//  Sow and Reap
//
//  Created by Timothy Winters on 3/2/15.
//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import "GameScene.h"
@implementation GameScene
-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]){
        
        NSLog(@"Size: %@", NSStringFromCGSize(size));
        isWatering = false;
        isPlanting = false;
        isHarvesting = false;
        
        self.plants = [NSMutableArray array];
        
        self.Water =[SKLabelNode labelNodeWithFontNamed:@"Arial"];
        self.Water.text = @"Water";
        self.Water.fontSize = 15;
        self.Water.name = @"WaterNode";
        self.Water.position = CGPointMake(200, 250);
        
        self.Plant_Seeds = [SKLabelNode labelNodeWithFontNamed:@"Helvetica"];
        self.Plant_Seeds.text =@"Plant Seeds";
        self.Plant_Seeds.fontSize = 15;
        self.Plant_Seeds.name = @"SeedsNode";
        self.Plant_Seeds.position = CGPointMake(200, 225);
        
        self.Harvest = [SKLabelNode labelNodeWithFontNamed:@"Arial"];
        self.Harvest.text =@"Harvest Plants";
        self.Harvest.fontSize = 15;
        self.Harvest.name =@"HarvestNode";
        self.Harvest.position =CGPointMake(200, 200);
        
        self.backgroundColor = [SKColor colorWithRed:0.27 green:0.24 blue:0.13 alpha:1.0];
        self.plant = [Tomato new];
        self.plant.position = CGPointMake(400, self.plant.size.height/2);
        self.plant1 = [Lettuce new];
        self.plant1.position = CGPointMake(300, self.plant1.size.height/2);
        [self addChild:self.plant1];
        [self addChild:self.plant];
        [self addChild:self.Water];
        [self addChild:self.Plant_Seeds];
        [self addChild:self.Harvest];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        SKNode *touchedNode = [self nodeAtPoint:location];
        //NSLog(@"%@", touchedNode);
        
        if ([touchedNode.name isEqualToString:@"Lettuce"]) {
            NSLog(@"Lettuce plant touched");
            if(isWatering) {
                Lettuce  *lettuce = (Lettuce *)touchedNode;
                [lettuce AddWater];
                isWatering = FALSE;
            }
            if (isHarvesting) {
                Lettuce *lettuce = (Lettuce *)touchedNode;
                [lettuce Harvest_Plant];
                isHarvesting = FALSE;
                
            }
            
            if (isPlanting) {
                Lettuce *lettuce = (Lettuce *)touchedNode;
                [lettuce Plant_Seeds];
                isPlanting = FALSE;
            }
        }  else if ([touchedNode.name isEqualToString:@"Tomato"]) {
            NSLog(@"Tomato plant touched");
            if(isWatering) {
                Tomato *tomato = (Tomato *)touchedNode;
                [tomato AddWater];
                isWatering = FALSE;
            }
            if (isHarvesting) {
                Tomato *tomato =(Tomato *)touchedNode;
                [tomato Harvest_Plant];
                isHarvesting = FALSE;
            }
            if (isPlanting) {
                Tomato *tomato = (Tomato *)touchedNode;
                [tomato Plant_Seeds];
                isPlanting = FALSE;
            }
        } else if ([touchedNode.name isEqualToString:@"HarvestNode"]) {
            isHarvesting = TRUE;
            NSLog(@"Harvest Node Touched");
        } else if ([touchedNode.name isEqualToString:@"SeedsNode"]) {
            isPlanting = TRUE;
            NSLog(@"Seeds Node Touched");
        } else if ([touchedNode.name isEqualToString:@"WaterNode"]) {
            isWatering = TRUE;
            NSLog(@"Water Node Touched");
            
        }
    }
}

@end