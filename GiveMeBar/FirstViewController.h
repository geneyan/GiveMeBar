//
//  FirstViewController.h
//  GiveMeBar
//
//  Created by Jingsheng Yan on 5/2/13.
//  Copyright (c) 2013 3i Computer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZBarSDK.h"

@interface FirstViewController : UIViewController <ZBarReaderDelegate>{
    IBOutlet UIButton *scanButton;
}
//@property (weak, nonatomic) IBOutlet UINavigationBar *navigtionController;


@property(nonatomic, retain) IBOutlet UIButton *scanButton;
-(IBAction) scanButtonPress:sender;

@end
