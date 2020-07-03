//
//  Tweet.m
//  twitter
//
//  Created by Terrell-Jude Ilechie on 7/2/20.
//  Copyright © 2020 Emerson Malca. All rights reserved.
//

#import "Tweet.h"
#import "User.h"

@implementation Tweet
-(instancetype) initWithDictionary:(NSDictionary *)dictionary{
    self=[super init];
    
    if(self){
        NSDictionary *originalTweet = dictionary[@"retweeted_status"];
        if(originalTweet != nil){
            NSDictionary *userDictionary = dictionary[@"user"];
            self.retweetedByUser = [[User alloc] initWithDictionary:userDictionary];
            dictionary = originalTweet;
    }
    self.idStr = dictionary[@"id_str"];
    self.text = dictionary[@"text"];
    self.favoriteCount = [dictionary[@"favorite_count"] intValue];
    self.favorited = [dictionary[@"favorited"] boolValue];
    self.retweetCount = [dictionary[@"retweet_count"] intValue];
    self.retweeted = [dictionary[@"retweeted"] boolValue];
    
    NSDictionary *user = dictionary[@"user"];
    self.user = [[User alloc] initWithDictionary:user];
        NSString *pic=dictionary[@"user"][@"profile_image_url_https"];
        NSURL * profile=[NSURL URLWithString:pic];
        self.profileurl=profile;
        
        NSString *createdAtOriginalString = dictionary[@"created_at"];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"E MMM d HH:mm:ss Z y";
        self.date = [formatter dateFromString:createdAtOriginalString];
        
        formatter.dateStyle = NSDateFormatterShortStyle;
        formatter.timeStyle = NSDateFormatterNoStyle;
        self.createdAtString = [formatter stringFromDate:self.date];
    }
    
    return self;
}
+ (NSMutableArray *)tweetsWithArray:(NSArray *)dictionaries{
    NSMutableArray *tweets = [NSMutableArray array];
    for (NSDictionary *dictionary in dictionaries) {
        Tweet *tweet = [[Tweet alloc] initWithDictionary:dictionary];
        [tweets addObject:tweet];
    }
    return tweets;
}
    
    
    


@end
