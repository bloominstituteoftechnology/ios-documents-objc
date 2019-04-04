//
//  PCYDocumentViewController.h
//  DocumentsObj-C
//
//  Created by Paul Yi on 4/3/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PCYDocumentController, PCYDocument;

NS_ASSUME_NONNULL_BEGIN

@interface PCYDocumentViewController : UIViewController <UITextViewDelegate>

@property (nonatomic) PCYDocumentController *documentController;
@property (nonatomic) PCYDocument *document;



@end

NS_ASSUME_NONNULL_END
