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
    NSMutableArray *favoriteDrinks;
    //loop through the passed array getting the favorite drinks using the favoritedrink method from above
    for (NSInteger x = 0; x < charactersArray.count; x++)
    {
        favoriteDrinks[x]=[self favoriteDrinkForStarTrekCharacterDictionary:charactersArray[x]];
    }

    //returns the array
    return favoriteDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    //create a mutable dictionary to be returned
    NSMutableDictionary *starTrekWithQuotes;
    //loops throught and copies the old dictionary to the new
    //adds quotes
    //returns new
    return starTrekWithQuotes;
}

@end
