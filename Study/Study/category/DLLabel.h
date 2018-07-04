//
//  DLLabel.h
//  HYComunity
//
//  Created by Qianyuanhengye on 2017/9/6.
//  Copyright © 2017年 Qianyuanhengye. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum
{
    VerticalAlignmentTop = 0, // default
    VerticalAlignmentMiddle,
    VerticalAlignmentBottom,
} VerticalAlignment;
@interface DLLabel : UILabel
{
@private
    VerticalAlignment _verticalAlignment;
}

@property (nonatomic) VerticalAlignment verticalAlignment;

@end
