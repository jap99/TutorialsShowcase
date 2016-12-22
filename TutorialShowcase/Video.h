//
//  Video.h
//  TutorialShowcase
//
//  Created by Javid Poornasir on 12/21/16.
//  Copyright © 2016 Javid Poornasir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Video : NSObject
@property(nonatomic,strong) NSString *videoTitle;
@property(nonatomic,strong) NSString *videoDescription;
@property(nonatomic,strong) NSString *videoIframe;
@property(nonatomic,strong) NSString *thumbnailUrl;


@end
