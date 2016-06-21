//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    NSNumber *doubleNumber =[NSNumber numberWithFloat:([number floatValue] *2)];
    return doubleNumber;
}

- (NSMutableArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *anArray = [NSMutableArray new];
    for (NSInteger i = number; i <= otherNumber; i++){
        [anArray addObject:[NSNumber numberWithInteger:i]];
    }
    return anArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSArray *array = arrayOfNumbers;
    array = [array sortedArrayUsingSelector: @selector(compare:)];
    NSInteger lownumber = [[array objectAtIndex:0] integerValue];
    return lownumber;
}
@end
