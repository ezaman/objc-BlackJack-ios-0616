//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISBlackjackPlayer.h"
#import "FISCardDeck.h"
#import "FISCard.h"
@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    FISBlackjackPlayer *player = [[FISBlackjackPlayer alloc]initWithName:@"Ehsan"];
    NSLog(@"%@",player);
    FISCardDeck *ehsansCards = [[FISCardDeck alloc]init];
    NSLog(@"%@", ehsansCards.description);
    return YES;
}

@end
