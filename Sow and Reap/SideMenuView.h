//
//  MenuView.h
//  SpriteKitMenu
//
//  Created by Erick Bennett on 3/2/15.
//  Copyright (c) 2015 Erick Bennett. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@protocol SideMenuDelegate <NSObject>

-(void) didSelectGameMode:(NSInteger)mode;

@end

@interface SideMenuView : SKView
@property (nonatomic) BOOL showing;
@property (nonatomic, retain) id <SideMenuDelegate> delegate;


-(void) showMenu;
-(void) hideMenu;

@end
