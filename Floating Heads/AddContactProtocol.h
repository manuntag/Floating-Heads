//
//  AddContactProtocol.h
//  Floating Heads
//
//  Created by David Manuntag on 2015-02-18.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#ifndef Floating_Heads_AddContactProtocol_h
#define Floating_Heads_AddContactProtocol_h


@class BlurViewController;

@protocol AddContactProtocol <NSObject>


-(void)didTapButton:(BlurViewController*)blurViewController buttonIndexNumber:(NSNumber*)buttonNumber;



@end




#endif
