//
//  BlurViewController.m
//  Floating Heads
//
//  Created by David Manuntag on 2015-02-18.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "BlurViewController.h"

@interface BlurViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *inboxView;
@property (strong, nonatomic) IBOutlet UIButton *exitButton;
@property (strong, nonatomic) IBOutlet UIImageView *profileImage1;
@property (strong, nonatomic) IBOutlet UIImageView *profileImage2;
@property (strong, nonatomic) IBOutlet UIImageView *profileImage3;
@property (strong, nonatomic) IBOutlet UIImageView *profileImage4;
@property (strong, nonatomic) IBOutlet UIImageView *profileImage5;

@end

@implementation BlurViewController
- (IBAction)dimissModalButton:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //round button
    self.exitButton.layer.cornerRadius = self.exitButton.bounds.size.width/2;
    
    [self applyBlurEffectToViewController];
  
    [self roundProfileImages];
    
}


-(void)applyBlurEffectToViewController {
    
    // apply blur effect to background
    
    UIVisualEffect * blurEffect;
    blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    
    UIVisualEffectView * uiVisualEffectView;
    uiVisualEffectView = [[UIVisualEffectView alloc]initWithEffect:blurEffect];
    
    uiVisualEffectView.frame = self.inboxView.bounds;
    [self.inboxView addSubview:uiVisualEffectView];
    
}

-(void)roundProfileImages {
    
    // round profile images
    self.profileImage1.layer.cornerRadius = self.profileImage1.frame.size.width/2;
    self.profileImage1.clipsToBounds = YES;
    
    self.profileImage2.layer.cornerRadius = self.profileImage2.bounds.size.width/2;
    self.profileImage2.clipsToBounds = YES;
    
    self.profileImage3.layer.cornerRadius = self.profileImage3.bounds.size.width/2;
    self.profileImage3.clipsToBounds = YES;
    
    self.profileImage4.layer.cornerRadius = self.profileImage4.bounds.size.width/2;
    self.profileImage4.clipsToBounds = YES;
    
    self.profileImage5.layer.cornerRadius = self.profileImage5.bounds.size.width/2;
    self.profileImage5.clipsToBounds = YES;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
