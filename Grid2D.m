//
//  Grid2D.m
//  Sow and Reap
//
//  Created by Timothy Winters on 4/20/15.
//  Copyright (c) 2015 Timothy Winters. All rights reserved.
//

#import "Grid2D.h"

@implementation Grid2D

- (NSString *)description {
    return [NSString stringWithFormat:@"type:%ld square:(%ld,%ld)", (long)self.plantType,
    (long)self.column, (long)self.row];
}


@end
