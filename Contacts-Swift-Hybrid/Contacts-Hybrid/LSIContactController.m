//
//  LSIContactController.m
//  Contacts-Hybrid
//
//  Created by Austin Potts on 3/23/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIContactController.h"

// "Project_Name-swift.h"
#import "Contacts_Hybrid-Swift.h"

@interface LSIContactController ()

@property (nonatomic)NSMutableArray *innerContatcs;

@end

@implementation LSIContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        [self addTestData];
    }
    return self;
}

// computed property for contatcs
- (NSArray *)contacts {
    return [self.innerContatcs copy];
}
// 2. Lazy init for internal contatcs
- (NSMutableArray *)innerContatcs {
    if (!_innerContatcs){
        _innerContatcs = [[NSMutableArray alloc] init];
    }
    return _innerContatcs;
}


// 3. Test data
- (void)addTestData {
    
    // import the swift header
    [self.innerContatcs addObjectsFromArray:@[
        
        [[Contact alloc] initWithName:@"Austin Potts" relationship:@"Myself"],
        [[Contact alloc] initWithName:@"Joe Bill" relationship:@"Dog"],
        
    ]];
    
}

@end
