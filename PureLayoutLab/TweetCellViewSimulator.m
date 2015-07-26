//
//  TweetCellViewSimulator.m
//  PureLayoutLab
//
//  Created by Tong G. on 7/26/15.
//  Copyright © 2015 TongKuo. All rights reserved.
//

#import "TweetCellViewSimulator.h"
#import "PureLayout.h"
#import "Line.h"

@implementation TweetCellViewSimulator

- ( void ) awakeFromNib
    {
    [ self configureForAutoLayout ];
    [ self.superview removeConstraints: self.superview.constraints ];
    [ self removeConstraints: self.constraints ];

    [ self autoPinEdgesToSuperviewEdgesWithInsets: NSEdgeInsetsZero ];

    [ self.line configureForAutoLayout ];
    [ self.line autoSetDimension: ALDimensionWidth toSize: 5.f relation: NSLayoutRelationEqual ];
    [ self.line autoSetDimension: ALDimensionHeight toSize: 50.f relation: NSLayoutRelationGreaterThanOrEqual ];
    [ self.line autoPinEdgesToSuperviewEdgesWithInsets: NSEdgeInsetsMake( 15.f, 15.f, 15.f, 0 ) excludingEdge: ALEdgeTrailing ];

    [ self.textScrollView configureForAutoLayout ];
    [ self.image configureForAutoLayout ];

    [ NSView autoSetPriority: NSLayoutPriorityDefaultHigh
              forConstraints: ( ALConstraintsBlock )^( void )
            {
            [ self.textScrollView autoSetDimension: ALDimensionWidth toSize: 150.f relation: NSLayoutRelationGreaterThanOrEqual ];
            [ self.textScrollView autoSetDimension: ALDimensionHeight toSize: 100.f relation: NSLayoutRelationGreaterThanOrEqual ];
            [ self.textScrollView autoPinEdge: ALEdgeLeading toEdge: ALEdgeTrailing ofView: self.line withOffset: 6.f relation: NSLayoutRelationEqual ];
            [ self.textScrollView autoPinEdge: ALEdgeTrailing toEdge: ALEdgeTrailing ofView: self.textScrollView.superview withOffset: -15.f relation: NSLayoutRelationEqual ];
            [ self.textScrollView autoPinEdge: ALEdgeTop toEdge: ALEdgeTop ofView: self.textScrollView.superview withOffset: 15.f relation: NSLayoutRelationEqual ];
            [ self.textScrollView autoPinEdge: ALEdgeBottom toEdge: ALEdgeTop ofView: self.image withOffset: -15.f relation: NSLayoutRelationEqual ];
            } ];

    [ self.image autoSetDimension: ALDimensionHeight toSize: 100.f relation: NSLayoutRelationGreaterThanOrEqual ];
    [ self.image autoMatchDimension: ALDimensionHeight toDimension: ALDimensionWidth ofView: self withMultiplier: 0.618f relation: NSLayoutRelationEqual ];
    [ self.image autoPinEdge: ALEdgeLeading toEdge: ALEdgeTrailing ofView: self.line withOffset: 6.f relation: NSLayoutRelationEqual ];
    [ self.image autoPinEdge: ALEdgeTrailing toEdge: ALEdgeTrailing ofView: self.image.superview withOffset: -15.f relation: NSLayoutRelationEqual ];
    [ self.image autoPinEdge: ALEdgeTop toEdge: ALEdgeBottom ofView: self.textScrollView withOffset: 15.f relation: NSLayoutRelationEqual ];
    [ self.image autoPinEdge: ALEdgeBottom toEdge: ALEdgeBottom ofView: self.image.superview withOffset: -15.f relation: NSLayoutRelationEqual ];
    }

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    [ [ NSColor whiteColor ] set ];
    NSRectFill( dirtyRect );
}

@end
