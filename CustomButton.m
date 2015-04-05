//
//  CustomButton.m
//  IBPreview
//
//  Created by Sudheendra K Kaanugovi on 4/3/15.
//  Copyright (c) 2015 Sudhy Studios. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton

//This method is called if the button is used in StoryBoard
-(instancetype) initWithCoder:(NSCoder *)aDecoder
{
    
    if(self = [super initWithCoder:aDecoder]){
        [self setupCustomButtonProperties];
    }
    return self;
}

//You can call this init method if you want button to load programmatically by passing the CGRect frame where it has to render
-(instancetype) initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame]){
        [self setupCustomButtonProperties];
    }
    return self;
}

//This is the magic and important method that gets called in the interface builder where the storyboard or xib has button of type Self Class
-(void) prepareForInterfaceBuilder
{
    
    [self setupCustomButtonProperties];
}

//Setting some properties of the button
- (void) setupCustomButtonProperties{
    
    // Set the button Text Color
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    
    // Set the button Background Color
    [self setBackgroundColor:[UIColor blackColor]];
    
    
    CAGradientLayer *btnGradient = [CAGradientLayer layer];
    btnGradient.frame = self.bounds;
    btnGradient.colors = [NSArray arrayWithObjects:
                          (id)[[UIColor colorWithRed:102.0f / 255.0f green:102.0f / 255.0f blue:102.0f / 255.0f alpha:1.0f] CGColor],
                          (id)[[UIColor colorWithRed:51.0f / 255.0f green:51.0f / 255.0f blue:51.0f / 255.0f alpha:1.0f] CGColor],
                          nil];
    [self.layer insertSublayer:btnGradient atIndex:0];
    
    CALayer *btnLayer = [self layer];
    [btnLayer setMasksToBounds:YES];
    [btnLayer setCornerRadius:self.cornerRadius];
}

@end
