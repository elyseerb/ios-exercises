//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;
    
    if (dollars <= 4) {
        NSString *itemToReturn = [NSString stringWithFormat:@"get out of my store"];
        return itemToReturn;
    } else if (dollars == 5) {
        NSString *itemToReturn = [NSString stringWithFormat:@"have some gum"];
        return itemToReturn;
    } else if (dollars == 6) {
        NSString *itemToReturn = [NSString stringWithFormat:@"have an apple"];
        return itemToReturn;
    } else if (dollars == 1000) {
        NSString *itemToReturn = [NSString stringWithFormat:@"have an Apple computer"];
        return itemToReturn;
    } else if (dollars == 1000000000) {
        NSString *itemToReturn = [NSString stringWithFormat:@"have The Big Apple"];
        return itemToReturn;
    }
    
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    
    NSUInteger cost = self.getsDiscount ? 18 : 24;
    
    return cost;
}


@end
