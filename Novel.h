//
//  Novel.h
//  CoreDataTest
//
//  Created by 李言 on 14-4-25.
//  Copyright (c) 2014年 李言. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Novel : NSManagedObject

@property (nonatomic, retain) NSString * author;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * version;
@property (nonatomic, retain) NSNumber * age;

@end
