//
//  SecondViewController.h
//  GiveMeBar
//
//  Created by Jingsheng Yan on 5/2/13.
//  Copyright (c) 2013 3i Computer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZBarSDK.h"

@interface SecondViewController : UIViewController
<UIImagePickerControllerDelegate, ZBarReaderDelegate>{
    IBOutlet UITextView *resultTextView;
}

@property(nonatomic, retain) IBOutlet UITextView *resultTextView;
@property(nonatomic, retain) UIImagePickerController *imPicker;

-(IBAction)startScan:(id)sender;

@end
