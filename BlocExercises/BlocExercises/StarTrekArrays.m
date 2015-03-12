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
    NSArray *arrayOfStarTrekCharactersFromString = [characterString componentsSeparatedByString:@";"];
    return arrayOfStarTrekCharactersFromString;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *stringFromArray = [characterArray componentsJoinedByString:@";"];
    return stringFromArray;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    //setting the sorting descriptor as alphabetical and ascending
    NSSortDescriptor *alphabetical = [[NSSortDescriptor alloc]initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    //creates a new array and sets it equal to the sorted old array
    NSArray *sorted = [characterArray sortedArrayUsingDescriptors:@[alphabetical] ];
    return sorted;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    //sets the containsWorf predicate, not case sensitive
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    //sets a variable for the result to be stored in
    BOOL result = false;
    //Goes through the array looking for worf and breaking if found
    for (NSInteger x =0; x < characterArray.count && result == false; x++)
    {
        result = [containsWorf evaluateWithObject:characterArray[x]];
    }
    return result;
}

@end
