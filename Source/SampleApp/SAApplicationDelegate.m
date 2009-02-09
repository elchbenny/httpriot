    //
//  SAApplicationDelegate.m
//  HTTPRiot
//
//  Created by Justin Palmer on 1/30/09.
//  Copyright 2009 Alternateidea. All rights reserved.
//

#import "SAApplicationDelegate.h"
#import <HTTPRiot/HTTPRiot.h>

// @interface SAProject : HTTPRiotRestModel
// {
// }
// @end
// 
// @implementation SAProject
// + (void)initialize
// {
//     [self setBaseURI:[NSURL URLWithString:@"http://alternateidea.com"]];
// }
// @end
// 
@interface SATweet : HTTPRiotRestModel {} @end
@implementation SATweet
+ (void)initialize
{
    [self setBaseURI:[NSURL URLWithString:@"http://twitter.com"]];
}
@end


@implementation SAApplicationDelegate
- (void)awakeFromNib
{
    NSDictionary *params = [NSDictionary dictionaryWithObject:@"2" forKey:@"page"];
    NSData *tweets = [SATweet getWithPath:@"statuses/public_timeline.json" options:[NSDictionary dictionaryWithObject:params forKey:@"params"]];
    NSLog(@"%s tweets:%@", _cmd, tweets);
}
@end