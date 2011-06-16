//
//  ToDoAppDelegate.h
//  ToDo
//
//  Created by Lisa Ridley on 5/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CommonCrypto/CommonHMAC.h>

@interface ToDoAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
