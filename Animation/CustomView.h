//
//  CustomView.h
//  Animation
//
//  Created by Patrick Madden on 1/26/17.
//  Copyright © 2017 Binghamton CSD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView : UIView
{
    int counter;
}
@property (nonatomic, strong) IBOutlet UIView *contents;
@property (nonatomic, strong) IBOutlet UIImageView *subimage;
@property (nonatomic, strong) IBOutlet UILabel *label;

@end
