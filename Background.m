//
//  Background.m
//  Sow and Reap
//
//  Created by Timothy Winters on 4/20/15.
//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import "Background.h"

@implementation Background {
    Grid2D *_plants[NumColumns][NumRows];
}

- (Grid2D *)plantInSquare:(NSInteger)column row:(NSInteger)row {
    NSAssert1(column >= 0 && column < NumColumns, @"Invalid column: %ld", (long)column);
    NSAssert1(row >= 0 && row < NumRows, @"Invalid row: %ld", (long)row);

    return _plants[column][row];

}
@end
