//
//  RootViewController.h
//  ToDo
//
//  Created by Lisa Ridley on 5/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

#define kSelectedTabDefaultsKey @"Selected Tab"

enum {
    kByDateAdded,
    kByDateDue,
    kByCategory,
    kByPriority,
    kCompleted
};

@interface RootViewController : UIViewController <UITableViewDelegate,UITabBarDelegate, UIAlertViewDelegate, NSFetchedResultsControllerDelegate> {
    
    UITableView *_tableView;
    UITabBar *_tabBar;
}
@property (nonatomic, retain) IBOutlet UITableView *tableView;
@property (nonatomic, retain) IBOutlet UITabBar *tabBar;

@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

- (IBAction) toggleEdit;

@end
