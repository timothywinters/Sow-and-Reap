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
#import "PlantStatisticsView.h"



static const CGFloat SquareHeight = 64.0;
static const CGFloat SquareWidth = 64.0;
@class Background;
@interface GameScene : SKScene <SideMenuDelegate, TopMenuDelegate, StoreMenuDelegate, PlantStatisticsView> {
    
    SideMenuView *sideMenuView;
    TopMenuView *topMenuView;
    StoreMenuView *storeMenuView;
    PlantStatisticsView *plantStatsView;
}
@property (strong, nonatomic) SKNode *groundLayer;
//@property (strong, nonatomic) SKNode *plantsLayer;
//@property (strong, nonatomic) SKNode *gameLayer;
@property (strong, nonatomic) Background  *screen;


@property (nonatomic) SKNode  *field;
@property (nonatomic) Tomato *plant;
@property (nonatomic) Lettuce *plant1;
@property NSTimer *waterDepletionRate;
@property int waterLevel;
@property (nonatomic, strong) NSMutableArray *plants;
@property int Money;
@property (assign, nonatomic) NSInteger column;
@property (assign, nonatomic) NSInteger row;

- (plant *)plantInSquare:(NSInteger)column row:(NSInteger)row;

- (void)addSquares;

@end

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
