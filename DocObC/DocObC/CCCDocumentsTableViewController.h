//
//  DocumentsTableViewController.h
//  DocObC
//
//  Created by Ryan Murphy on 7/17/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCCDocumentsController.h"

NS_ASSUME_NONNULL_BEGIN

@interface CCCDocumentsTableViewController : UITableViewController

@property (nonatomic) CCCDocumentsController *documentsController;

@end

NS_ASSUME_NONNULL_END
