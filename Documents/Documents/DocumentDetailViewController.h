//
//  DocumentDetailViewController.h
//  Documents
//
//  Created by Joel Groomer on 2/4/20.
//  Copyright © 2020 Julltron. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DocumentController.h"
#import "Document.h"

@interface DocumentDetailViewController : UIViewController <UITextViewDelegate>

@property (nonatomic) DocumentController *documentController;
@property (nonatomic) Document *document;

@end

