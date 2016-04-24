//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *favoriteCheeseString = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return favoriteCheeseString;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSString *shortCheeseName = @"";
    
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        NSRange rangeOfSubstring = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        NSString *substring = [cheeseName substringToIndex:rangeOfSubstring.location];
        
        shortCheeseName = [NSString stringWithFormat:@"%@", substring];
    } else {
        shortCheeseName = [NSString stringWithFormat:@"%@", cheeseName];
    }
    return shortCheeseName;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *returningNumberOfCheeses = @"";
    if (cheeseCount == 1) {
       NSString *oneCheese = @"1 cheese";
        returningNumberOfCheeses = [NSString stringWithFormat:@"%@", oneCheese];
    } else {
        returningNumberOfCheeses = [NSString stringWithFormat:@"%lu cheeses", (unsigned long)cheeseCount];
    }
    
    return returningNumberOfCheeses;
}

@end
