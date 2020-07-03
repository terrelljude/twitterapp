//
//  TweetCellTableViewCell.h
//  twitter
//
//  Created by Terrell-Jude Ilechie on 7/2/20.
//  Copyright © 2020 Emerson Malca. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tweet.h"

@interface TweetCellTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *username;
@property (weak, nonatomic) IBOutlet UILabel *retweetcount;
@property (weak, nonatomic) IBOutlet UILabel *favcount;
@property (weak, nonatomic) IBOutlet UILabel *textfield;
@property(strong,nonatomic) Tweet *tweet;
@property (weak, nonatomic) IBOutlet UIImageView *imagefield;
@property (weak, nonatomic) IBOutlet UIButton *likebutton;
@property (weak, nonatomic) IBOutlet UIButton *tweetbutton;
@property (weak, nonatomic) IBOutlet UILabel *datelabel;

@property int count;
-(void)setTweet:(Tweet *)tweet;
-(void) refreshdata;

@end

