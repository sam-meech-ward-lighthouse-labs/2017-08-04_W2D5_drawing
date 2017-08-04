//
//  ViewController.m
//  Drawing
//
//  Created by Sam Meech-Ward on 2017-08-04.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "ViewController.h"
#import "FingerSomething.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet FingerSomething *fingerSomething;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.fingerSomething];
    
    // Once I have the CGPoint, everything is the same
    NSLog(@"Touch began: %@", NSStringFromCGPoint(point));
    
    [self.fingerSomething moveToPoint:point];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.fingerSomething];
    
    // Once I have the CGPoint, everything is the same
    NSLog(@"Touch moved: %@", NSStringFromCGPoint(point));
    
    [self.fingerSomething drawLineToPoint:point];
}

//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    UITouch *touch = [touches anyObject];
//    CGPoint point = [touch locationInView:self.fingerSomething];
//
//    // Once I have the CGPoint, everything is the same
//    NSLog(@"Touch ended: %@", NSStringFromCGPoint(point));
//}

//- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    UITouch *touch = [touches anyObject];
//    CGPoint point = [touch locationInView:self.fingerSomething];
//
//    // Once I have the CGPoint, everything is the same
//    NSLog(@"Touch Cancelled: %@", NSStringFromCGPoint(point));

//}

- (IBAction)selectMagenta:(id)sender {
    self.fingerSomething.color = [UIColor magentaColor];
}

- (IBAction)selectRed:(id)sender {
    self.fingerSomething.color = [UIColor redColor];
}
- (IBAction)selectBlue:(id)sender {
    self.fingerSomething.color = [UIColor blueColor];
}


@end
