//
//  DomainNameResolution.m
//  DomainNameResolution
//
//  Created by WJN on 16/4/14.
//  Copyright © 2016年 Lours. All rights reserved.
//

#import "DomainNameResolution.h"
#include <netdb.h>
#include <sys/socket.h>
#include <arpa/inet.h>


@implementation DomainNameResolution

/**
 *  域名解析ip
 *
 *  @param hostName 域名
 *
 *  @return ip
 */
+(NSString *) getIPWithHostName:(const NSString *)hostName
{
    const char *hostN= [hostName UTF8String];
    struct hostent* phot;
    @try {
        phot = gethostbyname(hostN);
    }
    @catch (NSException *exception) {
        return nil;
    }
    struct in_addr ip_addr;
    memcpy(&ip_addr, phot->h_addr_list[0], 4);
    char ip[20] = {0};
    inet_ntop(AF_INET, &ip_addr, ip, sizeof(ip));
    
    NSString* strIPAddress = [NSString stringWithUTF8String:ip];
    return strIPAddress;
}

@end
