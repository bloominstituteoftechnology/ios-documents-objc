//
//  BYDocumentDetailViewController.h
//  Document-objc
//
//  Created by Bradley Yin on 10/9/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BYDocumentController;
@class BYDocument;

@interface BYDocumentDetailViewController : UIViewController

@property BYDocumentController *documentController;
@property BYDocument *document;

@end
