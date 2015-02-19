//
//  BlurViewController.m
//  Floating Heads
//
//  Created by David Manuntag on 2015-02-18.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "BlurViewController.h"
#import "AddContactProtocol.h"
#import "ViewController.h"

@interface BlurViewController ()

@property (strong, nonatomic) ViewController * vc;

@property (strong, nonatomic) IBOutlet UIImageView *inboxView;
@property (strong, nonatomic) IBOutlet UIButton *exitButton;

@property (strong, nonatomic) IBOutlet UIButton *profileButton1;
@property (strong, nonatomic) IBOutlet UIButton *profileButton2;
@property (strong, nonatomic) IBOutlet UIButton *profileButton3;
@property (strong, nonatomic) IBOutlet UIButton *profileButton4;

@property (strong, nonatomic) IBOutlet UIButton *profileButton5;


@end

@implementation BlurViewController


- (IBAction)dimissModalButton:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //round button
    self.exitButton.layer.cornerRadius = self.exitButton.bounds.size.width/2;
    
    self.exitButton.layer.shadowColor = [UIColor grayColor].CGColor;
    self.exitButton.layer.shadowOffset= CGSizeMake(2, 2);
    self.exitButton.layer.shadowOpacity= 1;
    self.exitButton.layer.shadowRadius = 1.0;
    
    //to do: use shadow path for google material design effect
    
    [self applyBlurEffectToViewController];
  
    [self roundProfileImages];
    
    
}

- (IBAction)profile1Button:(id)sender {
   
    [self.delegate didTapButton:self buttonIndexNumber:@0];
    
}
- (IBAction)profile2Button:(id)sender {
    
    [self.delegate didTapButton:self buttonIndexNumber:@1];
    
}

- (IBAction)profile3Button:(id)sender {
    
    [self.delegate didTapButton:self buttonIndexNumber:@2];
    
}

- (IBAction)profile4Button:(id)sender {
    
    [self.delegate didTapButton:self buttonIndexNumber:@3];
}

- (IBAction)profile5Button:(id)sender {
    
    [self.delegate didTapButton:self buttonIndexNumber:@4];
    
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
    self.profileButton1.layer.cornerRadius = self.profileButton1.frame.size.width/2;
    self.profileButton1.clipsToBounds = YES;
    
    self.profileButton2.layer.cornerRadius = self.profileButton2.bounds.size.width/2;
    self.profileButton2.clipsToBounds = YES;
    
    self.profileButton3.layer.cornerRadius = self.profileButton3.bounds.size.width/2;
    self.profileButton3.clipsToBounds = YES;
    
    self.profileButton4.layer.cornerRadius = self.profileButton4.bounds.size.width/2;
    self.profileButton4.clipsToBounds = YES;
    
    self.profileButton5.layer.cornerRadius = self.profileButton5.bounds.size.width/2;
    self.profileButton5.clipsToBounds = YES;
    
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
