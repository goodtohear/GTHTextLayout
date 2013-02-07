//
//  GTHTextLayout.h
//  Pods
//
//  Created by Michael Forrest on 07/02/2013.
//
//

#import <Foundation/Foundation.h>

@interface GTHTextLayout : NSObject
+(void)layoutLabels:(NSArray*)labels inScrollView:(UIScrollView*)scrollView withOptions: (NSDictionary*)options;
@end
