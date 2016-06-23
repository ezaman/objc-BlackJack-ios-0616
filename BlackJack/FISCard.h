//
//  FISCard.h
//  OOP-Cards-Model
//
//  Created by Ehsan Zaman on 6/16/16.
//  Copyright © 2016 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISCard : NSObject
@property (strong, nonatomic, readonly) NSString *suit;
@property (strong, nonatomic, readonly) NSString *rank;
@property (strong, nonatomic, readonly) NSString *cardLabel;
@property (nonatomic, readonly) NSUInteger cardValue;



+ (NSArray*) validSuits;
+ (NSArray*) validRanks;
//- (NSString*) cardLabel;
//- (NSUInteger) cardValue;

-(instancetype)init;

-(instancetype)initWithSuit:(NSString*)suit
                       rank: (NSString*) rank;
                  //cardLabel: (NSString*) cardLabel
                 // cardValue: (NSUInteger)cardValue;

-(NSString*)description;

@end
