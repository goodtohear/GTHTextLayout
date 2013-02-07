//
//  GTHTextLayout.m
//  Pods
//
//  Created by Michael Forrest on 07/02/2013.
//
//

#import "GTHTextLayout.h"

float option(NSDictionary*options, NSString* name, float defaultValue){
    NSNumber * option = [options valueForKey:name];
    if(option){
        return [option floatValue];
    }
    return defaultValue;
}
@implementation GTHTextLayout

+(void)layoutLabels:(NSArray *)labels inScrollView:(UIScrollView *)scrollView withOptions:(NSDictionary *)options{
    CGFloat nextY = option(options, @"topPadding", 0);
    CGFloat spacing = option(options, @"spacing", 0);
    for (UILabel * label in labels) {
        CGSize textSize = [label.text sizeWithFont:label.font constrainedToSize:CGSizeMake(label.frame.size.width, MAXFLOAT) lineBreakMode:NSLineBreakByWordWrapping];
        label.frame = CGRectMake(label.frame.origin.x, nextY, label.frame.size.width, textSize.height);
        nextY += textSize.height + spacing;
    }
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width, nextY);
}
@end
