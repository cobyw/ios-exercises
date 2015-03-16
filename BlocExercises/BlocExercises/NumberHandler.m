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
    //Takes in the number - unboxes it as a double, and multiplies it by two
    NSNumber *doubled = [NSNumber numberWithDouble:[number doubleValue] * 2];
    return doubled;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    //initializes the array to be returned;
    NSMutableArray *numberSet = [NSMutableArray new];
    //makes two new ints for the low and high numbers and the difference
    NSInteger low, high;
    if (number < otherNumber)
    {
        low = number;
        high = otherNumber;
    }
    else
    {
        low=otherNumber;
        high=number;
    }
    //adds the numbers to the array starting with low and moving to high
while (low <= high)
{
    [numberSet addObject:[NSNumber numberWithInteger: low]];
    low++;
}
    return numberSet;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    //Initializes lowest to the first number in the array
    NSInteger lowest = [arrayOfNumbers[0] intValue];
    //goes through the array looking for a lower number, and if one is found sets lowest to that number
    for (NSInteger x =0; x < arrayOfNumbers.count; x++)
    {
        if (lowest > [arrayOfNumbers[x] intValue])
        {
            lowest = [arrayOfNumbers[x] intValue];
        }
    };
    return lowest;
}

@end
