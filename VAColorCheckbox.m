//
//  VAColorCheckbox.m
//  hgBox
//
//  Created by Vladimir Andersen on 4/9/12.
//  Copyright (c) 2012 vlad.andersen@gmail.com. All rights reserved.
//

#import "VAColorCheckbox.h"

@implementation VAColorCheckbox  

@synthesize color;
@synthesize states;
@synthesize alternateStates;


- (void) awakeFromNib
{
    [self setColor: [NSColor whiteColor]];
    self.states = [NSArray arrayWithObjects:
                   [NSImage imageNamed: @"CheckmarkEmpty"], 
                   [NSImage imageNamed: @"Checkmark"], 
                   [NSImage imageNamed: @"CheckmarkMixed"], 
                   nil];

    self.alternateStates = [NSArray arrayWithObjects:
                   [NSImage imageNamed: @"CheckmarkEmptyPressed"], 
                   [NSImage imageNamed: @"CheckmarkPressed"], 
                   [NSImage imageNamed: @"CheckmarkMixedPressed"], 
                   nil];
}

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    
    return self;
}

- (void)drawRect:(NSRect)rect
{  
    NSInteger state = [self state];
    if (state == NSMixedState) { state = 2; }
    NSImage* img = [states objectAtIndex: state];    
    if ([[self cell] isHighlighted]) {
        img = [alternateStates objectAtIndex: state];
    }
      
    [[self color] set]; // Sets current drawing color.
    NSRect newRect = NSMakeRect(2, 2, 12, 12);
    NSBezierPath* path = [NSBezierPath bezierPathWithRoundedRect:newRect xRadius:3.0 yRadius:3.0];      
    [path fill];
    [img drawAtPoint: NSMakePoint(rect.origin.x, rect.origin.y)
            fromRect: rect
           operation: NSCompositeSourceOver
            fraction: 1.0];
}

- (BOOL) isFlipped
{
    return NO;
}

@end
