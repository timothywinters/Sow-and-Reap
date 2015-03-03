//
//  GameScene.h
//  Sow and Reap
//

//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "Tomato.h"
#import "Lettuce.h"
@interface GameScene : SKScene
@property (nonatomic) SKNode  *field;
@property (nonatomic) Tomato *plant;
@property (nonatomic) Lettuce *plant1;
@property NSTimer *waterDepletionRate;
@property int waterLevel;
@property (nonatomic, strong) NSMutableArray *plants;

@end

//static NSString *const plantNodeName=@"movable";

@interface GameScene()
@property (nonatomic, strong) SKSpriteNode *background;
@property (nonatomic, strong) SKSpriteNode *selectedNode;
@property (nonatomic, strong) SKLabelNode *Water;
@property (nonatomic, strong) SKLabelNode *Plant_Seeds;
@property (nonatomic, strong) SKLabelNode *Harvest;

@end

bool isWatering;
bool isPlanting;
bool isHarvesting;
