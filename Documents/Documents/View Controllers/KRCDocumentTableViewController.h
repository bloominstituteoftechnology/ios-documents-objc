//
//  KRCDocumentTableViewController.h
//  Documents
//
//  Created by Christopher Aronson on 7/17/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class KRCDocumentController;
@class KRCDocument;

@interface KRCDocumentTableViewController : UITableViewController

@property (nonatomic) KRCDocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
