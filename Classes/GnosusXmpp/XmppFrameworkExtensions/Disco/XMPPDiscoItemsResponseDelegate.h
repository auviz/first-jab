//
//  XMPPDiscoItemsResponseDelegate.h
//  webgnosus
//
//  Created by Troy Stribling on 9/18/09.
//  Copyright 2009 Plan-B Research. All rights reserved.
//

//-----------------------------------------------------------------------------------------------------------------------------------
#import <Foundation/Foundation.h>
#import "XMPPResponse.h"

//-----------------------------------------------------------------------------------------------------------------------------------
@class XMPPJID;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@interface XMPPDiscoItemsResponseDelegate : NSObject <XMPPResponseDelegate> {
    XMPPJID* targetJID;
}

//-----------------------------------------------------------------------------------------------------------------------------------
@property (nonatomic, retain) XMPPJID*  targetJID;
           
//-----------------------------------------------------------------------------------------------------------------------------------
+ (XMPPDiscoItemsResponseDelegate*)delegate:(XMPPJID*)initJID;
- (id)init:(XMPPJID*)initJID;

@end