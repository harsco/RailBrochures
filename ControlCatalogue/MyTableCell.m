//
//  MyTableCell.m
//  ControlCatalogue
//
//  Created by SadikAli on 8/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyTableCell.h"

@implementation MyTableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        columns = [[NSMutableArray alloc] init];
        
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)addColumn:(CGFloat)position
{
    [columns addObject:[NSNumber numberWithFloat:position]];
   // NSLog(@"count of columns is %d",[columns count]);

}


-(void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    // Use the same color and width as the default cell separator for now
    CGContextSetRGBStrokeColor(ctx, 1.0, 0.0, 0.0, 1.0);
    CGContextSetLineWidth(ctx, 0.25);

//NSLog(@"count of columns is %d",[columns count]);

    for (int i = 0; i < [columns count]; i++) {
        CGFloat f = [((NSNumber*) [columns objectAtIndex:i]) floatValue];
        CGContextMoveToPoint(ctx, f, 0);
        CGContextAddLineToPoint(ctx, f, self.bounds.size.height);
    }

    CGContextStrokePath(ctx);

    [super drawRect:rect];
}


@end
