//
//  JLCAddDocumentViewController.h
//  iOS-Documents-objc
//
//  Created by Jake Connerly on 11/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JLCDocumentController.h"
#import "JLCDocument.h"

@interface JLCAddDocumentViewController : UIViewController <UITextViewDelegate>

@property (nonatomic) JLCDocumentController *documentController;
@property (nonatomic) JLCDocument *document;

@end
