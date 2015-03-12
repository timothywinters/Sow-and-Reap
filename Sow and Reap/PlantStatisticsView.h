//
//  PlantStatisticsView.h
//  Sow and Reap
//
//  Created by Erick Bennett on 3/12/15.
//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "plant.h"

@interface PlantStatisticsView : UIView

@property (nonatomic, retain) UILabel *waterLevelLabel;
@property (nonatomic, retain) UIProgressView *waterLevelIndicator;
@property (nonatomic, retain) plant *thePlantInQuestion;


@end
