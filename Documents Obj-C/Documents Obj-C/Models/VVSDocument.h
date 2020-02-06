//
//  VVSDocument.h
//  Documents Obj-C
//
//  Created by Vici Shaweddy on 2/4/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VVSDocument : NSObject

- (instancetype)initWithName:(NSString *)aTitle notes:(NSString *)someNotes;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *notes;
@property (nonatomic) NSUInteger wordCount;

@end

