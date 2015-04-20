//
//  Background.h
//  Sow and Reap
//
//  Created by Timothy Winters on 4/20/15.
//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Grid2D.h"

static const NSInteger NumColumns = 3;
static const NSInteger NumRows = 3;


@interface Background : NSObject
- (Grid2D *)plantInSquare:(NSInteger)column row:(NSInteger)row;
@end
