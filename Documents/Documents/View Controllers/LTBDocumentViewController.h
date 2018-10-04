//
//  LTBDocumentViewController.h
//  Documents
//
//  Created by Linh Bouniol on 10/3/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LTBDocumentController, LTBDocument;

NS_ASSUME_NONNULL_BEGIN

@interface LTBDocumentViewController : UIViewController <UITextViewDelegate>

@property (nonatomic) LTBDocumentController *documentController;
@property (nonatomic) LTBDocument *document;

- (void)updateViews;

@end

NS_ASSUME_NONNULL_END
