//
//  MJRDocumentsTableViewController.h
//  Documents
//
//  Created by Moses Robinson on 3/27/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MJRDocumentController;

NS_ASSUME_NONNULL_BEGIN

@interface MJRDocumentsTableViewController : UITableViewController

@property (nonatomic) MJRDocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
