//
//  MJRDocumentsTableViewController.h
//  Documents-ObjectiveC
//
//  Created by Marlon Raskin on 10/9/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MJRDocumentController;

@interface MJRDocumentsTableViewController : UITableViewController

@property (nonatomic) MJRDocumentController *controller;

@end
