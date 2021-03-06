//
//  MSERFeature.m
//  SuperCool Logo Detector
//
//  Created by Leo Boyatzis on 3/04/2016.
//  Copyright © 2016 Leo Boyatzis. All rights reserved.
//

#import "MSERFeature.h"

@implementation MSERFeature

-(double) distace: (MSERFeature *) other
{
    return
    (self.numberOfHoles == other.numberOfHoles ? 1 : 10) *
    (log(fabs(self.convexHullAreaRate - other.convexHullAreaRate)) +
     log(fabs(self.minRectAreaRate - other.minRectAreaRate)) +
     log(fabs(self.skeletLengthRate - other.skeletLengthRate)) +
     log(fabs(self.contourAreaRate - other.contourAreaRate)));
}

-(NSString *)description
{
    return [NSString stringWithFormat:
            @"numberOfHoles: %li, convexHullAreaRate: %f, minRectAreaRate: %f, skeletLengthRate: %f, contourAreaRate: %f ",
            (long)self.numberOfHoles, self.convexHullAreaRate, self.minRectAreaRate, self.skeletLengthRate, self.contourAreaRate];
}

-(NSString *)toString
{
    return [NSString stringWithFormat:
            @"%li \t %f \t %f \t %f \t %f ",
            (long)self.numberOfHoles, self.convexHullAreaRate, self.minRectAreaRate, self.skeletLengthRate, self.contourAreaRate];
}

@end
