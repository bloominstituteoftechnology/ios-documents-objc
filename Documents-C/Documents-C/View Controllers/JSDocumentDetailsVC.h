//
//  JSDocumentDetailsVC.h
//  Documents-C
//
//  Created by Jeffrey Santana on 10/9/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Documents_C+CoreDataModel.h"

@interface JSDocumentDetailsVC : UIViewController <UITextViewDelegate>

@property Document *document;

- (NSManagedObjectContext *)managedObjectContext;

@end

