//
//  MenuView.m
//  SpriteKitMenu
//
//  Created by Erick Bennett on 3/2/15.
//  Copyright (c) 2015 Erick Bennett. All rights reserved.
//

#import "SideMenuView.h"

@implementation SideMenuView

-(id) init {
    self = [super init];
    
    if (self) {
        
        self.frame = CGRectMake(0, 10, 100, 300);
        
        self.backgroundColor = [UIColor blueColor];
        
        self.center = CGPointMake(-self.frame.size.width/2, self.center.y);

        
        UILabel *menuTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, self.frame.size.width, 20)];
        menuTitle.text = @"Menu";
        menuTitle.textAlignment = NSTextAlignmentCenter;
        menuTitle.font = [UIFont fontWithName:@"Chalkduster" size:18];
        [self addSubview:menuTitle];

        
        
        UIButton *button1 = [[UIButton alloc] initWithFrame: CGRectMake(10, 40, 80, 80)];
        
        [button1 setTitle: @"Seeds" forState: UIControlStateNormal];
        
        [button1 setBackgroundColor:[UIColor blueColor]];
        
        [button1 addTarget:self action:@selector(btn1Clicked:)
         forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button1];
        
        
        
        UIButton *button2 = [[UIButton alloc] initWithFrame: CGRectMake(10, 125, 80, 80)];
        
        [button2 setTitle: @"Water" forState: UIControlStateNormal];
        
        
        
        [button2 setBackgroundColor:[UIColor brownColor]];

        [button2 addTarget:self action:@selector(btn2Clicked:)
          forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button2];
        
        
        
        UIButton *button3 = [[UIButton alloc] initWithFrame: CGRectMake(10, 210, 80, 80)];
        
        [button3 setTitle: @"Harvest" forState: UIControlStateNormal];
        [button3 setBackgroundColor:[UIColor redColor]];

        [button3 addTarget:self action:@selector(btn3Clicked:)
          forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button3];
        
        

    }
    
    return self;
}

-(void) showMenu {
    
    [UIView animateWithDuration:.25 animations:^{
        self.center = CGPointMake(self.frame.size.width/2, self.center.y);
    }];
}

-(void) hideMenu {
    
    [UIView animateWithDuration:.25 animations:^{
        self.center = CGPointMake(-self.frame.size.width/2, self.center.y);
    }];
}


-(void)btn1Clicked:(id)sender {
    //We need to set a variable to state we are in seed planting mode
    [self.delegate didSelectGameMode:0];
}

-(void)btn2Clicked:(id)sender {
    //We need to set a variable to state we are in watering mode
    [self.delegate didSelectGameMode:1];

}

-(void)btn3Clicked:(id)sender {
    //We need to set a variable to state we are in harvesting mode
    [self.delegate didSelectGameMode:2];

}

@end
