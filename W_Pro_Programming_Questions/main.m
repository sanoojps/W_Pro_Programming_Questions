//
//  main.m
//  W_Pro_Programming_Questions
//
//  Created by Sanooj on 17/07/2018.
//  Copyright © 2018 Sanooj. All rights reserved.
//

#import <Foundation/Foundation.h>
void makeAMatrix(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        makeAMatrix();
        
    }
    return 0;
}

void makeAMatrix()
{
    
    /**
     1 2 3
     4 5 6
     7 8 9
     **/
    
    int rows = 3;
    int columns = 3;
    
    int initialValue = 0;
    
    NSMutableArray< NSMutableArray<NSNumber*>* > *a_rows =
    [NSMutableArray arrayWithCapacity:rows];
    
    NSMutableArray<NSNumber*> *a_columns =
    [NSMutableArray arrayWithCapacity:columns];
    
    int current_value = 0;
    
    for (int i = 0; i < rows; i++)
    {
        for(int j = 0; j < columns; j++)
        {
            current_value += 1;
            
            [a_columns addObject:@(current_value)];
        }
        
        [a_rows addObject:a_columns];
        
        // reset
        a_columns = [@[] mutableCopy];
    }
    
    NSLog(@"%@", a_rows);
    
    
    
}
