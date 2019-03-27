//
//  NELDocumentTableViewController.h
//  ios-Documents-objc
//
//  Created by Nelson Gonzalez on 3/27/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NELDocumentController.h"

NS_ASSUME_NONNULL_BEGIN

@interface NELDocumentTableViewController : UITableViewController

@property (nonatomic) NELDocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
