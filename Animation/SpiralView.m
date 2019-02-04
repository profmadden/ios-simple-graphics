//
//  SpiralView.m
//  Animation
//
//  Created by Patrick Madden on 1/26/17.
//  Copyright © 2017 Binghamton CSD. All rights reserved.
//

#import "SpiralView.h"

@implementation SpiralView
@synthesize constraint;


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    NSLog(@"Redraw!");
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect bounds = [self bounds];
    
    [[UIColor blackColor] setFill];
    CGContextFillRect(context, bounds);
    
    [[UIColor whiteColor] setStroke];
    for (int i = 0; i < bounds.size.width; i += 10)
    {
        CGContextMoveToPoint(context, 0, 0);
        CGContextAddLineToPoint(context, i, bounds.size.height);
        CGContextStrokePath(context);
    }
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (initialWidth == 0)
        initialWidth = [constraint constant];
    float finalWidth;
    
    if (initialWidth == [constraint constant])
        finalWidth = initialWidth *2;
    else
        finalWidth = initialWidth;
    [constraint setConstant:finalWidth];
    [self setNeedsDisplay];
}
@end
