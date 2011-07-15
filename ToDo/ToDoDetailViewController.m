//
//  ToDoDetailViewController.m
//  ToDo
//
//  Created by Lisa Ridley on 6/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ToDoDetailViewController.h"
#import "DueDateViewController.h"
#import "CategoryPickerViewController.h"


@implementation ToDoDetailViewController
@synthesize toDoDescription;
@synthesize dateNeeded;
@synthesize notificationTime;
@synthesize category;
@synthesize priority;
@synthesize todo;

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
    [toDoDescription release];
    [dateNeeded release];
    [notificationTime release];
    [category release];
    [priority release];
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
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setToDoDescription:nil];
    [self setDateNeeded:nil];
    [self setNotificationTime:nil];
    [self setCategory:nil];
    [self setPriority:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)showDueDateView:(id)sender {
    DueDateViewController *ddvc = [[DueDateViewController alloc] init];
    [self.navigationController pushViewController:ddvc animated:YES];
    [ddvc release];
}

- (IBAction)showNotficationView:(id)sender {
}

- (IBAction)showCategoryView:(id)sender {
    CategoryPickerViewController *cpvc = [[CategoryPickerViewController alloc] init];
    [self.navigationController pushViewController:cpvc animated:YES];
    [cpvc release]; 
}

- (IBAction)saveOrCancel:(id)sender {
    NSString *label = [sender titleLabel].text;
    if([label isEqualToString:@"Save"]) {
            //Conduct Save action here
    } else {
        
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)priorityDataChange:(id)sender {
}

- (IBAction)stopEditingToDoDescription:(id)sender {
    [sender resignFirstResponder];
}
@end
