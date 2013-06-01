//
//  Estancia.h
//  EjemploCoreData
//
//  Created by KameHouse on 31/05/13.
//  Copyright (c) 2013 KameHouse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Casa, Dispositivo;

@interface Estancia : NSManagedObject

@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) Casa *casa;
@property (nonatomic, retain) NSSet *dispositivos;
@end

@interface Estancia (CoreDataGeneratedAccessors)

- (void)addDispositivosObject:(Dispositivo *)value;
- (void)removeDispositivosObject:(Dispositivo *)value;
- (void)addDispositivos:(NSSet *)values;
- (void)removeDispositivos:(NSSet *)values;

@end
