//
//  ViewController.m
//  JSONUtilityExample
//
//  Created by Bracken on 8/1/12.
//  Copyright (c) 2012 Bracken. All rights reserved.
//

#import "ViewController.h"
#import "JSONUtility.h"

@interface ViewController ()

@property (nonatomic, retain) IBOutlet UITextView *textView;

@end

@implementation ViewController

@synthesize textView;

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
    
    NSString *urlString = @"http://api.geonames.org/findNearbyJSON?lat=43.547636&lng=-106.837603&username=demo";
    
    [self updateTextView:[NSString stringWithFormat:@"REQUEST: %@", urlString]];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:urlString]];
        [self performSelectorOnMainThread:@selector(fetchedData:)
                               withObject:data
                            waitUntilDone:YES];
    });
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -

- (void)fetchedData:(NSData *)responseData
{
    id json = [JSONUtility JSONObjectWithData:responseData];
    
    [self updateTextView:[NSString stringWithFormat:@"\nRESPONSE: %@", json]];
}

- (void)updateTextView:(NSString *)string
{
    [textView setText:[NSString stringWithFormat:@"%@\n%@", [textView text], string]];
}

@end
