//
//  ContentView.m
//  Switch
//
//  Created by Xu Lian on 2013-04-02.
//  Copyright (c) 2013 Beyondcow. All rights reserved.
//

#import "ContentView.h"

@implementation ContentView

- (void)drawRect:(NSRect)dirtyRect
{
    [[NSImage imageNamed:@"bg"] drawAtPoint:NSMakePoint(-190, -90) fromRect:NSZeroRect operation:NSCompositeSourceOver fraction:1.0];
}

@end
