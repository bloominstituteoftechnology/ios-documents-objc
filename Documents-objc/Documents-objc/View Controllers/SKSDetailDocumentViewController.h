//
//  SKSDetailDocumentViewController.h
//  Documents-objc
//
//  Created by Lambda_School_Loaner_204 on 1/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SKSDocumentController, SKSDocument;

@interface SKSDetailDocumentViewController : UIViewController <UITextViewDelegate>

@property SKSDocumentController *documentController;
@property SKSDocument *document;

@end

