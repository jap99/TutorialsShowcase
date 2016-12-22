//
//  VideoVC.h
//  TutorialShowcase
//
//  Created by Javid Poornasir on 12/21/16.
//  Copyright © 2016 Javid Poornasir. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Video;

@interface VideoVC : UIViewController <UIWebViewDelegate>
@property (nonatomic,strong) Video *video;

@end
