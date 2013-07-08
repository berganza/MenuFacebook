//
//  ViewController.m
//  facebook
//
//  Created by LLBER on 28/06/13.
//  Copyright (c) 2013 LLBER. All rights reserved.
//

#import "ViewController.h"
#import "AppAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)showMenuPanGesture:(id)sender {
    
    CGPoint translation = [sender translationInView:self.fatherView];
    
    if ([sender state] == UIGestureRecognizerStateEnded) {
        if (self.fatherView.tag == 0) {
            if (self.fatherView.center.x <190) {
                CGRect fatherFrame = self.fatherView.frame;
                fatherFrame.origin.x = 0;
                
                [UIView animateWithDuration:0.20
                                      delay:0.0
                                    options:UIViewAnimationOptionAllowUserInteraction
                                 animations:^{
                                     [UIView animateWithDuration:0.20
                                                           delay:0.0
                                                         options:UIViewAnimationOptionAllowUserInteraction
                                                      animations:^{
                                                          self.fatherView.frame = fatherFrame;
                                                      } completion:nil];
                                 } completion:nil];
            }else{
                CGRect fatherFrame1 = self.fatherView.frame;
                CGRect fatherFrame2 = self.fatherView.frame;
                
                fatherFrame1.origin.x = 245;
                fatherFrame2.origin.x = 225;
                
                [UIView animateWithDuration:0.45
                                      delay:0.0
                                    options:UIViewAnimationOptionAllowUserInteraction
                                 animations:^{
                                     [UIView animateWithDuration:0.35
                                                           delay:0.0
                                                         options:UIViewAnimationOptionAllowUserInteraction
                                                      animations:^{
                                                          self.fatherView.frame = fatherFrame1;
                                                      }
                                                      completion:^(BOOL finished) {
                                                          [UIView animateWithDuration:0.10
                                                                                delay:0.0
                                                                              options:UIViewAnimationOptionAllowUserInteraction
                                                                           animations:^{
                                                                               self.fatherView.frame = fatherFrame2;
                                                                           }
                                                                           completion:nil];
                                                      }];
                                 }
                                 completion:nil];
                self.fatherView.tag = 1;
            }
        }else{
            
            if (self.fatherView.center.x > 385) {
                CGRect fatherFrame1 = self.fatherView.frame;
                CGRect fatherFrame2 = self.fatherView.frame;
                
                fatherFrame1.origin.x = 245;
                fatherFrame2.origin.x = 0;
                
                [UIView animateWithDuration:0.45
                                      delay:0.0
                                    options:UIViewAnimationOptionAllowUserInteraction
                                 animations:^{
                                     [UIView animateWithDuration:0.10
                                                           delay:0.0
                                                         options:UIViewAnimationOptionAllowUserInteraction
                                                      animations:^{
                                                          self.fatherView.frame = fatherFrame1;
                                                      }
                                                      completion:^(BOOL finished) {
                                                          [UIView animateWithDuration:0.35
                                                                                delay:0.0
                                                                              options:UIViewAnimationOptionAllowUserInteraction
                                                                           animations:^{
                                                                               self.fatherView.frame = fatherFrame2;
                                                                           }
                                                                           completion:nil];
                                                      }];
                                 }
                                 completion:nil];
                
                self.fatherView.tag = 0;
            
            } else if(self.fatherView.center.x >355) {
                
                CGRect fatherFrame = self.fatherView.frame;
                fatherFrame.origin.x = 225;
                
                [UIView animateWithDuration:0.20
                                      delay:0.0
                                    options:UIViewAnimationOptionAllowUserInteraction
                                 animations:^{
                                     [UIView animateWithDuration:0.20
                                                           delay:0.0
                                                         options:UIViewAnimationOptionAllowUserInteraction
                                                      animations:^{
                                                          self.fatherView.frame = fatherFrame;
                                                      }
                                                      completion:nil];
                                 }
                                 completion:nil];
                
            } else {
                translation.x = self.fatherView.center.x;
                
                CGRect fatherFrame = self.fatherView.frame;
                
                fatherFrame.origin.x = 0;
                
                CGFloat animateDuration = (translation.x-160)*0.35/225;
                
                [UIView animateWithDuration:animateDuration
                                      delay:0.0
                                    options:UIViewAnimationOptionAllowUserInteraction
                                 animations:^{
                                     [UIView animateWithDuration:animateDuration
                                                           delay:0.0
                                                         options:UIViewAnimationOptionAllowUserInteraction
                                                      animations:^{
                                                          self.fatherView.frame = fatherFrame;
                                                      }
                                                      completion:nil];
                                 }
                                 completion:nil];
                self.fatherView.tag = 0;
            }
        }
    } else {
        
        if (self.fatherView.center.x + translation.x > 405)
            translation.x = 405 - self.fatherView.center.x;
        else if(self.fatherView.center.x + translation.x <160)
            translation.x = 160 - self.fatherView.center.x;
        self.fatherView.center = CGPointMake(self.fatherView.center.x + translation.x, self.fatherView.center.y);
        
        [sender setTranslation:CGPointMake(0, 0) inView:self.fatherView];
    }
    
    
}















- (IBAction)alerta:(id)sender {
    
    AppAlertView *alert=[[AppAlertView alloc]initWithTitle:@"Esto es una alerta" message:@"Hola" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:nil];
    

    alert.backgroundColor=[UIColor colorWithRed:0.160 green:0.393 blue:0.314 alpha:1.000];
    

    [alert show];
    
  
}

    
    
    
    
    
    
    
    
@end




























