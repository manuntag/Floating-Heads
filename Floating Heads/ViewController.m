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
@property (strong, nonatomic) NSMutableArray * contactList;

@end

@implementation ViewController

-(void)didTapButton:(BlurViewController*)blurViewController buttonIndexNumber:(NSNumber*)buttonNumber {
    
    NSLog(@"Profile number %@ was pressed", buttonNumber);
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.addButton.layer.cornerRadius = self.addButton.bounds.size.width/2;
    self.addButton.layer.shadowColor = [UIColor grayColor].CGColor;
    self.addButton.layer.shadowOffset= CGSizeMake(2, 2);
    self.addButton.layer.shadowOpacity= 1;
    self.addButton.layer.shadowRadius = 1.0;
    
       // Do any additional setup after loading the view, typically from a nib.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([[segue identifier] isEqualToString:@"goToBlurViewController"]) {
        
        BlurViewController *bvc = (BlurViewController*)segue.destinationViewController;
        bvc.delegate = self;
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
