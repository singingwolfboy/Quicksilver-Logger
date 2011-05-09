//
//  QSLoggerPlugIn.m
//  QSLoggerPlugIn
//
//  Created by David Baumgold on 2011-05-09
//

#import "QSLoggerPlugIn.h"

@implementation QSLoggerPlugIn

- (void) performJavaScript:(NSString *)jScript{
	//NSLog(@"JAVASCRIPT perform: %@",jScript);
	NSDictionary *errorDict=nil;
	NSAppleScript *script=[[[NSAppleScript alloc]initWithSource:[NSString stringWithFormat:@"tell application \"Logger\" to Get URL \"%@\"",jScript]]autorelease];
	if (errorDict) NSLog(@"Load Script: %@",[errorDict objectForKey:@"NSAppleScriptErrorMessage"]);
	else [script executeAndReturnError:&errorDict];
	if (errorDict) NSLog(@"Run Script: %@",[errorDict objectForKey:@"NSAppleScriptErrorMessage"]);
}

@end