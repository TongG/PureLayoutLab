//
//  PureLayoutArrayExtensionLab.h
//  PureLayoutLab
//
//  Created by Tong G. on 7/27/15.
//  Copyright © 2015 TongKuo. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PureLayoutArrayExtensionLab : NSView
    {
@private
    NSView __strong* _containerView;

    NSView __strong* _blueView;
    NSView __strong* _redView;
    NSView __strong* _yellowView;
    NSView __strong* _greenView;
    NSTextView __strong* _orangeView;
    }

@property ( nonatomic, strong, readonly ) NSView* containerView;

@property ( nonatomic, strong, readonly ) NSView* blueView;
@property ( nonatomic, strong, readonly ) NSView* redView;
@property ( nonatomic, strong, readonly ) NSView* yellowView;
@property ( nonatomic, strong, readonly ) NSView* greenView;
@property ( nonatomic, strong, readonly ) NSView* orangeView;

@end
