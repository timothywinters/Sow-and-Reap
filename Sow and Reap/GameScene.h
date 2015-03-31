//
//  GameScene.h
//  Sow and Reap
//

//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "Tomato.h"
#import "Lettuce.h"
#import "SideMenuView.h"
#import "TopMenuView.h"
#import "StoreMenuView.h"
#import "plant.h"

static const NSInteger NumColumns = 9;
static const NSInteger NumRows = 9;

@interface GameScene : SKScene <SideMenuDelegate, TopMenuDelegate, StoreMenuDelegate> {
    
    SideMenuView *sideMenuView;
    TopMenuView *topMenuView;
    StoreMenuView *storeMenuView;
}
@property (nonatomic) SKNode  *field;
@property (nonatomic) Tomato *plant;
@property (nonatomic) Lettuce *plant1;
@property NSTimer *waterDepletionRate;
@property int waterLevel;
@property (nonatomic, strong) NSMutableArray *plants;
@property int Money;

- (plant *)plantInSquare:(NSInteger)column row:(NSInteger)row;



@end

//static NSString *const plantNodeName=@"movable";

@interface GameScene()
@property (nonatomic, strong) SKSpriteNode *background;
@property (nonatomic, strong) SKSpriteNode *selectedNode;
@property (nonatomic, strong) SKLabelNode *Water;
@property (nonatomic, strong) SKLabelNode *Plant_Seeds;
@property (nonatomic, strong) SKLabelNode *Harvest;
@property (nonatomic, strong) SKLabelNode *Income;

//This gets set to a specific mode (number) when plant, water, or harvest is set
@property (nonatomic) NSInteger mode;
@property (nonatomic) NSInteger plant_Type;
@property (nonatomic) NSInteger tomato_seeds;
@property (nonatomic) NSInteger lettuce_seeds;
@property (nonatomic) NSInteger Seed_Type;


@end

bool isWatering;
bool isPlanting;
bool isHarvesting;
