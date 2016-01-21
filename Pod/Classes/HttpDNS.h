//
//  HttpDNS.h
//  Pods
//
//  Created by wlsy on 16/1/22.
//
//

#import <Foundation/Foundation.h>


@interface HttpDNS : NSObject

typedef void (^httpDNSNext)(NSError *error, NSString *ip);

+ (HttpDNS *)shareInstance;

-(void)getIpByHost:(NSString *)host next:(httpDNSNext)next;


@end
