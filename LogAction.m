//
//  LogAction.m
//  QSLoggerPlugIn
//
//  Created by David Baumgold on 5/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LogAction.h"

@implementation LogAction

- (QSObject *)performActionOnObject:(QSObject *)dObject{
    QSObject *result;
    NSString *dWithHello;
    
    dWithHello = [NSString stringWithFormat:@"%@ hello",[dObject stringValue]];
    result = [QSObject objectWithString:dWithHello];
    
    return result;
}
@end
