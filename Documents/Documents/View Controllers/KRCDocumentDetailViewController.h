//
//  KRCDocumentDetailViewController.h
//  Documents
//
//  Created by Christopher Aronson on 7/17/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class KRCDocument;
@class KRCDocumentController;

@interface KRCDocumentDetailViewController : UIViewController <UITextViewDelegate>

@property (nonatomic) KRCDocument *document;
@property (nonatomic) KRCDocumentController *documentController;
@property (nonatomic) NSIndexPath *indexPathForDocument;

- (void)setDocument:(KRCDocument * _Nonnull)document;
- (void)setDocumentController:(KRCDocumentController * _Nonnull)documentController;
- (void)setIndexPathForDocument:(NSIndexPath *)indexPathForDocument;
@end

NS_ASSUME_NONNULL_END
