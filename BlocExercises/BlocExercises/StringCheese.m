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
    NSString *favoriteCheeseStringWithCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName]; //logs my favorite cheese
    return favoriteCheeseStringWithCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    //Finds the part of the string that says cheese (if it doesnt say cheese panic)
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    //removes the part that says cheese
    if (cheeseRange.location == NSNotFound)
    {
        return cheeseName;
    }
    else
    {
    NSString *cheeseNameWithoutCheeseSuffix = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    return cheeseNameWithoutCheeseSuffix;
    }
    return nil;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *numberOfCheesesStringWithCheeseCount;
    if (cheeseCount == 1) {
        
        numberOfCheesesStringWithCheeseCount = [NSString stringWithFormat:@"%ld cheese", cheeseCount];
    } else {
        
        numberOfCheesesStringWithCheeseCount = [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
    }
    
    
    return numberOfCheesesStringWithCheeseCount;
}

@end
