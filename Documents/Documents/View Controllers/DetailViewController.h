//
//  DetailViewController.h
//  Documents
//
//  Created by Madison Waters on 2/27/19.
//  Copyright © 2019 Jonah Bergevin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DocumentController.h"
#import "Document.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property (nonatomic, strong) Document *document;
@property (nonatomic, strong) DocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
