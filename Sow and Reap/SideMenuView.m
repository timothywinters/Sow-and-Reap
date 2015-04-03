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

        
        
        UIButton *button1 = [[UIButton alloc] initWithFrame: CGRectMake(20, 38, 60, 60)];
        
        [button1 setTitle: @"Seeds" forState: UIControlStateNormal];
        
        [button1 setBackgroundColor:[UIColor brownColor]];
        
        [button1 addTarget:self action:@selector(btn1Clicked:)
         forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button1];
        
        
        
        UIButton *button2 = [[UIButton alloc] initWithFrame: CGRectMake(20, 98, 60, 60)];
        
        [button2 setTitle: @"Water" forState: UIControlStateNormal];
        
        
        
        [button2 setBackgroundColor:[UIColor blueColor]];

        [button2 addTarget:self action:@selector(btn2Clicked:)
          forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button2];
 
        
        UIButton *button3 = [[UIButton alloc] initWithFrame: CGRectMake(20, 158, 60, 60)];
        
        [button3 setTitle: @"Harvest" forState: UIControlStateNormal];
        button3.titleLabel.font = [UIFont systemFontOfSize:12];
        [button3 setBackgroundColor:[UIColor redColor]];

        [button3 addTarget:self action:@selector(btn3Clicked:)
          forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button3];
        
        UIButton *button4 = [[UIButton alloc] initWithFrame: CGRectMake(20, 218, 60, 60)];
        
        [button4 setTitle: @"Store" forState: UIControlStateNormal];
        [button4 setBackgroundColor:[UIColor whiteColor]];
        [button4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button4 addTarget:self action:@selector(btn4Clicked:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button4];
        
        self.incomeLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 280,100, 20)];
        
        self.incomeLabel.font = [UIFont systemFontOfSize:12];
        
        self.incomeLabel.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:self.incomeLabel];
        
        

    }
    
    return self;
}

-(void) showMenu {
    
    self.incomeLabel.text = [NSString stringWithFormat:@"Income:$%li", (long)self.income];

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
         
-(void)btn4Clicked:(id)sender {
    [self.delegate didSelectGameMode:3];
}

@end