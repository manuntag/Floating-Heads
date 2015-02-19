//
//  BlurViewController.h
//  Floating Heads
//
//  Created by David Manuntag on 2015-02-18.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddContactProtocol.h"

@interface BlurViewController : UIViewController

@property (nonatomic, weak) id<AddContactProtocol>delegate;


@end
