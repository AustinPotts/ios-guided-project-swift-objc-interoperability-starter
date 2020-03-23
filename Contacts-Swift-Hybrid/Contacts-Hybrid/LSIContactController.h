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


NS_SWIFT_NAME(ContactController)
@interface LSIContactController : NSObject

// <Contatcy> is a lightweight generic array type
@property (nonatomic,readonly,copy,nonnull) NSArray<Contact *> *contacts;

@end


