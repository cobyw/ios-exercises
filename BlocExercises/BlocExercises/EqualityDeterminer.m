//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    BOOL isTheSameAsString = [string1 isEqualToString:string2];
    return (isTheSameAsString);
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    /* WORK HERE */
    BOOL isTheSameAsNumber = [number1 isEqualToNumber:number2];
    return (isTheSameAsNumber);
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    BOOL isGreaterThan = integer1 > integer2;
    return isGreaterThan;
}

@end
