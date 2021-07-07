//
//  DocumentViewController.h
//  Documents Obj-C
//
//  Created by Ivan Caldwell on 2/28/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DocumentController.h"
#import "Document.h"

NS_ASSUME_NONNULL_BEGIN
// In the detail view controller, adopt the UITextViewDelegate protocol. Set the view
// controller as the delegate of the text view.
@interface DocumentDetailViewController : UIViewController <UITextViewDelegate>

// In your detail view controller, add two properties with property attributes;
// one for your model and one for your model controller.
@property DocumentController *documentController;
@property Document *document;

@end

NS_ASSUME_NONNULL_END
