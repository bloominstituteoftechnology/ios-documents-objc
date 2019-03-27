//
//  LTBDocumentsTableViewController.h
//  Documents
//
//  Created by Linh Bouniol on 10/3/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LTBDocumentController;

NS_ASSUME_NONNULL_BEGIN

@interface LTBDocumentsTableViewController : UITableViewController

@property (nonatomic) LTBDocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
