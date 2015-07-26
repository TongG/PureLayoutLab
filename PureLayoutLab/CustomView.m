//
//  CustomView.m
//  PureLayoutLab
//
//  Created by Tong G. on 7/26/15.
//  Copyright © 2015 TongKuo. All rights reserved.
//

#import "CustomView.h"
#import "ALView+PureLayout.h"

@implementation CustomView

- ( void ) awakeFromNib
    {
    [ self configureForAutoLayout ];
    [ self.superview removeConstraints: self.superview.constraints ];

//    [ self autoPinEdgesToSuperviewEdgesWithInsets: NSEdgeInsetsMake( 15.f, 15.f, 15.f, 15.f ) ];
    [ self autoPinEdgeToSuperviewEdge: ALEdgeLeft withInset: 15.f relation: NSLayoutRelationLessThanOrEqual ];
    [ self autoPinEdgeToSuperviewEdge: ALEdgeRight ];
    [ self autoPinEdgeToSuperviewEdge: ALEdgeTop ];
    [ self autoPinEdgeToSuperviewEdge: ALEdgeBottom ];
    }

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    [ [ NSColor purpleColor ] set ];
    NSRectFill( dirtyRect );
}

@end
