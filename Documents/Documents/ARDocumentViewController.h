//
//  ARDocumentViewController.h
//  Documents
//
//  Created by Alex Rhodes on 11/6/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ARDocumentController.h"
#import "ARDocument.h"

@interface ARDocumentViewController : UIViewController <UITextViewDelegate>

@property (nonatomic) ARDocumentController *controller;
@property (nonatomic) ARDocument *document;

@end


