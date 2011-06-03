//
//  ToDoDetailViewController.h
//  ToDo
//
//  Created by Lisa Ridley on 6/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ToDoDetailViewController : UIViewController {
    
    UITextField *toDoDescription;
    UILabel *dateNeeded;
    UILabel *notificationTime;
    UILabel *category;
    UISegmentedControl *priority;
}
@property (nonatomic, retain) IBOutlet UITextField *toDoDescription;
@property (nonatomic, retain) IBOutlet UILabel *dateNeeded;
@property (nonatomic, retain) IBOutlet UILabel *notificationTime;
@property (nonatomic, retain) IBOutlet UILabel *category;
@property (nonatomic, retain) IBOutlet UISegmentedControl *priority;
- (IBAction)showDueDateView:(id)sender;
- (IBAction)showNotficationView:(id)sender;
- (IBAction)showCategoryView:(id)sender;
- (IBAction)saveOrCancel:(id)sender;
- (IBAction)priorityDataChange:(id)sender;

@end
