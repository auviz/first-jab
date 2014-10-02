//
//  SectionViewController.m
//  webgnosus
//
//  Created by Troy Stribling on 2/10/09.
//  Copyright 2009 Plan-B Research. All rights reserved.
//

//-----------------------------------------------------------------------------------------------------------------------------------
#import "SectionViewController.h"

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@interface SectionViewController (PrivateAPI)

@end

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation SectionViewController

//-----------------------------------------------------------------------------------------------------------------------------------
@synthesize nicknameLabel;
@synthesize nickname;

//===================================================================================================================================
#pragma mark SectionViewController

//===================================================================================================================================
#pragma mark SectionViewController PrivateAPI

//===================================================================================================================================
#pragma mark UIViewController

//-----------------------------------------------------------------------------------------------------------------------------------
+ (SectionViewController*)viewControllerWithLabel:(NSString*)label {
    return [[[SectionViewController alloc] initWithNibName:@"SectionViewController" bundle:nil andLabel:label] autorelease];
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil andLabel:(NSString*)label {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.nickname = label;
    }
    return self;
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)viewDidLoad {
    self.nicknameLabel.text = self.nickname;
    [super viewDidLoad];
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//===================================================================================================================================
#pragma mark NSObject

//-----------------------------------------------------------------------------------------------------------------------------------
- (void)dealloc {
    [nickname release];
    [nicknameLabel release];
    [super dealloc];
}

@end
