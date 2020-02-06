//
//  DetailViewController.h
//  Documents
//
//  Created by Bobby Keffury on 2/5/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DocumentController;
@class Document;

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property (nonatomic) DocumentController *documentController;
@property (nonatomic) Document *document;

@end

NS_ASSUME_NONNULL_END
