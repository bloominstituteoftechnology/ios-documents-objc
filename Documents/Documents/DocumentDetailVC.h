//
//  DocumentDetailVC.h
//  Documents
//
//  Created by John Kouris on 2/4/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DocumentController;
@class JDKDocument;

NS_ASSUME_NONNULL_BEGIN

@interface DocumentDetailVC : UIViewController<UITextViewDelegate>

@property (nonatomic) DocumentController *documentsController;
@property (nonatomic) JDKDocument *document;

@end

NS_ASSUME_NONNULL_END
