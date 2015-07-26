//
//  Line.m
//  PureLayoutLab
//
//  Created by Tong G. on 7/26/15.
//  Copyright © 2015 TongKuo. All rights reserved.
//

#import "Line.h"

@implementation Line

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    [ [ NSColor colorWithSRGBRed: 196.f / 255 green: 140.f / 255 blue: 222.f / 255 alpha: 1.f ] set ];
    NSRectFill( dirtyRect );
}

@end
