//
//  GIPNewDocumentViewController.h
//  Documents-Objc
//
//  Created by Gi Pyo Kim on 12/11/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GIPDocumentController;

@interface GIPNewDocumentViewController : UIViewController <UITextViewDelegate>

@property GIPDocumentController *controller;

@end
