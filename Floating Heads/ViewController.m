//
//  ViewController.m
//  Floating Heads
//
//  Created by David Manuntag on 2015-02-18.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *addButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.addButton.layer.cornerRadius = self.addButton.bounds.size.width/2;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
