//
//  MJRDocumentDetailViewController.h
//  Documents
//
//  Created by Moses Robinson on 3/27/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MJRDocument;
@class MJRDocumentController;

NS_ASSUME_NONNULL_BEGIN

@interface MJRDocumentDetailViewController : UIViewController <UITextViewDelegate>

@property (nonatomic) MJRDocumentController *documentController;
@property (nonatomic) MJRDocument *document;

@end

NS_ASSUME_NONNULL_END
