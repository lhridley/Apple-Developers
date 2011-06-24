//
//  DueVu.h
//  DueTest
//
//  Created by Kerry Brockway on 6/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DueDateViewController : UIViewController {
    
    UIDatePicker *dueDatePicker;
}

@property (nonatomic, retain) IBOutlet UIDatePicker *dueDatePicker;

- (IBAction)saveOrCancelDueDate:(id)sender;



@end
