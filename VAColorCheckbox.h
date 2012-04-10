//
//  VAColorCheckbox.h
//  hgBox
//
//  Created by Vladimir Andersen on 4/9/12.
//  Copyright (c) 2012 vlad.andersen@gmail.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface VAColorCheckbox : NSButton {
    @private
    NSArray* states;
    NSArray* alternateStates;
}


@property (retain) NSColor* color;
@property (retain) NSArray* states;
@property (retain) NSArray* alternateStates;

@end
