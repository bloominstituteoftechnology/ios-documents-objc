//
//  BHDocument.h
//  ios-documents-objc
//
//  Created by Benjamin Hakes on 2/27/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BHDocument : NSObject

@property int wordCount;
@property NSString* title;
@property NSString* bodyText;

@end

NS_ASSUME_NONNULL_END
