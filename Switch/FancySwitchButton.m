//
//  FancySwitchButton.m
//  Switch
//
//  Created by Xu Lian on 2013-04-02.
//  Copyright (c) 2013 Beyondcow. All rights reserved.
//

#import "FancySwitchButton.h"

@implementation FancySwitchButton

- (void)mouseDown:(NSEvent *)theEvent
{
    NSPoint loc = [self convertPoint:[theEvent locationInWindow] fromView:nil];
    if (self.state==NSOnState) {
        NSRect offRect=NSMakeRect(4, 42, self.frame.size.width-8, 37);
        if (NSPointInRect(loc, offRect)) {
            [super mouseDown:theEvent];
        }
    }else{
        NSRect onRect=NSMakeRect(4, 5, self.frame.size.width-8, 37);
        if (NSPointInRect(loc, onRect)) {
            [super mouseDown:theEvent];
        }
    }
}

@end
