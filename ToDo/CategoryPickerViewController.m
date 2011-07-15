//
//  CategoryPickerViewController.m
//  ToDo
//
//  Created by Lisa Ridley on 6/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CategoryPickerViewController.h"


@implementation CategoryPickerViewController
@synthesize categoryPicker;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [categoryPicker release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSArray *categories = [NSArray arrayWithObjects:@"Home", @"Work", @"Personal", nil];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [categoryPicker release];
    categoryPicker = nil;
    [self setCategoryPicker:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (IBAction)saveOrCancelAction:(id)sender {
}
@end
