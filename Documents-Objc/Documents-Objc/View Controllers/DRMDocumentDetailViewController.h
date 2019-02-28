//
//  DRMDocumentDetailViewController.h
//  Documents-Objc
//
//  Created by Dillon McElhinney on 2/27/19.
//  Copyright © 2019 Dillon McElhinney. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DRMDocumentModelController.h"
#import "NSString+WordCount.h"

NS_ASSUME_NONNULL_BEGIN

@interface DRMDocumentDetailViewController : UIViewController <UITextFieldDelegate, UITextViewDelegate>

@property DRMDocumentModelController *documentController;
@property DRMDocument *document;

@end

NS_ASSUME_NONNULL_END
