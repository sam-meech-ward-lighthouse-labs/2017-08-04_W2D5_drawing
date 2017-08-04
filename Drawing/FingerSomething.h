//
//  fingerSomething.h
//  Drawing
//
//  Created by Sam Meech-Ward on 2017-08-04.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

/// Does all the finger painting drawing.
@interface FingerSomething : UIView

- (void)moveToPoint:(CGPoint)point;

- (void)drawLineToPoint:(CGPoint)point;

@property (nonatomic, strong) UIColor *color;

@end
