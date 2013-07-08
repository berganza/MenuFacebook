//
//  AppAlertView.m
//  facebook
//
//  Created by LLBER on 28/06/13.
//  Copyright (c) 2013 LLBER. All rights reserved.
//

#import "AppAlertView.h"

@implementation AppAlertView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/


- (void)drawRect:(CGRect)rect {
    
    
    for (UIView * subview in self.subviews) {
        if ([subview isMemberOfClass:[UIImageView class]]) {
            
            // subview.hidden = YES;
            
            [subview removeFromSuperview];
            
            // subview.backgroundColor = [UIColor blackColor];
            
        }
    }
    
    
}

@end














