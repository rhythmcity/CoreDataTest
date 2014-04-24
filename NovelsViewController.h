//
//  NovelsViewController.h
//  CoreDataTest
//
//  Created by 李言 on 14-4-24.
//  Copyright (c) 2014年 李言. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NovelsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *tfname;
@property (strong, nonatomic) IBOutlet UITextField *tfAuthor;

@property (strong, nonatomic) IBOutlet UITextField *tfVersion;
- (IBAction)saveClick:(id)sender;
- (IBAction)showClick:(id)sender;

@end
