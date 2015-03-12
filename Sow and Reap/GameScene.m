//
//  GameScene.m
//  Sow and Reap
//
//  Created by Timothy Winters on 3/2/15.
//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import "GameScene.h"
#import "StoreMenuView.h"
@implementation GameScene
-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]){
        
        self.tomato_seeds = 5;
        self.lettuce_seeds = 5;
     /*
        SKLabelNode *menu = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        
        menu.text = @"Show Menu";
        menu.name = @"menuLabel";
        menu.fontSize = 28;
        menu.position = CGPointMake(self.frame.size.width - menu.frame.size.width/2 - 10,self.frame.size.height - 40);
        
        [self addChild:menu];
        */
        NSLog(@"Size: %@", NSStringFromCGSize(size));
        _Money = 50;
        self.mode = -1;
        self.plant_Type = 0;
        self.plants = [NSMutableArray array];
        
        /*
        self.Income = [SKLabelNode labelNodeWithFontNamed:@"Arial"];
        self.Income.text = [NSString stringWithFormat:@"Current income is %i", _Money];
        self.Income.fontSize = 15;
        self.Income.position = CGPointMake(480, 265);

        [self addChild:self.Income];
         */
        
        self.backgroundColor = [SKColor colorWithRed:0.27 green:0.24 blue:0.13 alpha:1.0];
        
        self.background = [SKSpriteNode spriteNodeWithImageNamed:@"gridPattern.png"];
        
        self.background.name = @"background";
        
        self.background.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
        
        [self addChild:self.background];
        
    

        
        
    }
    return self;
}

-(void)didMoveToView:(SKView *)view {
    
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(showMenu)];
      swipe.direction = UISwipeGestureRecognizerDirectionRight;
    
    [view addGestureRecognizer:swipe];
}

-(void) showMenu {
    if (topMenuView) {
        [topMenuView hideMenu];
    }
    
    if (!sideMenuView) {
        sideMenuView = [[SideMenuView alloc] init];
        sideMenuView.delegate = self;
        [self.view addSubview:sideMenuView];
        NSLog(@"money = %i", _Money);
        sideMenuView.income = _Money;
        [sideMenuView showMenu];
        
    } else {
        [sideMenuView hideMenu];
        sideMenuView = nil;
    }
}

-(void)didSwipe {
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        SKNode *touchedNode = [self nodeAtPoint:location];
        //NSLog(@"%@", touchedNode);
        NSLog(@"%li", (long)self.mode);
        NSLog(@"%@", touchedNode);
        NSLog(@"%ld", (long)self.plant_Type);
     /*
        if ([touchedNode.name isEqualToString:@"menuLabel"]) {
            if (topMenuView) {
                [topMenuView hideMenu];
            }
            
            if (!sideMenuView) {
                sideMenuView = [[SideMenuView alloc] init];
                sideMenuView.delegate = self;
                [self.view addSubview:sideMenuView];
                [sideMenuView showMenu];
                
            } else {
                [sideMenuView hideMenu];
                sideMenuView = nil;
            }
            
        } else {
       */
        if (self.mode != -1) {
        
            if ([touchedNode.name isEqualToString:@"Lettuce"]) {
                if(self.mode ==1) {
                    Lettuce  *lettuce = (Lettuce *)touchedNode;
                    [lettuce AddWater];
                }
                if (self.mode ==2) {
                    Lettuce *lettuce = (Lettuce *)touchedNode;
                    [lettuce Harvest_Plant];
                    lettuce.removeFromParent;
                    _Money +=10;
                    
                }
                
                if (self.mode ==0) {
                    Lettuce *lettuce = (Lettuce *)touchedNode;
                    [lettuce Plant_Seeds];
                    
                    
                }
            }  else if ([touchedNode.name isEqualToString:@"Tomato"]) {
                if(self.mode ==1) {
                    Tomato *tomato = (Tomato *)touchedNode;
                    [tomato AddWater];
                }
                if (self.mode ==2) {
                    Tomato *tomato =(Tomato *)touchedNode;
                    [tomato Harvest_Plant];
                    tomato.removeFromParent;
                    _Money +=20;
                }
                if (self.mode ==0) {
                    Tomato *tomato = (Tomato *)touchedNode;
                    [tomato Plant_Seeds];
                }
                
                
            }else if (self.mode ==0) {
                switch (self.plant_Type) {
                    case 0:
                    {
                        Tomato *tomato = [Tomato new];
                        tomato.position = location;
                        self.tomato_seeds -=1;
                        self.mode = -1;
                        [self addChild:tomato];
                    }
                        break;
                    case 1:
                    {
                        Lettuce *lettuce = [Lettuce new];
                        lettuce.position = location;
                        self.lettuce_seeds -=1;
                        self.mode = -1;
                        [self addChild:lettuce];
                    }
                        break;
                    default:
                        break;
                }
            }
            
        } else {
            
            //Do something if mode = -1
        }
    }
        //self.Income.text = [NSString stringWithFormat:@"Current income is %i", _Money];
   // }
    
}

#pragma -mark
#pragma SideMenu delegate
-(void)didSelectGameMode:(NSInteger)mode {
    self.mode = mode;
    
    [sideMenuView hideMenu];
    
    if (self.mode == 0){
        if (!topMenuView) {
            topMenuView = [[TopMenuView alloc] init];
            topMenuView.tomato_seeds = self.lettuce_seeds;
            topMenuView.lettuce_seeds = self.tomato_seeds;
            topMenuView.delegate = self;
            [self.view addSubview:topMenuView];
            [topMenuView showMenu];
            [storeMenuView HideStoreMenu];
            
        }
    }  else if(self.mode ==3){
        
        if(!storeMenuView) {
            
            storeMenuView = [[StoreMenuView alloc] init];
            storeMenuView.delegate = self;
            [self.view addSubview:storeMenuView];
            [storeMenuView ShowStoreMenu];
        }
    } else {
            [topMenuView hideMenu];
            topMenuView = nil;
            [storeMenuView HideStoreMenu];
            storeMenuView = nil;
        }
    }
    //NSLog(@"selected mode  %li", (long)mode);
    


#pragma -mark
#pragma TopMenu delegate
-(void)didSelectPlantType:(NSInteger)plantType {
    self.plant_Type = plantType;
    NSLog(@"selected plant type %li", (long)plantType);
    [topMenuView hideMenu];
    topMenuView = nil;
}


#pragma -mark
#pragma StoreMenu delegate
-(void)didSelectSeedType:(NSInteger)seedType {
    self.Seed_Type = seedType;
    if (seedType ==0 && _Money >0) {
        _tomato_seeds +=1;
        _Money -=10;
        self.Income.text = [NSString stringWithFormat:@"Current income is %i", _Money];

    } else if (seedType ==1 && _Money >0) {
        _lettuce_seeds +=1;
    _Money -=10;
        self.Income.text = [NSString stringWithFormat:@"Current income is %i", _Money]; }
    
    [storeMenuView HideStoreMenu ];
    storeMenuView = nil;

}




@end