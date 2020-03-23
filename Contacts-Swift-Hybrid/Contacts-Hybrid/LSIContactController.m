//
//  LSIContactController.m
//  Contacts-Hybrid
//
//  Created by Austin Potts on 3/23/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIContactController.h"

@interface LSIContactController ()

@property (nonatomic)NSMutableArray *innerContatcs;

@end

@implementation LSIContactController

- (instancetype)init {
    self = [super init];
    if (self) {
     
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
    
    [self.innerContatcs addObjectsFromArray:@[
        
        
    ]];
    
}

@end
