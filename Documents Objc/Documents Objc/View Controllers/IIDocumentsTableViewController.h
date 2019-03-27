//
//  IIDocumentsTableViewController.h
//  Documents Objc
//
//  Created by Ilgar Ilyasov on 11/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IIDocumentController;

NS_ASSUME_NONNULL_BEGIN

@interface IIDocumentsTableViewController : UITableViewController

@property (nonatomic) IIDocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
