//
//  ComposeViewController.h
//  twitter
//
//  Created by Terrell-Jude Ilechie on 7/2/20.
//  Copyright © 2020 Emerson Malca. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tweet.h"
@protocol ComposeViewControllerDelegate

-(void)didTweet:(Tweet *)tweet;

@end

NS_ASSUME_NONNULL_BEGIN

@interface ComposeViewController : UIViewController
@property(nonatomic, weak)id<ComposeViewControllerDelegate>delegate;

@end

NS_ASSUME_NONNULL_END
