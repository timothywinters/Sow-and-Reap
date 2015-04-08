//
//  PlantStatisticsView.m
//  Sow and Reap
//
//  Created by Erick Bennett on 3/12/15.
//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import "PlantStatisticsView.h"

@implementation PlantStatisticsView

-(id)init {
    
    self = [super init];
    if (self) {
        
        self.frame = CGRectMake(0, 0, 100, 50);
        self.waterLevelLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 80, 20)];
        self.waterLevelLabel.backgroundColor = [UIColor clearColor];
        self.waterLevelLabel.text = @"Water Level!";
        [self addSubview:self.waterLevelLabel];
        
        self.waterLevelIndicator = [[UIProgressView alloc] initWithFrame:CGRectMake(0, 0, 80, 20)];
        self.waterLevelIndicator.progress = 0.0;
        
        [self addSubview:self.waterLevelIndicator];
        
    }
    
    return self;
    
}

-(void)layoutSubviews {
    
    self.waterLevelLabel.center = CGPointMake(self.frame.size.width/2, 20);
    self.waterLevelIndicator.center = CGPointMake(self.frame.size.width/2, 20);
    
}


-(void)didSelectPlantInfo:(NSInteger)PlantInfo {
    
}

-(void)ShowPlantStats {
    
}

-(void)HidePlantStats {
    
}
@end
