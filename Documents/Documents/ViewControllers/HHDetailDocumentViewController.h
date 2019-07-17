//
//  HHDetailDocumentViewController.h
//  Documents
//
//  Created by Hayden Hastings on 7/17/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HHDocument.h"
#import "HHDocumentController.h"
#import "NSString+WordCount.h"

NS_ASSUME_NONNULL_BEGIN

@interface HHDetailDocumentViewController : UIViewController

@property HHDocumentController *documentController;
@property HHDocument *document;

@end

NS_ASSUME_NONNULL_END
