//
//  DomainNameResolution.h
//  DomainNameResolution
//
//  Created by WJN on 16/4/14.
//  Copyright © 2016年 Lours. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DomainNameResolution : NSObject

/**
 *  域名解析ip
 *
 *  @param hostName 域名
 *
 *  @return ip
 */
+(NSString *) getIPWithHostName:(const NSString *)hostName;

@end
