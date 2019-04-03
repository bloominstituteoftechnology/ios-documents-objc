//
//  JCSDocumentsTableViewController.h
//  DocumentsObjC
//
//  Created by Lambda_School_Loaner_95 on 4/3/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JCSDocumentController;

NS_ASSUME_NONNULL_BEGIN

@interface JCSDocumentsTableViewController : UITableViewController

@property JCSDocumentController *documentController;

// segues: DocumentDetail
// segues: NewDocument

@end

NS_ASSUME_NONNULL_END
