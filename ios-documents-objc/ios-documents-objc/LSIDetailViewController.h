//
//  LSIDetailViewController.h
//  ios-documents-objc
//
//  Created by Lambda_School_Loaner_214 on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LSIDocument.h"
#import "LSIDocumentController.h"

@interface LSIDetailViewController : UIViewController <UITextViewDelegate>
@property (nonatomic) LSIDocumentController *controller;
@property (nonatomic) LSIDocument *document;
@end
