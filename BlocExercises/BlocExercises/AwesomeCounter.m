//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
   
    if (number > otherNumber) {
        NSInteger notInMyHouseFirst = number;
        NSInteger notInMyHouseSecond = otherNumber;
        
        number = notInMyHouseSecond;
        otherNumber = notInMyHouseFirst;
    }
    
    NSString *stringOfNumbers = [@(number) stringValue];
    for (NSInteger i = number; i < otherNumber; i++){
        stringOfNumbers = [stringOfNumbers stringByAppendingString:[NSString stringWithFormat:@"%li", (i+1)]];
    }
    return stringOfNumbers;
}

@end
