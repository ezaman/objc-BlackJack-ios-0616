//
//  FISCard.m
//  OOP-Cards-Model
//
//  Created by Ehsan Zaman on 6/16/16.
//  Copyright © 2016 Al Tyus. All rights reserved.
//

#import "FISCard.h"

@interface FISCard ()
@property (strong, nonatomic, readwrite) NSString *suit;
@property (strong, nonatomic, readwrite) NSString *rank;
@property (strong, nonatomic, readwrite) NSString *cardLabel;
@property (nonatomic, readwrite) NSUInteger cardValue;

@end

@implementation FISCard

+ (NSArray*) validSuits{
return @[@"♠", @"♥",@"♣", @"♦"];

}
+ (NSArray*) validRanks{
return  @[@"A",@"2", @"3",@"4", @"5",@"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}
- (NSString*) cardLabels{
    NSString *cardLabel = [NSString stringWithFormat:@"%@%@", self.suit, self.rank];
    return cardLabel;
}
- (NSUInteger) cardValue{
    NSArray *validRanks = [FISCard validRanks];
    NSUInteger index = [validRanks indexOfObject: self.rank];
    NSUInteger cardValues = 0;
    
    if (index <= 9){
        cardValues = index +1;
    }else {
        cardValues = 10;
    }
    
    
    return cardValues;
}

-(instancetype)init {
     self = [self initWithSuit:@"!" rank: @"N"];
    return self;
}

-(instancetype)initWithSuit:(NSString*)suit
                       rank: (NSString*) rank
                  //cardLabel: (NSString*) cardLabel
                 //cardValue: (NSUInteger)cardValue
{
    
    self = [super init];
    if (self) {
        _suit = suit;
        _rank = rank;
        _cardLabel = [self cardLabels];
        _cardValue = [self cardValue];
    }
    return self;
}

- (NSString *)description {
    return self.cardLabel;
}

@end
