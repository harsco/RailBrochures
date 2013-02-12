//
//  ViewController.m
//  ControlCatalogue
//
//  Created by SadikAli on 8/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize list;
@synthesize partsList;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    machineType = [[NSMutableArray alloc] initWithObjects:@"Production/Switch Tamper",@"Drone Tamper",@"Production/Switch Tamper",@"Tile Inserter/Extractor",@"Switch & Crossing Grinder", nil];
    
    model = [[NSMutableArray alloc] initWithObjects:@"MKIV-HD",@"DT-2A-J2",@"MKVI-NZ",@"TR-10",@"RGH10C1", nil];
    
    year = [[NSMutableArray alloc] initWithObjects:@"2012",@"2011",@"2009",@"2011",@"2011", nil];
    
    fileName = [[NSMutableArray alloc] initWithObjects:@"5007763_B_MKIV_HD_J2_Oper.PDF",@"5001030 Prod Drone Opn Mnl red.PDF",@"4014304 Mk6 Ops&MaintMan.PDF",@"Tie Inserter-Extractor TR10 Ops&MaintMan 4012259.PDF",@"1631A-Oper.PDF", nil];
    
    partFileName = [[NSMutableArray alloc] initWithObjects:@"5007763_B_MKIV_HD_J2_Parts.PDF",@"5001032 Drone Tamper 2Jupiter2 PartsMan 2010 BNSF.PDF",@"4014304 Mk6 Parts.PDF",@"Tie Inserter-Extractor TR10 PartsMan 3002579.PDF",@"1632A-Part.PDF", nil];
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return (interfaceOrientation == UIInterfaceOrientationPortrait);
    }
}


#pragma mark Tableview Methods

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if([tableView isEqual:list])
    return 5;
    
    else {
        return 5;
    }
    
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
   if([tableView isEqual:list])
   {
    
        NSString *MyIdentifier = [NSString stringWithFormat:@"MyIdentifier %i", indexPath.row];
        
        MyTableCell *cell = (MyTableCell *)[tableView dequeueReusableCellWithIdentifier:MyIdentifier];
        
        if (cell == nil) {
            //cell = [[[MyTableCell alloc] initWithFrame:CGRectZero reuseIdentifier:MyIdentifier] autorelease];
            
            cell = [[[MyTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyIdentifier] autorelease];
            
            UILabel *label = [[[UILabel alloc] initWithFrame:CGRectMake(10.0, 0, 150.0,tableView.rowHeight)] autorelease];
            [cell addColumn:206];
            //label.tag = LABEL_TAG;
            label.font = [UIFont systemFontOfSize:12.0];
            //label.text = [NSString stringWithFormat:@"%d", indexPath.row];
            label.text = [machineType objectAtIndex:indexPath.row ];
            //label.textAlignment = UITextAlignmentRight;
            label.textColor = [UIColor blueColor];
            label.autoresizingMask = UIViewAutoresizingFlexibleRightMargin |
            UIViewAutoresizingFlexibleHeight;
            [cell.contentView addSubview:label]; 
            
            label =  [[[UILabel alloc] initWithFrame:CGRectMake(220.0, 0, 100.0,tableView.rowHeight)] autorelease];
            [cell addColumn:389];
            //label.tag = VALUE_TAG;
            label.font = [UIFont systemFontOfSize:12.0];
            // add some silly value
            //label.text = [NSString stringWithFormat:@"%d", indexPath.row * 4];
            label.text =   [model objectAtIndex:indexPath.row ];
            //label.textAlignment = UITextAlignmentRight;
            label.textColor = [UIColor blueColor];
            label.autoresizingMask = UIViewAutoresizingFlexibleRightMargin |
            UIViewAutoresizingFlexibleHeight;
            [cell.contentView addSubview:label];
            
            label =  [[[UILabel alloc] initWithFrame:CGRectMake(399.0, 0, 100.0,tableView.rowHeight)] autorelease];
            [cell addColumn:500];
            //label.tag = VALUE_TAG;
            label.font = [UIFont systemFontOfSize:12.0];
            // add some silly value
            //label.text = [NSString stringWithFormat:@"%d", indexPath.row * 4];
            label.text =   [year objectAtIndex:indexPath.row ];
            //label.textAlignment = UITextAlignmentRight;
            label.textColor = [UIColor blueColor];
            label.autoresizingMask = UIViewAutoresizingFlexibleRightMargin |
            UIViewAutoresizingFlexibleHeight;
            [cell.contentView addSubview:label];
            
    //        label =  [[[UILabel alloc] initWithFrame:CGRectMake(570.0, 0, 100.0,tableView.rowHeight)] autorelease];
    //        //[cell addColumn:554];
    //        //label.tag = VALUE_TAG;
    //        label.font = [UIFont systemFontOfSize:12.0];
    //        // add some silly value
    //        //label.text = [NSString stringWithFormat:@"%d", indexPath.row * 4];
    //        label.text =   [fileName objectAtIndex:indexPath.row ];
    //        //label.textAlignment = UITextAlignmentRight;
    //        label.textColor = [UIColor blueColor];
    //        label.autoresizingMask = UIViewAutoresizingFlexibleRightMargin |
    //        UIViewAutoresizingFlexibleHeight;
    //        [cell.contentView addSubview:label];
            
            
           // UIButton* button = [[UIButton alloc] initWithFrame:CGRectMake(570.0, 0, 100.0,tableView.rowHeight)];
            
            UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(510.0, 0, 250.0,tableView.rowHeight);
            
    //        button.titleLabel.text = [fileName objectAtIndex:indexPath.row ];
            button.titleLabel.textColor = [UIColor blueColor];
            [button.titleLabel setFont:[UIFont systemFontOfSize:12.0]];
            
            [button setTitle:[fileName objectAtIndex:indexPath.row ] forState:UIControlStateNormal];
            [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
            
            button.tag = indexPath.row;
            
            [button addTarget:self action:@selector(documentClicked:) forControlEvents:UIControlEventTouchUpInside];
            
            
            [cell.contentView addSubview:button];
            
            
        }
       
        
        return cell;
   }
    
   else 
   {
       NSString *MyIdentifier = [NSString stringWithFormat:@"MyIdentifier %i", indexPath.row];
       
       MyTableCell *cell = (MyTableCell *)[tableView dequeueReusableCellWithIdentifier:MyIdentifier];
       
       if (cell == nil) {
           //cell = [[[MyTableCell alloc] initWithFrame:CGRectZero reuseIdentifier:MyIdentifier] autorelease];
           
           cell = [[[MyTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyIdentifier] autorelease];
           
           UILabel *label = [[[UILabel alloc] initWithFrame:CGRectMake(10.0, 0, 150.0,tableView.rowHeight)] autorelease];
           [cell addColumn:206];
           //label.tag = LABEL_TAG;
           label.font = [UIFont systemFontOfSize:12.0];
           //label.text = [NSString stringWithFormat:@"%d", indexPath.row];
           label.text = [machineType objectAtIndex:indexPath.row ];
           //label.textAlignment = UITextAlignmentRight;
           label.textColor = [UIColor blueColor];
           label.autoresizingMask = UIViewAutoresizingFlexibleRightMargin |
           UIViewAutoresizingFlexibleHeight;
           [cell.contentView addSubview:label]; 
           
           label =  [[[UILabel alloc] initWithFrame:CGRectMake(220.0, 0, 100.0,tableView.rowHeight)] autorelease];
           [cell addColumn:389];
           //label.tag = VALUE_TAG;
           label.font = [UIFont systemFontOfSize:12.0];
           // add some silly value
           //label.text = [NSString stringWithFormat:@"%d", indexPath.row * 4];
           label.text =   [model objectAtIndex:indexPath.row ];
           //label.textAlignment = UITextAlignmentRight;
           label.textColor = [UIColor blueColor];
           label.autoresizingMask = UIViewAutoresizingFlexibleRightMargin |
           UIViewAutoresizingFlexibleHeight;
           [cell.contentView addSubview:label];
           
           label =  [[[UILabel alloc] initWithFrame:CGRectMake(399.0, 0, 100.0,tableView.rowHeight)] autorelease];
           [cell addColumn:500];
           //label.tag = VALUE_TAG;
           label.font = [UIFont systemFontOfSize:12.0];
           // add some silly value
           //label.text = [NSString stringWithFormat:@"%d", indexPath.row * 4];
           label.text =   [year objectAtIndex:indexPath.row ];
           //label.textAlignment = UITextAlignmentRight;
           label.textColor = [UIColor blueColor];
           label.autoresizingMask = UIViewAutoresizingFlexibleRightMargin |
           UIViewAutoresizingFlexibleHeight;
           [cell.contentView addSubview:label];
           
                     
           UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
           button.frame = CGRectMake(510.0, 0, 250.0,tableView.rowHeight);
           
           //        button.titleLabel.text = [fileName objectAtIndex:indexPath.row ];
           button.titleLabel.textColor = [UIColor blueColor];
           [button.titleLabel setFont:[UIFont systemFontOfSize:12.0]];
           
           [button setTitle:[partFileName objectAtIndex:indexPath.row ] forState:UIControlStateNormal];
           [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
           
           button.tag = indexPath.row;
           
           [button addTarget:self action:@selector(partDocumentClicked:) forControlEvents:UIControlEventTouchUpInside];
           
           
           
           
           [cell.contentView addSubview:button];
           
           UIView* temp = [[UIView alloc] init];
           temp.backgroundColor = [UIColor clearColor];
           
           cell.selectedBackgroundView = temp;
           
           [temp release];
           
           
           
           
       }
       
       
       return cell;

   }
    
        
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

-(void)documentClicked:(id)sender
{
    NSLog(@"tag is %d",[sender tag]);
    
   
    
    int number = [sender tag];
    
    NSLog(@"%@",[[fileName objectAtIndex:number] stringByReplacingOccurrencesOfString:@".PDF" withString:@""]);
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Tie Inserter-Extractor TR10 Ops&MaintMan 4012259" ofType:@"pdf"];
     NSURL *targetURL = [NSURL fileURLWithPath:path];
     
     UIDocumentInteractionController* docController = [UIDocumentInteractionController interactionControllerWithURL:targetURL];
     
     
     docController.delegate = self;
     
     [docController retain];
     
     
     BOOL isValid = [docController presentOpenInMenuFromRect:CGRectMake(200, 20, 400, 400) inView:self.view animated:YES];
}

-(void)partDocumentClicked:(id)sender
{
    NSLog(@"tag is %d",[sender tag]);
    
    
    
    int number = [sender tag];
    
    NSLog(@"%@",[[partFileName objectAtIndex:number] stringByReplacingOccurrencesOfString:@".PDF" withString:@""]);
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Tie Inserter-Extractor TR10 Ops&MaintMan 4012259" ofType:@"pdf"];
    
    if(![path length])
    {
        path = [[NSBundle mainBundle] pathForResource:@"5001032 Drone Tamper 2Jupiter2 PartsMan 2010 BNSF" ofType:@"pdf"];
    }
    
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    
    UIDocumentInteractionController* docController = [UIDocumentInteractionController interactionControllerWithURL:targetURL];
    
    
    docController.delegate = self;
    
    [docController retain];
    
    
   BOOL isValid = [docController presentOpenInMenuFromRect:CGRectMake(200, 250, 400, 400) inView:self.view animated:YES];
}


@end
