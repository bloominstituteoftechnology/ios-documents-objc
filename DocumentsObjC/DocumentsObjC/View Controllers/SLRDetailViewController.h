//
//  SLRDetailViewController.h
//  DocumentsObjC
//
//  Created by Sameera Roussi on 7/17/19.
//  Copyright © 2019 Sameera Roussi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class SLRDocument;
@class SLRDocumentController;

@interface SLRDetailViewController : UIViewController <UITextViewDelegate>

@property SLRDocumentController *documentController;
@property (nonatomic) SLRDocument *document;

@end

NS_ASSUME_NONNULL_END
