//
//  JBDocDetailViewController.h
//  Documents
//
//  Created by Jon Bash on 2020-01-22.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JBDocumentController;
@class JBDocument;


@interface JBDocDetailViewController : UIViewController

@property (nonatomic) JBDocumentController *documentController;
@property (nonatomic) JBDocument *document;

@end
