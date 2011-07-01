//
//  DueVu.m
//  DueTest
//
//  Created by Kerry Brockway on 6/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DueDateViewController.h"

@implementation DueDateViewController
@synthesize dueDatePicker, datePicked;

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
    [datePicked release];
    [dueDatePicker release];
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
    NSDate *now = [[NSDate alloc]init];
    [dueDatePicker setDate:now animated:NO];
    [now release];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setDatePicked:nil];
    [self setDueDatePicker:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)saveOrCancelDueDate:(id)sender {
    NSInteger tagValue = [sender tag];
    if(tagValue == 999) {
        //We're going to save our value and return it to the 
        //ToDoDetailViewController
        self.datePicked = [dueDatePicker date];
    }
    //Here we need to return control to the previous view controller -- get back to the previous view on the stack without losing our captured values before we release the view
    
}
@end
