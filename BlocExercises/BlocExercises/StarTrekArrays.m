//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *characterArray = [characterString componentsSeparatedByString:@";"];
    [characterArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%@", obj);
    }];
    return characterArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *characterString = [characterArray componentsJoinedByString:@";"];
    NSLog(@"%@", characterString);
    return characterString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSSortDescriptor *sortingCharacters = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    return [characterArray sortedArrayUsingDescriptors:@[sortingCharacters]];
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF MATCHES[c] 'worf'"];
    [characterArray filteredArrayUsingPredicate:containsWorf];
    for (NSString *character in characterArray) {
        NSLog(@"Remaining task: %@", character);
    }
    return characterArray;
}

@end
