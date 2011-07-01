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
    NSDate *datePicked;
}

@property (nonatomic, retain) IBOutlet UIDatePicker *dueDatePicker;
@property (nonatomic, retain) NSDate *datePicked;

- (IBAction)saveOrCancelDueDate:(id)sender;

@end
