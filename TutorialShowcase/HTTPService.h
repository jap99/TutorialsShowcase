//
//  HTTPService.h
//  TutorialShowcase
//
//  Created by Javid Poornasir on 12/20/16.
//  Copyright © 2016 Javid Poornasir. All rights reserved.
//

#import <Foundation/Foundation.h>

// create a block called onComplete; takes two parameters
    //typedef = were creating a new type
        //returning nothing; we just want to call it
typedef void (^onComplete)(NSArray * __nullable dataArray, NSString * __nullable errMessage);

@interface HTTPService : NSObject

+ (id) instance;
- (void) test;

    // get tutorials calls the block when the data is done downloading and passes the data into it and the VC implements the block itself
- (void) getTutorials:(nullable onComplete)completionHandler;

@end







