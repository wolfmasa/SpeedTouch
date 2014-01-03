//
//  TitleMenuLayer.m
//  SpeedTouch
//
//  Created by 上原 将司 on 2014/01/03.
//  Copyright 2014年 Project Wolf. All rights reserved.
//

#import "TitleMenuLayer.h"


@implementation TitleMenuLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	TitleMenuLayer *layer = [TitleMenuLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super init]) ) {
		
		// create and initialize a Label
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Speed Touch" fontName:@"Marker Felt" fontSize:64];
        
		// ask director for the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
        
		// position the label on the center of the screen
		label.position =  ccp( size.width /2 , size.height/2 );
		
		// add the label as a child to this Layer
		[self addChild: label];
		
		// Default font size will be 28 points.
		[CCMenuItemFont setFontSize:28];
    
		
        CCMenuItem *playButton = [CCMenuItemFont itemWithString:@"Play"];
        CCMenuItem *configButton = [CCMenuItemFont itemWithString:@"Config"];
		
		CCMenu *menu = [CCMenu menuWithItems:playButton, configButton, nil];
		
		[menu alignItemsHorizontallyWithPadding:20];
		[menu setPosition:ccp( size.width/2, size.height/2 - 50)];
		
		// Add the menu to the layer
		[self addChild:menu];
        
	}
	return self;
}


@end
