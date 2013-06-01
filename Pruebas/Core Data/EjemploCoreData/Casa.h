//
//  Casa.h
//  EjemploCoreData
//
//  Created by KameHouse on 31/05/13.
//  Copyright (c) 2013 KameHouse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Estancia, Interfaz;

@interface Casa : NSManagedObject

@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSSet *estancias;
@property (nonatomic, retain) NSSet *interfaces;
@end

@interface Casa (CoreDataGeneratedAccessors)

- (void)addEstanciasObject:(Estancia *)value;
- (void)removeEstanciasObject:(Estancia *)value;
- (void)addEstancias:(NSSet *)values;
- (void)removeEstancias:(NSSet *)values;

- (void)addInterfacesObject:(Interfaz *)value;
- (void)removeInterfacesObject:(Interfaz *)value;
- (void)addInterfaces:(NSSet *)values;
- (void)removeInterfaces:(NSSet *)values;

@end
