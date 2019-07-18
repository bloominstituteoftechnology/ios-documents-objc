//
//  MGBDocumentsTableViewController.h
//  Documents
//
//  Created by Mitchell Budge on 7/17/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGBDocument.h"
#import "MGBDocumentController.h"
#import "MGBDocumentDetailViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface MGBDocumentsTableViewController : UITableViewController

@property MGBDocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
