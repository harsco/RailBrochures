//
//  ViewController.h
//  ControlCatalogue
//
//  Created by SadikAli on 8/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTableCell.h"

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIDocumentInteractionControllerDelegate>
{
    IBOutlet UITableView* list;
    IBOutlet UITableView* partsList;
    NSMutableArray* machineType;
    NSMutableArray* model;
    NSMutableArray* year;
    NSMutableArray* fileName;
    
    NSMutableArray* partType;
    NSMutableArray* partFileName;
}

@property(nonatomic,retain)UITableView* list;
@property(nonatomic,retain)UITableView* partsList;


@end
