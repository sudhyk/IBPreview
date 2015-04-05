//
//  CustomButton.h
//  IBPreview
//
//  Created by Sudheendra K Kaanugovi on 4/3/15.
//  Copyright (c) 2015 Sudhy Studios. All rights reserved.
//

#import <UIKit/UIKit.h>


IB_DESIGNABLE
@interface CustomButton : UIButton

//This property will be avilable in Attribute inspector to set the value
@property (nonatomic, assign) IBInspectable NSInteger cornerRadius;


@end
