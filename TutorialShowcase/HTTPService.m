//
//  HTTPService.m
//  TutorialShowcase
//
//  Created by Javid Poornasir on 12/20/16.
//  Copyright © 2016 Javid Poornasir. All rights reserved.
//


// This file will talk to our local web server and download data
#import "HTTPService.h"

#define URL_BASE "http://localhost:6069"
#define URL_TUTORIALS "/tutorials"

@implementation HTTPService


+ (id) instance {
    
    // creating a static instance of the class
    static HTTPService *sharedInstance = nil;
    
    // we're checking to see if there's an instance in memory and if not we're creating a new one
    
    // Synchronized means it will help avoid lockups on different threads and helps with multithreading
        // synchronizing self which is this instance of the class
    @synchronized(self) {
        if (sharedInstance == nil)
            sharedInstance = [[self alloc]init];
    }    
    return sharedInstance;
}


- (void)test {
    NSLog(@"This is a test");
}


- (void) getTutorials:(nullable onComplete)completionHandler {
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%s%s", URL_BASE, URL_TUTORIALS]];
    NSURLSession *session = [NSURLSession sharedSession];
    
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (data != nil) {
            NSError *err;
            // handle error for getting the data and parsing it into json
    
            // parse the error into json and put it in a dictionary
            NSArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&err];
            
            if (err == nil) {
                //NSLog(@"JSON: %@", json.debugDescription);
                completionHandler(json, nil);
            } else {
                completionHandler(nil, @"Data is corrupt. Please try again");
            }
        } else {
            
            // handle error for the server (aka the network request)
            NSLog(@"Error: %@", error.debugDescription);
            
            completionHandler(nil, @"Problem connecting to the server");
        }
    }] resume];
    
}



@end
