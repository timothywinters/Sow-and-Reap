//
//  StoreMenuView.h
//  Sow and Reap
//
//  Created by Timothy Winters on 3/9/15.
//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
@protocol StoreMenuDelegate <NSObject>

-(void) didSelectSeedType:(NSInteger)seedType;

@end

@interface StoreMenuView : SKView
@property (nonatomic) BOOL showing;
@property (nonatomic, retain) id <StoreMenuDelegate> delegate;


@property UIButton *seed1;
@property UIButton *seed2;


-(void)ShowStoreMenu;
-(void)HideStoreMenu;


@end




