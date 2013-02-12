//
//  MyTableCell.h
//  ControlCatalogue
//
//  Created by SadikAli on 8/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableCell : UITableViewCell
{
    NSMutableArray* columns;
}


-(void)addColumn:(CGFloat)position;


@end
