//
//  DocumentDetailViewController.h
//  Documents
//
//  Created by Daniela Parra on 11/14/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DYPDocument;
@class DYPDocumentController;

NS_ASSUME_NONNULL_BEGIN

@interface DocumentDetailViewController : UIViewController

@property (nonatomic) DYPDocument *document;
@property (nonatomic) DYPDocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
