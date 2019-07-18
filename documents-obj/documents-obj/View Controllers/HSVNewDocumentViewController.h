//
//  HSVNewDocumentViewController.h
//  documents-obj
//
//  Created by Hector Steven on 7/17/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class HSVDocumentController;
@class HSVDocument;

@interface HSVNewDocumentViewController : UIViewController <UITextViewDelegate>

@property HSVDocumentController *documentController;
@property (nonatomic) HSVDocument *document;

@end

NS_ASSUME_NONNULL_END
