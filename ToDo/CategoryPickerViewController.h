//
//  CategoryPickerViewController.h
//  ToDo
//
//  Created by Lisa Ridley on 6/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CategoryPickerViewController : UIViewController {
    
    UIPickerView *categoryPicker;
}
@property (nonatomic, retain) IBOutlet UIPickerView *categoryPicker;

- (IBAction)saveOrCancelAction:(id)sender;

@end
