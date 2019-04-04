//
//  PCYDocumentsTableViewController.h
//  DocumentsObj-C
//
//  Created by Paul Yi on 4/3/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PCYDocumentController;

NS_ASSUME_NONNULL_BEGIN

@interface PCYDocumentsTableViewController : UITableViewController
// Add a property with property attributes for an instance of the model controller
@property(nonatomic) PCYDocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
