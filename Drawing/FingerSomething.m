//
//  fingerSomething.m
//  Drawing
//
//  Created by Sam Meech-Ward on 2017-08-04.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "FingerSomething.h"

@interface FingerSomething()

@property (nonatomic, strong) UIBezierPath *path;

@end

@implementation FingerSomething

// From code
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _path = [UIBezierPath bezierPath];
        [_path setLineWidth:10.0];
    }
    return self;
}

// From a storyboard
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _path = [UIBezierPath bezierPath];
        [_path setLineWidth:10.0];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    [self.color setStroke];
    [self.path stroke];
}

- (void)moveToPoint:(CGPoint)point {
    [self.path moveToPoint:point];
}

- (void)drawLineToPoint:(CGPoint)point {
    [self.path addLineToPoint:point];
    
    [self setNeedsDisplay];
}
 

@end
