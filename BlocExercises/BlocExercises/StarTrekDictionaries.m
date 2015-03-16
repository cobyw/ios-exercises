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
    //takes in the favorite drink
    id favoriteDrink = characterDictionary[@"favorite drink"];
    //makes sure it exists and is a string
    if (favoriteDrink != nil && [favoriteDrink isKindOfClass:[NSString class]])
        return favoriteDrink;
    //if not returns nil
    else
        return nil;
}

/*NOT CURRENTLY FUNCTIONAL BELOW HERE*/

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    //creates a mutable array to store the drinks to be returned
    NSMutableArray *favoriteDrinks = [NSMutableArray array];
    //loop through the passed array getting the favorite drinks using the favoritedrink method from above
    for (NSInteger x = 0; x < charactersArray.count; x++)
    {
        favoriteDrinks[x]=[self favoriteDrinkForStarTrekCharacterDictionary:charactersArray[x]];
    }

    //returns the array
    return favoriteDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    //create the mutable dictionary to be returned and copies the passed dictionary to it
    NSMutableDictionary *starTrekWithQuotes = [characterDictionary mutableCopy];
    //adds the quote
    [starTrekWithQuotes setObject:@"Live long and prosper" forKey:@"quote"];
    //returns the new dictionary
    return starTrekWithQuotes;
}

@end
