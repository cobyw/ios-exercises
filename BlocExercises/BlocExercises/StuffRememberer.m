//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@interface StuffRememberer ()
//sets properties
@property (nonatomic, strong) NSMutableArray *test;
@property (nonatomic, copy) NSMutableArray *copied;
@property (nonatomic, assign) CGFloat rememberedFloat;
@end

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    //sets 
    self.test = arrayToRemember;

}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    //makes a copy of the array as it currently is and stores it for later?
    self.copied = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
    self.rememberedFloat = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    return self.test;
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return self.copied;
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    return self.rememberedFloat;
}

@end