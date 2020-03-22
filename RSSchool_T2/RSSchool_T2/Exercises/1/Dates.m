#import "Dates.h"

@implementation Dates

- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {
    
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    dateComponents.day = [day integerValue];
    dateComponents.month = [month integerValue];
    dateComponents.year = [year integerValue];
    
    NSCalendar *calendarBy = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"dd MMMM, EEEE";
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru_RU"];
    
    NSDate *dateString = [calendarBy dateFromComponents:dateComponents];
    
    BOOL isRealDate;
    if ([dateComponents isValidDateInCalendar:calendarBy]) {
        isRealDate = TRUE;
    } else {
        isRealDate = FALSE;
    }
    
    if (isRealDate) {
        return [dateFormatter stringFromDate: dateString];
    } else {
        return @"Такого дня не существует";
    }
        
    
    
    
    
    return @"";
}

@end
