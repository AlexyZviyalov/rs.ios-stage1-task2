#import "TimeConverter.h"

@implementation TimeConverter
// Complete the following function
- (NSString*)convertFromHours:(NSString*)hours minutes:(NSString*)minutes {
    NSDictionary * minutesToWords = @{@"01" : @"one",
                                       @"02" : @"two",
                                       @"03" : @"three",
                                       @"04" : @"four",
                                       @"05" : @"five",
                                       @"06" : @"six",
                                       @"07" : @"seven",
                                       @"08" : @"eight",
                                       @"09" : @"nine",
                                       @"1" : @"one",
                                       @"2" : @"two",
                                       @"3" : @"three",
                                       @"4" : @"four",
                                       @"5" : @"five",
                                       @"6" : @"six",
                                       @"7" : @"seven",
                                       @"8" : @"eight",
                                       @"9" : @"nine",
                                       @"10" : @"ten",
                                       @"11" : @"eleven",
                                       @"12" : @"twelve",
                                       @"13" : @"thirteen",
                                       @"14" : @"fourteen",
                                       @"15" : @"quarter",
                                       @"16" : @"sixteen",
                                       @"17" : @"seventeen",
                                       @"18" : @"eighteen",
                                       @"19" : @"nineteen",
                                       @"20" : @"twenty",
                                       @"21" : @"twenty one",
                                       @"22" : @"twenty two",
                                       @"23" : @"twenty three",
                                       @"24" : @"twenty four",
                                       @"25" : @"twenty five",
                                       @"26" : @"twenty six",
                                       @"27" : @"twenty seven",
                                       @"28" : @"twenty eight",
                                       @"29" : @"twenty nine",
                                       @"30" : @"half",
                                       @"40" : @"twenty",
                                       @"45" : @"quarter"};
    NSDictionary * hourToWords = @{@"1" : @"one",
                                   @"2" : @"two",
                                   @"3" : @"three",
                                   @"4" : @"four",
                                   @"05" : @"five",
                                   @"6" : @"six",
                                   @"7" : @"seven",
                                   @"8" : @"eight",
                                   @"9" : @"nine",
                                   @"10" : @"ten",
                                   @"11" : @"eleven",
                                   @"12" : @"twelve"};
 
    int intMinutes = [minutes intValue];
    int intHours = [hours intValue];
    int minutesToModnight;
    minutesToModnight = 60 - intMinutes;
    NSString *minutesToMidnightString = [NSString stringWithFormat:@"%d",minutesToModnight];
    int nextHour = intHours + 1;
    NSString *nextHourString = [NSString stringWithFormat:@"%d",nextHour];
    
    if (intMinutes == 0) {
        return [NSString stringWithFormat:@"%@ o' clock", [hourToWords valueForKey:hours]];
    } else if (intMinutes > 0 && intMinutes <15) {
        return [NSString stringWithFormat:@"%@ minutes past %@",[minutesToWords valueForKey:minutes], [hourToWords valueForKey:hours] ];;
    } else if (intMinutes == 15) {
        return [NSString stringWithFormat:@"%@ past %@", [minutesToWords valueForKey:minutes], [hourToWords valueForKey:hours] ];
    } else if (intMinutes == 30){
        return [NSString stringWithFormat:@"%@ past %@", [minutesToWords valueForKey:minutes], [hourToWords valueForKey:hours]] ;
    } else if (intMinutes > 30 && intMinutes != 45 && intMinutes < 60) {
        return [NSString stringWithFormat:@"%@ minutes to %@",[minutesToWords valueForKey:minutesToMidnightString], [hourToWords valueForKey:nextHourString]];
    } else if (intMinutes == 45) {
        return [NSString stringWithFormat:@"%@ to %@",[minutesToWords valueForKey:minutes], [hourToWords valueForKey:nextHourString]];;
    } else {
        return @"";
    }
        
}

        


@end
