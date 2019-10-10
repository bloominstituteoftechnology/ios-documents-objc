//
//  DocDetailViewController.h
//  DocumentsObj-C
//
//  Created by Luqmaan Khan on 10/9/19.
//  Copyright © 2019 Luqmaan Khan. All rights reserved.
//

#import <UIKit/UIKit.h>


@class DocumentController;
@class Document;

@interface DocDetailViewController : UIViewController <UITextViewDelegate>

@property DocumentController *controller;
@property Document *detailDocument;

@end


