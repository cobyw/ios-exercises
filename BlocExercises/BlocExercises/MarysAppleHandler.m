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
if (dollars < 5) //if she has less than 5 dollars
{
    itemToReturn = @"get out of my store";
}
else if (dollars < 6) //if she has less than 6 but more than 5 dollars
{
    itemToReturn = @"have some gum";
}
else if (dollars <1000) //between 6+ and 1000-
{
    itemToReturn = @"have an apple";
}
else if (dollars <1000000000) //she has between 1000 and a hundred million
{
    itemToReturn = @"have an Apple computer";
}
else //she has at or over a hundred million dollars
{
    itemToReturn =@"have The Big Apple";
}
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    /* WORK HERE */

    NSUInteger cost = (self.getsDiscount)? 18/*if she gets the discount*/:24/*if she does not*/;
    return cost;
     
}

@end
