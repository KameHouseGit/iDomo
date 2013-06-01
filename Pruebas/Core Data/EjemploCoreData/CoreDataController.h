//
//  CoreDataController.h
//  EjemploCoreData
//
//  Created by KameHouse on 30/04/13.
//  Copyright (c) 2013 KameHouse. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Casa.h"
#import "Interfaz.h"
#import "Estancia.h"
#import "Dispositivo.h"
#import "Tipo.h"

@interface CoreDataController : NSObject

- (void)probar;

// Comun
- (NSArray *)recuperarObjetosDeEntidad:(NSString *)entidad conFiltro:(NSPredicate *)predicado yOrdenacion:(NSArray *)ordenacion;

// Tipos
- (Tipo *)nuevoTipo:(NSString *)nombre;
- (void)eliminarTipo:(Tipo *)tipo;

// Casas
- (Casa *)nuevaCasa:(NSString *)nombre;
- (void)eliminarCasa:(Casa *)casa;
- (void)eliminarCasas:(NSArray *)casas;
- (NSArray *)recuperarCasas;
- (void)mostrarCasas:(NSArray *)casas;

// Interfaces
- (Interfaz *)nuevaInterfaz:(NSString *)nombre enCasa:(Casa *)casa;
- (void)eliminarInterfaz:(Interfaz *)interfaz deCasa:(Casa *)casa;
- (void)eliminarInterfacesDeCasa:(Casa *)casa;
- (NSArray *)recuperarInterfacesDeCasa:(Casa *)casa;
- (void)mostrarInterfaces:(NSArray *)interfaces;

// Estancias
- (Estancia *)nuevaEstancia:(NSString *)nombre enCasa:(Casa *)casa;
- (void)eliminarEstancia:(Estancia *)estancia deCasa:(Casa *)casa;
- (void)eliminarEstanciasDeCasa:(Casa *)casa;
- (NSArray *)recuperarEstanciasDeCasa:(Casa *)casa;

// Dispositivos
- (Dispositivo *)nuevoDispositivo:(NSString *)nombre enInterfaz:(Interfaz *)interfaz conCodCasa:(NSString *)codCasa conCodDispositivo:(NSNumber *)codDispositivo enEstancia:(Estancia *)estancia deTipo:(Tipo *)tipo;
- (void)eliminarDispositivo:(Dispositivo *)dispositivo deEstancia:(Estancia *)estancia;
- (void)eliminarDispositivosDeEstancia:(Estancia *)estancia;
- (void)eliminarDispositivosDeInterfaz:(Interfaz *)interfaz;
- (NSArray *)recuperarDispositivosDeEstancia:(Estancia *)estancia;
- (NSArray *)recuperarDispositivosDeInterfaz:(Interfaz *)interfaz;
- (void) moverDispositivo:(Dispositivo *)dispositivo deEstancia:(Estancia *)estanciaOrigen aEstancia:(Estancia *)estanciaDestino;
- (void) moverDispositivo:(Dispositivo *)dispositivo deInterfaz:(Interfaz *)interfazOrigen aInterfaz:(Interfaz *)interfazDestino;

@end
