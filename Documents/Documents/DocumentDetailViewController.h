//
//  DocumentDetailViewController.h
//  Documents
//
//  Created by Michael Stoffer on 11/5/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DocumentController;
@class Document;

@interface DocumentDetailViewController : UIViewController

@property (nonatomic) DocumentController *documentController;
@property (nonatomic) Document *document;

@end
