//
//  User.h
//  twitter
//
//  Created by Terrell-Jude Ilechie on 7/2/20.
//  Copyright © 2020 Emerson Malca. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject
@property(strong, nonatomic) NSString *name;
@property(strong, nonatomic) NSString *screenname;
-(instancetype)initWithDictionary: (NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
