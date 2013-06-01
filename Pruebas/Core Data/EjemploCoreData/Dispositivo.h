//
//  Dispositivo.h
//  EjemploCoreData
//
//  Created by KameHouse on 31/05/13.
//  Copyright (c) 2013 KameHouse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Estancia, Interfaz, Tipo;

@interface Dispositivo : NSManagedObject

@property (nonatomic, retain) NSString * cod_casa;
@property (nonatomic, retain) NSNumber * cod_dispositivo;
@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) Estancia *estancia;
@property (nonatomic, retain) Tipo *tipo;
@property (nonatomic, retain) Interfaz *interfaz;

@end
