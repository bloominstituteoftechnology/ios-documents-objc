//
//  NYCDocumentsTableViewController.h
//  Documents
//
//  Created by Nathanael Youngren on 4/3/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NYCDocumentsController.h"

NS_ASSUME_NONNULL_BEGIN

@interface NYCDocumentsTableViewController : UITableViewController

@property (nonatomic) NYCDocumentsController *documentsController;

@end

NS_ASSUME_NONNULL_END
