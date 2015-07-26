//
//  PureLayoutArrayExtensionLab.m
//  PureLayoutLab
//
//  Created by Tong G. on 7/27/15.
//  Copyright © 2015 TongKuo. All rights reserved.
//

#import "PureLayoutArrayExtensionLab.h"
#import "PureLayout.h"

@implementation PureLayoutArrayExtensionLab

@dynamic containerView;

@dynamic blueView;
@dynamic redView;
@dynamic yellowView;
@dynamic greenView;
@dynamic orangeView;

- ( void ) awakeFromNib
    {
    [ self addSubview: self.containerView ];
    [ self.containerView setSubviews: @[ self.blueView
                                       , self.redView
                                       , self.yellowView
                                       , self.greenView
                                       , self.orangeView
                                       ] ];

    [ self.containerView autoSetDimension: ALDimensionWidth toSize: 250.f relation: NSLayoutRelationGreaterThanOrEqual ];
    [ self.containerView autoSetDimension: ALDimensionHeight toSize: 450.f relation: NSLayoutRelationGreaterThanOrEqual ];
    [ self.containerView autoPinEdgesToSuperviewEdgesWithInsets: NSEdgeInsetsMake( 15.f, 15.f, 15.f, 15.f ) ];

    [ self.containerView.subviews.firstObject autoSetDimension: ALDimensionHeight toSize: 180.f ];
//    [ self.containerView.subviews.firstObject autoSetDimension: ALDimensionWidth toSize: 180.f ];
//    [ self.containerView.subviews autoMatchViewsDimension: ALDimensionHeight ];

//    [ self.containerView.subviews autoSetViewsDimension: ALDimensionWidth toSize: 15.f ];
//    [ self.containerView.subviews autoSetViewsDimension: ALDimensionHeight toSize: 30.f ];
    [ self.redView autoSetDimension: ALDimensionHeight toSize: 100.f ];
    [ self.yellowView autoSetDimension: ALDimensionHeight toSize: 250. ];
    [ self.greenView autoSetDimension: ALDimensionHeight toSize: 190.f ];
    [ self.orangeView autoSetDimension: ALDimensionHeight toSize: 60.f ];

//    [ self.redView autoSetDimension: ALDimensionWidth toSize: 100.f ];
//    [ self.yellowView autoSetDimension: ALDimensionWidth toSize: 250.f ];
//    [ self.greenView autoSetDimension: ALDimensionWidth toSize: 190.f ];
//    [ self.orangeView autoSetDimension: ALDimensionWidth toSize: 60.f ];
//    [ self.containerView.subviews autoMatchViewsDimension: ALDimensionWidth ];

    [ self.blueView autoAlignAxisToSuperviewAxis: ALAxisHorizontal ];
    [ self.containerView.subviews autoDistributeViewsAlongAxis: ALAxisHorizontal alignedTo: ALAttributeTop withFixedSize: 15.f insetSpacing: YES ];
//    [ self.containerView.subviews autoAlignViewsToEdge: ALEdgeTrailing ];

//    [ self.blueView autoPinEdgesToSuperviewEdgesWithInsets: NSEdgeInsetsMake( 15.f, 150.f, 0.f, 150.f ) excludingEdge: ALEdgeBottom ];
//    [ self.blueView autoPinEdgeToSuperviewEdge: ALEdgeTop withInset: 15.f relation: NSLayoutRelationEqual ];
    }

- ( NSView* ) containerView
    {
    if ( !_containerView )
        {
        self->_containerView = [ NSView newAutoLayoutView ];
        self->_containerView.wantsLayer = YES;
        self->_containerView.layer.backgroundColor = [ NSColor colorWithWhite: .2f alpha: 1.f ].CGColor;
        }

    return self->_containerView;
    }

- ( NSView* ) blueView
    {
    if ( !_blueView )
        {
        self->_blueView = [ NSView newAutoLayoutView ];
        self->_blueView.wantsLayer = YES;
        self->_blueView.layer.backgroundColor = [ NSColor blueColor ].CGColor;
        self->_blueView.identifier = @"bluev";
        }

    return self->_blueView;
    }

- ( NSView* ) redView
    {
    if ( !_redView )
        {
        self->_redView = [ NSView newAutoLayoutView ];
        self->_redView.wantsLayer = YES;
        self->_redView.layer.backgroundColor = [ NSColor redColor ].CGColor;
        self->_redView.identifier = @"redv";
        }

    return self->_redView;
    }

- ( NSView* ) yellowView
    {
    if ( !_yellowView )
        {
        self->_yellowView = [ NSView newAutoLayoutView ];
        self->_yellowView.wantsLayer = YES;
        self->_yellowView.layer.backgroundColor = [ NSColor yellowColor ].CGColor;
        self->_yellowView.identifier = @"yellowv";
        }

    return self->_yellowView;
    }

- ( NSView* ) greenView
    {
    if ( !_greenView )
        {
        self->_greenView = [ NSView newAutoLayoutView ];
        self->_greenView.wantsLayer = YES;
        self->_greenView.layer.backgroundColor = [ NSColor greenColor ].CGColor;
        self->_greenView.identifier = @"greenv";
        }

    return self->_greenView;
    }

- ( NSView* ) orangeView
    {
    if ( !_orangeView )
        {
        self->_orangeView = [ [ NSTextView alloc ] initForAutoLayout ];
        self->_orangeView.wantsLayer = YES;
        self->_orangeView.backgroundColor = [ NSColor orangeColor ];
        _orangeView.font = [ NSFont systemFontOfSize: 10.0 ];
        _orangeView.textColor = [ NSColor whiteColor ];
        _orangeView.alignment = NSCenterTextAlignment;
        _orangeView.string = NSLocalizedString( @"Lorem ipsum", nil );
        _orangeView.verticallyResizable = NO;
        self->_orangeView.identifier = @"orangev";
        }

    return self->_orangeView;
    }

@end
