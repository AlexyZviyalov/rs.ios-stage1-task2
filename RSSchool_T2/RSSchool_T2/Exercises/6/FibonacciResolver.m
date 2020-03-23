#import "FibonacciResolver.h"

@implementation FibonacciResolver
- (NSArray*)productFibonacciSequenceFor:(NSNumber*)number {
    NSMutableArray *fibonacciNumber = [NSMutableArray arrayWithObjects:@0,@1,@1,@2, nil];
//    NSNumber *copyOfNumber = @714;
    int intNumber = [number integerValue];
    
    //      int multiply = [[fibonacciNumber objectAtIndex:fibonacciNumber.count-2] integerValue] * [[fibonacciNumber lastObject] integerValue];
    int multiply = 0;
    //      NSLog(@"%d", multiply);
    while (multiply<intNumber) {
        int nextFibonacci = [[fibonacciNumber objectAtIndex:fibonacciNumber.count-2] integerValue] + [[fibonacciNumber lastObject] integerValue];
        NSNumber *fibonacciToAdd = [NSNumber numberWithInteger: nextFibonacci];
        [fibonacciNumber addObject:fibonacciToAdd];
        NSLog(@"%@", fibonacciNumber.lastObject);
        multiply = [[fibonacciNumber objectAtIndex:fibonacciNumber.count-2] integerValue] * [[fibonacciNumber lastObject] integerValue];
        NSLog(@"MULTIPLY %d",multiply);
        for (int i=0; i< fibonacciNumber.count; i++) {
            NSLog(@"%@",[fibonacciNumber objectAtIndex:i]);
        }
    }
        NSNumber *firstNumberForAnswer = [fibonacciNumber objectAtIndex:(fibonacciNumber.count-2)];
        NSLog(@"%@", firstNumberForAnswer);
        NSNumber *secondNumberForAnswer = [fibonacciNumber lastObject];
        NSLog(@"%@", secondNumberForAnswer);
        NSLog(@"MULTIPLY2 %d",multiply);
        NSNumber *lastNumberForAnswer = @1;
        if (multiply != intNumber) {
            lastNumberForAnswer = @0;
        }
        NSMutableArray *answer = [NSMutableArray arrayWithObjects:firstNumberForAnswer,secondNumberForAnswer,lastNumberForAnswer, nil];
        for (int i=0; i< answer.count; i++) {
            NSLog(@"ANSWER %@",[answer objectAtIndex:i]);
        }
    
    
    return answer;
}
//    return @[penultimateFibonacciNumber, lastFibonacciNumber, intValueOfNumber == productOfNumbers ? @1 : @0];

@end
