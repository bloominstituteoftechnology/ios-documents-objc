//
//  NELAddDocumentViewController.h
//  ios-Documents-objc
//
//  Created by Nelson Gonzalez on 3/27/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NELDocument.h"
#import "NELDocumentController.h"
#import "NSString+NELWordCount.h"


NS_ASSUME_NONNULL_BEGIN

@interface NELAddDocumentViewController : UIViewController <UITextViewDelegate>


@property (nonatomic) NELDocument *documents;
@property NELDocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
