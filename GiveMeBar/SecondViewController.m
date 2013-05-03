//
//  SecondViewController.m
//  GiveMeBar
//
//  Created by Jingsheng Yan on 5/2/13.
//  Copyright (c) 2013 3i Computer. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize imPicker, resultTextView;

-(IBAction)startScan:(id)sender
{
    ZBarReaderController *reader = [ZBarReaderController new];
    reader.readerDelegate = self;
    //reader.view.torchMode = 0;
    //reader.readerView.torchMode = 0;
    ZBarImageScanner *scanner = reader.scanner;
    
    [scanner setSymbology:ZBAR_I25 config:ZBAR_CFG_ENABLE to: 0];
    [self presentViewController:reader animated: YES completion:NULL];
    [reader removeFromParentViewController];
    resultTextView.hidden = NO;
    
}

-(void) readerControllerDidFailToRead:(ZBarReaderController *)reader withRetry:(BOOL)retry
{
    NSLog(@"the image picker failing to read");
}

-(void) imagePickerController:(UIImagePickerController *)reader didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    NSLog(@"THe image picker is calling successfully %@", info);
    id<NSFastEnumeration> results = [info objectForKey:ZBarReaderControllerResults];
    ZBarSymbol * symbol = nil;
    NSString *hiddenData;
    for (symbol in results) {
        hiddenData = [NSString stringWithString:symbol.data];
        NSLog(@"the symbole is the following %@", symbol.data);
        
        resultTextView.text = symbol.data;
        
        NSUserDefaults *storeData = [NSUserDefaults standardUserDefaults];
        [storeData setObject:hiddenData forKey:@"CONSUMERID"];
        NSLog(@"SYMBOL: %@", hiddenData);
        resultTextView.text = hiddenData;
        [reader dismissViewControllerAnimated:NO completion:NULL];
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
 
    [super viewDidLoad];
    //self.title = @"Second View";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
