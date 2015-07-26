//
//  TweetCellViewSimulator.h
//  PureLayoutLab
//
//  Created by Tong G. on 7/26/15.
//  Copyright © 2015 TongKuo. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Line;

@interface TweetCellViewSimulator : NSView

@property ( weak ) IBOutlet Line* line;
@property ( strong ) IBOutlet NSScrollView* textScrollView;
@property ( weak ) IBOutlet NSImageView* image;

@end
