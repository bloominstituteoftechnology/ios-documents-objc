//
//  TXCDocumentsTableViewController.h
//  Documents-Objc
//
//  Created by Thomas Cacciatore on 7/17/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class TXCDocumentController;

@interface TXCDocumentsTableViewController : UITableViewController

@property (nonatomic) TXCDocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
