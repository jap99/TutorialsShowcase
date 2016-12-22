//
//  VideoCell.m
//  TutorialShowcase
//
//  Created by Javid Poornasir on 12/21/16.
//  Copyright © 2016 Javid Poornasir. All rights reserved.
//

#import "VideoCell.h"
#import "Video.h"

@interface VideoCell()
@property (weak, nonatomic) IBOutlet UILabel *titleLbl;
@property (weak, nonatomic) IBOutlet UILabel *descLbl;
@property (weak, nonatomic) IBOutlet UIImageView *thumbImg;
@property (weak, nonatomic) IBOutlet UIView *cellView;


@end




@implementation VideoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.layer.cornerRadius = 2.0;
    self.layer.shadowColor = [UIColor colorWithRed:157.0 / 255.0 green:157.0 / 255.0 blue:157.0 / 255.0 alpha:0.8].CGColor;
    self.layer.shadowOpacity = 0.8;
    self.layer.shadowRadius = 5.0;
    self.layer.shadowOffset = CGSizeMake(0.0, 2.0);
    
}


-(void)updateUI:(nonnull Video*)video {
    // the cell passes in a video and we set the iboutlets based on things in that video class
    self.titleLbl.text = video.videoTitle;
    self.descLbl.text = video.videoDescription;
    
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:video.thumbnailUrl]]];
    self.thumbImg.image = image;
}


@end
























