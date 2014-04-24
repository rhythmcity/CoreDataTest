//
//  NovelsViewController.m
//  CoreDataTest
//
//  Created by 李言 on 14-4-24.
//  Copyright (c) 2014年 李言. All rights reserved.
//

#import "NovelsViewController.h"

@interface NovelsViewController ()

@end

@implementation NovelsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}



- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveClick:(id)sender {
    NSManagedObjectContext *contenxt=[self managedObjectContext];
    NSManagedObject *newNovel=[NSEntityDescription insertNewObjectForEntityForName:@"Novel" inManagedObjectContext:contenxt];
    [newNovel setValue:self.tfname.text forKeyPath:@"name"];
    [newNovel setValue:self.tfAuthor.text forKeyPath:@"author"];
    [newNovel setValue:self.tfVersion.text forKeyPath:@"version"];
    NSError *error=nil;
    if (![contenxt save:&error]) {
        NSLog(@"%@ %@",error,[error localizedDescription]);
    }
    
}

- (IBAction)showClick:(id)sender {
    
    NSManagedObjectContext *contenxt=[self managedObjectContext];
    NSFetchRequest *fectrequest=[[NSFetchRequest alloc] initWithEntityName:@"Novel"];
    NSMutableArray *array=[[NSMutableArray alloc] initWithArray:[contenxt executeFetchRequest:fectrequest error:nil]];
    for (int i =0; i<[array count]; i++) {
        NSManagedObject *device=[array objectAtIndex:i];
        NSLog(@"%@,%@,%@",[device valueForKey:@"name"],[device valueForKey:@"author"],[device valueForKey:@"version"]);
    }
   
    
}
@end
