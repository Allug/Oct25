//
//  View.m
//  Oct25
//
//  Created by NYU User on 10/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "View.h"
#define RED(color)	(((color) >> 2*8 & 0xFF) / 255.0)
#define GREEN(color)	(((color) >> 1*8 & 0xFF) / 255.0)
#define BLUE(color)	(((color) >> 0*8 & 0xFF) / 255.0)


@implementation View

- (id) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        
		//self.backgroundColor = [UIColor yellowColor];
		self.backgroundColor = [UIColor colorWithRed:1.0 green:0.4 blue:0.2 alpha:1.0];
		
		//unsigned color = 0xFF00FF;	//purple
		//self.backgroundColor = [UIColor colorWithRed: RED(color) green: GREEN(color) blue: BLUE(color) alpha: 1.0];
				
		//Keep the size of the view the same,
		//but move the origin to the center of the view.
		CGFloat w = self.bounds.size.width;
		CGFloat h = self.bounds.size.height;
		self.bounds = CGRectMake(-w / 2, -h / 2, w, h);

	
	
	}
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
    // Drawing code
    
	UIFont *font = [UIFont italicSystemFontOfSize: 15.0];
	//UIFont *font = [UIFont boldSystemFontOfSize: 30.0];
	//UIFont *font = [UIFont systemFontOfSize: 30.0];
    
	
	NSURL *url = [[NSURL alloc] initWithString: @"http://finance.yahoo.com/d/quotes.csv?s=C&f=sl1t1"];
	
	NSError *error;
	NSString *string = [[NSString alloc]
						initWithContentsOfURL: url
						encoding: NSUTF8StringEncoding
						error: &error
						];
	
	if (string == nil) {
		string = [error localizedDescription];
	}

   
	NSString *string_a = @"χαιρετισμός";
	
	
	// NSString *string2 = url;
   //NSString *string_2 = @"Wednesday";
	
   
	CGContextRef c = UIGraphicsGetCurrentContext();
	//Font Color
	CGContextSetRGBFillColor(c, .2, 0, 1, 1.0); //red, green, blue, alpha
	
	CGPoint point = CGPointMake(0.0, 0.0);
    [string drawAtPoint: point withFont: font];
	
	CGPoint point_a = CGPointMake(0.0, 50.0);
    [string_a drawAtPoint: point_a withFont: font];
	
	


}





@end
