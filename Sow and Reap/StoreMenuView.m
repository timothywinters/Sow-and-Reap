//
//  StoreMenuView.m
//  Sow and Reap
//
//  Created by Timothy Winters on 3/9/15.
//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import "StoreMenuView.h"

@implementation StoreMenuView
-(id) init {
    self = [super init];
    
    if (self) {
        
        self.frame = CGRectMake(0, 0, 300, 130);
        
        self.backgroundColor = [UIColor grayColor];
        
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        
        self.center = CGPointMake(284, screenRect.size.height+ self.frame.size.height/2);
        
        
        UILabel *menuTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, self.frame.size.width, 20)];
        menuTitle.text = @"Choose your seed packet!";
        menuTitle.textAlignment = NSTextAlignmentCenter;
        menuTitle.font = [UIFont fontWithName:@"Chalkduster" size:18];
        [self addSubview:menuTitle];
        
        
        
        self.seed1 = [[UIButton alloc] initWithFrame: CGRectMake(40, 40, 80, 80)];
        [self.seed1.titleLabel setFont:[UIFont systemFontOfSize:10]];
        [self.seed1 setTitle: @"Lettuce" forState: UIControlStateNormal];
        [self.seed1 setBackgroundColor:[UIColor blueColor]];
        
        [self.seed1 addTarget:self action:@selector(sed1Clicked:)
               forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.seed1];
        
        
        
        self.seed2 = [[UIButton alloc] initWithFrame: CGRectMake(180, 40, 80, 80)];
        [self.seed2.titleLabel setFont:[UIFont systemFontOfSize:10]];
        [self.seed2 setTitle: @"Tomatoe" forState: UIControlStateNormal];
        [self.seed2 setBackgroundColor:[UIColor brownColor]];
        
        [self.seed2 addTarget:self action:@selector(sed2Clicked:)
               forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.seed2];
        
    }
    return self;
}

-(void) ShowStoreMenu {
    
    [UIView animateWithDuration:.25 animations:^{
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        
        self.center = CGPointMake(284, screenRect.size.height- self.frame.size.height/2);
        
        
    }];
}

-(void) HideStoreMenu {
    
    [UIView animateWithDuration:.25 animations:^{
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        
        self.center = CGPointMake(284, screenRect.size.height+ self.frame.size.height/2);
    }];
}

    
    
-(void)sed1Clicked:(id) sender{
[self.delegate didSelectSeedType:0];
    }

-(void)sed2Clicked:(id) sender {
[self.delegate didSelectSeedType:1];
    }

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/




@end
