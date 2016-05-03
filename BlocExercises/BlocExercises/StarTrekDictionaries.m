//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    id favoriteDrink = characterDictionary[@"favorite drink"];
    if (favoriteDrink != nil && [favoriteDrink isKindOfClass:[NSString class]]) {
        NSLog(@"%@", favoriteDrink);
        return favoriteDrink;
    }
    return favoriteDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *newCharacterList = [[NSMutableArray alloc] init];
    for (NSDictionary *character in charactersArray) {
        NSString *dranks = [self favoriteDrinkForStarTrekCharacterDictionary:character];
        [newCharacterList addObject:dranks];
    }
    return newCharacterList;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *newCharacterDictionary = [characterDictionary mutableCopy];
    newCharacterDictionary[@"quote"] = @"This is a quote.";
    return newCharacterDictionary;
}

@end
