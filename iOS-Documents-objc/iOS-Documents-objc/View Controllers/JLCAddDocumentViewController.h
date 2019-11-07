//
//  JLCAddDocumentViewController.h
//  iOS-Documents-objc
//
//  Created by Jake Connerly on 11/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JLCDocumentController.h"

@interface JLCAddDocumentViewController : UIViewController <UITextViewDelegate>

@property (nonatomic) JLCDocumentController *documentController;

@end
