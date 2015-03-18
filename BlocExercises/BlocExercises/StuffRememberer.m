//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"
@implementation StuffRememberer
- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    //makes a strong reference to arrayToRemember so it can't be deallocated???
    NSArray *rememberer = arrayToRemember;
    /*@property (nonatomic, strong) NSMutableArray *Remembered;*/
};

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    //makes a copy of the array as it currently is and stores it for later?
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    return [@[] mutableCopy];
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return [@[] mutableCopy];
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    return 0.0f;
}

@end