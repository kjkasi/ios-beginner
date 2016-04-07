//
//  ASViewController.h
//  OutletsTest
//
//  Created by Oleksii Skutarenko on 19.11.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ASViewController : UIViewController

//@property (weak, nonatomic) IBOutlet UIView *testView;
//@property (weak, nonatomic) IBOutlet UIView *testView2;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *testViews;

@end
