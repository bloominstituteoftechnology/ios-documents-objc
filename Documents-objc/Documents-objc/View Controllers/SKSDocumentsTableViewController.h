//
//  SKSDocumentsTableViewController.h
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@class SKSDocumentController;

@interface SKSDocumentsTableViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property SKSDocumentController *documentController;

@end

