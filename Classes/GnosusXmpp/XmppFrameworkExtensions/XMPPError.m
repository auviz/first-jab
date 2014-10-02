//
//  XMPPError.m
//  webgnosus
//
//  Created by Troy Stribling on 3/29/09.
//  Copyright 2009 Plan-B Research. All rights reserved.
//

//-----------------------------------------------------------------------------------------------------------------------------------
#import "XMPPError.h"
#import "NSXMLElementAdditions.h"

//-----------------------------------------------------------------------------------------------------------------------------------

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation XMPPError

//-----------------------------------------------------------------------------------------------------------------------------------

//===================================================================================================================================
#pragma mark XMPPBind

//-----------------------------------------------------------------------------------------------------------------------------------
+ (XMPPError*)createFromElement:(NSXMLElement*)element {
	XMPPError* result = (XMPPError*)element;
	result->isa = [XMPPError class];
	return result;
}

//-----------------------------------------------------------------------------------------------------------------------------------
+ (XMPPError*)message {
    return [[[XMPPError alloc] init] autorelease];
}

//-----------------------------------------------------------------------------------------------------------------------------------
+ (XMPPError*)messageWithType:(NSString*)_type {
    return [[[XMPPError alloc] initWithType:_type] autorelease];
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (XMPPError*)init {
	if(self = [super initWithName:@"error"]) {
	}
	return self;
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (XMPPError*)initWithType:(NSString*)errorType {
	if([self init]) {
        [self addType:errorType];
	}
	return self;
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (NSString*)type {
    return [[self attributeForName:@"type"] stringValue];
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)addType:(NSString*)val {
    [self addAttributeWithName:@"type" stringValue:val];
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (NSString*)code {
    return [[self attributeForName:@"code"] stringValue];
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)addCode:(NSString*)val {
    [self addAttributeWithName:@"code" stringValue:val];
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (NSString*)condition {
    NSString* name = nil;
    NSXMLNode* condNode = [self childAtIndex:0];
    if (condNode) {
        name = [condNode name];
    }
    return name;
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)addCondition:(NSString*)val {
    [self addChild:[NSXMLElement elementWithName:val]];	
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (NSString*)text {
	return [[self elementForName:@"text"] stringValue];
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)addText:(NSString*)val {
	[self addChild:[NSXMLElement elementWithName:@"text" stringValue:val]];	
}

//===================================================================================================================================
#pragma mark NSObject

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)dealloc {
    [super dealloc];
}

@end