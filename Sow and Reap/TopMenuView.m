//
//  MenuView.m
//  SpriteKitMenu
//
//  Created by Erick Bennett on 3/2/15.
//  Copyright (c) 2015 Erick Bennett. All rights reserved.
//

#import "TopMenuView.h"

@implementation TopMenuView

-(id) init {
    self = [super init];
    
    if (self) {
        
        self.frame = CGRectMake(0, 0, 300, 130);
        
        self.backgroundColor = [UIColor blueColor];
        
        self.center = CGPointMake(284, -self.frame.size.height/2);

        
        UILabel *menuTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, self.frame.size.width, 20)];
        menuTitle.text = @"Choose your seedlings!";
        menuTitle.textAlignment = NSTextAlignmentCenter;
        menuTitle.font = [UIFont fontWithName:@"Chalkduster" size:18];
        [self addSubview:menuTitle];

        
        
        UIButton *button1 = [[UIButton alloc] initWithFrame: CGRectMake(40, 40, 80, 80)];
        
        [button1 setTitle: @"Lettuce" forState: UIControlStateNormal];
        
        [button1 setBackgroundColor:[UIColor blueColor]];
        
        [button1 addTarget:self action:@selector(btn1Clicked:)
         forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button1];
        
        
        
        UIButton *button2 = [[UIButton alloc] initWithFrame: CGRectMake(180, 40, 80, 80)];
        [button2 setTitle: @"Tomatoe" forState: UIControlStateNormal];
        [button2 setBackgroundColor:[UIColor brownColor]];

        [button2 addTarget:self action:@selector(btn2Clicked:)
          forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button2];

    }
    
    return self;
}

-(void) showMenu {
    
    [UIView animateWithDuration:.25 animations:^{
        self.center = CGPointMake(self.center.x, self.frame.size.height/2);
    }];
}

-(void) hideMenu {
    
    [UIView animateWithDuration:.25 animations:^{
        self.center = CGPointMake(self.center.x, -self.frame.size.height/2);
    }];
}


-(void)btn1Clicked:(id)sender {
    [self.delegate didSelectPlantType:0];
    
    //We need to set a variable to state we are in seed planting mode
}

-(void)btn2Clicked:(id)sender {
    [self.delegate didSelectPlantType:1];

    //We need to set a variable to state we are in watering mode

}


@end
