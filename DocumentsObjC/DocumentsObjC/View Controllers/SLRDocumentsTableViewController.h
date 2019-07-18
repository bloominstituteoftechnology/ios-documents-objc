//
//  SLRDocumentsTableViewController.h
//  DocumentsObjC
//
//  Created by Sameera Roussi on 7/17/19.
//  Copyright © 2019 Sameera Roussi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class SLRDocumentController;

@interface SLRDocumentsTableViewController : UITableViewController

@property (nonatomic) SLRDocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
