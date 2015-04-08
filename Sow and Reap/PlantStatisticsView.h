//
//  PlantStatisticsView.h
//  Sow and Reap
//
//  Created by Erick Bennett on 3/12/15.
//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "plant.h"
@protocol PlantStatisticsView <NSObject>

@end
@interface PlantStatisticsView : UIView

@property (nonatomic, retain) UILabel *waterLevelLabel;
@property (nonatomic, retain) UIProgressView *waterLevelIndicator;
@property (nonatomic, retain) plant *thePlantInQuestion;
@property (nonatomic, retain) id <PlantStatisticsView> delegate;




-(void) didSelectPlantInfo:(NSInteger)PlantInfo;



-(void)ShowPlantStats;
-(void)HidePlantStats;


@end
