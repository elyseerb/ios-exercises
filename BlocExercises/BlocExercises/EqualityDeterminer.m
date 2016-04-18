//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    BOOL isItSameString = [string1 isEqual: string2];
    return isItSameString;
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    BOOL isItSameNumber = [number1 isEqual: number2];
    return isItSameNumber;
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    BOOL isGreaterThan = integer1 > integer2;
    return isGreaterThan;
}

@end
