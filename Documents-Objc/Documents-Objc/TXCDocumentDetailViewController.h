//
//  TXCDocumentDetailViewController.h
//  Documents-Objc
//
//  Created by Thomas Cacciatore on 7/17/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class TXCDocumentController;
@class TXCDocument;

@interface TXCDocumentDetailViewController : UIViewController

@property TXCDocumentController *documentController;
@property TXCDocument *document;

@end

NS_ASSUME_NONNULL_END
