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
    /* WORK HERE */
    NSMutableString *counter = [NSMutableString string];
    NSMutableString *numberToAdd =[NSMutableString stringWithFormat:@"%ld", number];
    if (number < otherNumber)
    {
        while (number <= otherNumber)
        {
            numberToAdd =[NSMutableString stringWithFormat:@"%ld", number];
            [counter appendString: numberToAdd];
            number++;
        }
    }
    else
    {
        while (otherNumber <= number)
        {
            numberToAdd =[NSMutableString stringWithFormat:@"%ld", otherNumber];
            [counter appendString: numberToAdd];
            otherNumber++;
        }
    }
    return counter;
}

@end
