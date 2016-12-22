//
//  HTTPService.h
//  TutorialShowcase
//
//  Created by Javid Poornasir on 12/20/16.
//  Copyright © 2016 Javid Poornasir. All rights reserved.
//

#import <Foundation/Foundation.h>

// create a block
typedef void (^onComplete)(NSArray * __nullable dataArray, NSString * __nullable errMessage);

@interface HTTPService : NSObject

+ (id) instance;
- (void) test;

- (void) getTutorials:(nullable onComplete)completionHandler;

@end







