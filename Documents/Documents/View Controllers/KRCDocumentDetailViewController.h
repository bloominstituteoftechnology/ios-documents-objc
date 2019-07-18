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

@interface KRCDocumentDetailViewController : UIViewController

@property (nonatomic) KRCDocument *document;
@property (nonatomic) KRCDocumentController *documentController;

- (void)setDocument:(KRCDocument * _Nonnull)document;
- (void)setDocumentController:(KRCDocumentController * _Nonnull)documentController;

@end

NS_ASSUME_NONNULL_END
