//
//  LTBDocument.m
//  Documents
//
//  Created by Linh Bouniol on 10/3/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

#import "LTBDocument.h"
#import "NSString+LTBWordCount.h"

@implementation LTBDocument

/*
@synthesize wordCount = _wordCount;     // instance variable

- (int)wordCount    // getter
{
    return [_text wordCount];
}

- (void)setWordCount:(int)wordCount     // setter
{
    _wordCount = wordCount;
}
 
 @synthesize title = _title;     // instance variable
 
 - (NSString *)title    // getter
 {
    return _title.copy;
 }
 
 - (void)setTitle:(NSString *)title     // setter
 {
    _title = title.copy;
 }
 
 When we create a property, getter/setter/instanceVariable are created for us under the hood in .m file.
 @synthesize is neccessary when we have a custom getter and setter, otherwise, it comes for free when using just a getter or a setter
 
 _property vc. self.property
 _property will get the value directly, where as every time we use self.property, the system will call on the getter method to get the return of the method.
 In term of speed, using _property would be faster, but not that much faster, and using self.property would be better for any class who want to subclass anotherClass.
 
 Two cases to use _property are in setter and initializer.
 For good pratice, just use self.property syntax.
 
 Why self.property is better?
 If anotherClass subclass LTBDocument class, for instance, by using self.property we are allowing anotherClass to call super and have access to LTBDocument's getter/setter (one example), which will allow them to go and implement their own modification to make their own class better.
 If we use _property, they can only change _property directly and will have to figure out a way to access the getter/setter.
 */

- (int)wordCount // getter
{
    return [_text wordCount];
}

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text {
    if (self = [super init]) {
        self.title = title;
        self.text = text;
    }
    return self;
}


@end
