//
//  LSIContactController.h
//  Contacts-Hybrid
//
//  Created by Austin Potts on 3/23/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>


// forward class declaration

// Only import the auot-generated Swift handler in .m files
@class Contact;

@interface LSIContactController : NSObject


@property (nonatomic,readonly,copy,nonnull) NSArray<Contact *> *contacts;

@end


