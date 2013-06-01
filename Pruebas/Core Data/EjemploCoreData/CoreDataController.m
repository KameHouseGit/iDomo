//
//  CoreDataController.m
//  EjemploCoreData
//
//  Created by KameHouse on 30/04/13.
//  Copyright (c) 2013 KameHouse. All rights reserved.
//

#import "CoreDataController.h"
#import "AppDelegate.h"


@implementation CoreDataController

- (void)probar
{
    NSLog(@"Prueba de CoreData");
    
    // Limpieza
    [self eliminarCasas:[self recuperarCasas]];
    
    // Tipos
    Tipo *tipo_persiana = [self nuevoTipo:@"Persiana"];
    Tipo *tipo_luz = [self nuevoTipo:@"Luz"];
    Tipo *tipo_interruptor = [self nuevoTipo:@"Interruptor"];
    
    // Casas
    Casa *casa_kamehouse = [self nuevaCasa:@"KameHouse"];
    [self mostrarCasas:[self recuperarCasas]];
    
    // Interfaces
    Interfaz *interfaz_izquierda = [self nuevaInterfaz:@"CM15Pro" enCasa:casa_kamehouse];
    Interfaz *interfaz_derecha =  [self nuevaInterfaz:@"CM11" enCasa:casa_kamehouse];
    
    // Estancias
    Estancia *estancia_cocina = [self nuevaEstancia:@"Cocina" enCasa:casa_kamehouse];
    Estancia *estancia_salon_comedor = [self nuevaEstancia:@"Salón" enCasa:casa_kamehouse];
    Estancia *estancia_estudio = [self nuevaEstancia:@"Estudio" enCasa:casa_kamehouse];
    Estancia *estancia_pasillo = [self nuevaEstancia:@"Pasillo" enCasa:casa_kamehouse];
    Estancia *estancia_dormitorio = [self nuevaEstancia:@"Dormitorio" enCasa:casa_kamehouse];
    [self mostrarCasas:[self recuperarCasas]];
    
    Dispositivo *dispositivo_persiana_salon = [self nuevoDispositivo:@"Persiana salón"
                                                          enInterfaz:interfaz_derecha
                                                          conCodCasa:@"K"
                                                   conCodDispositivo:[NSNumber numberWithInt:16]
                                                          enEstancia:estancia_salon_comedor
                                                              deTipo:tipo_persiana];
    Dispositivo *dispositivo_persiana_comedor = [self nuevoDispositivo:@"Persiana comedor"
                                                            enInterfaz:interfaz_derecha
                                                            conCodCasa:@"K"
                                                     conCodDispositivo:[NSNumber numberWithInt:15]
                                                            enEstancia:estancia_salon_comedor
                                                                deTipo:tipo_persiana];
    Dispositivo *dispositivo_luz_salon_pared = [self nuevoDispositivo:@"Luz salón pared"
                                                           enInterfaz:interfaz_derecha
                                                           conCodCasa:@"K"
                                                    conCodDispositivo:[NSNumber numberWithInt:1]
                                                           enEstancia:estancia_salon_comedor
                                                               deTipo:tipo_luz];
    Dispositivo *dispositivo_luz_salon_sofa = [self nuevoDispositivo:@"Luz salón sofá"
                                                           enInterfaz:interfaz_derecha
                                                           conCodCasa:@"K"
                                                    conCodDispositivo:[NSNumber numberWithInt:2]
                                                           enEstancia:estancia_salon_comedor
                                                              deTipo:tipo_luz];
    Dispositivo *dispositivo_luz_comedor = [self nuevoDispositivo:@"Luz comedor"
                                                       enInterfaz:interfaz_derecha
                                                       conCodCasa:@"K"
                                                conCodDispositivo:[NSNumber numberWithInt:3]
                                                       enEstancia:estancia_salon_comedor
                                                           deTipo:tipo_luz];
    Dispositivo *dispositivo_luz_conchas = [self nuevoDispositivo:@"Luz conchas"
                                                       enInterfaz:interfaz_derecha
                                                       conCodCasa:@"I"
                                                conCodDispositivo:[NSNumber numberWithInt:10]
                                                       enEstancia:estancia_salon_comedor
                                                           deTipo:tipo_interruptor];
    Dispositivo *dispositivo_lampara_planta = [self nuevoDispositivo:@"Lámpara plantas"
                                                          enInterfaz:interfaz_derecha
                                                          conCodCasa:@"I"
                                                   conCodDispositivo:[NSNumber numberWithInt:11]
                                                          enEstancia:estancia_salon_comedor
                                                              deTipo:tipo_interruptor];
    Dispositivo *dispositivo_luz_pasillo = [self nuevoDispositivo:@"Luz pasillo"
                                                          enInterfaz:interfaz_izquierda
                                                          conCodCasa:@"K"
                                                   conCodDispositivo:[NSNumber numberWithInt:4]
                                                          enEstancia:estancia_pasillo
                                                              deTipo:tipo_luz];
    Dispositivo *dispositivo_luz_cocina = [self nuevoDispositivo:@"Luz cocina"
                                                      enInterfaz:interfaz_izquierda
                                                      conCodCasa:@"K"
                                               conCodDispositivo:[NSNumber numberWithInt:7]
                                                      enEstancia:estancia_cocina
                                                          deTipo:tipo_luz];
    Dispositivo *dispositivo_luz_estudio = [self nuevoDispositivo:@"Luz estudio"
                                                       enInterfaz:interfaz_derecha
                                                       conCodCasa:@"K"
                                                conCodDispositivo:[NSNumber numberWithInt:5]
                                                       enEstancia:estancia_estudio
                                                           deTipo:tipo_luz];
    Dispositivo *dispositivo_persiana_estudio = [self nuevoDispositivo:@"Persiana estudio"
                                                            enInterfaz:interfaz_derecha
                                                            conCodCasa:@"K"
                                                     conCodDispositivo:[NSNumber numberWithInt:13]
                                                            enEstancia:estancia_estudio
                                                                deTipo:tipo_persiana];
    Dispositivo *dispositivo_imac = [self nuevoDispositivo:@"iMac"
                                                enInterfaz:interfaz_izquierda
                                                conCodCasa:@"I"
                                         conCodDispositivo:[NSNumber numberWithInt:7]
                                                enEstancia:estancia_estudio
                                                    deTipo:tipo_interruptor];
    Dispositivo *dispositivo_luz_dormitorio = [self nuevoDispositivo:@"Luz dormitorio"
                                                          enInterfaz:interfaz_derecha
                                                          conCodCasa:@"K"
                                                   conCodDispositivo:[NSNumber numberWithInt:6]
                                                          enEstancia:estancia_dormitorio
                                                              deTipo:tipo_luz];
    Dispositivo *dispositivo_persiana_dormitorio = [self nuevoDispositivo:@"Persiana dormitorio"
                                                               enInterfaz:interfaz_derecha
                                                               conCodCasa:@"K"
                                                        conCodDispositivo:[NSNumber numberWithInt:14]
                                                               enEstancia:estancia_dormitorio
                                                                   deTipo:tipo_persiana];
    [self mostrarCasas:[self recuperarCasas]];
    
    [self eliminarDispositivo:dispositivo_persiana_salon deEstancia:estancia_salon_comedor];
    [self eliminarDispositivo:dispositivo_persiana_comedor deEstancia:estancia_salon_comedor];
    [self mostrarCasas:[self recuperarCasas]];
    
    [self moverDispositivo:dispositivo_lampara_planta deEstancia:estancia_salon_comedor aEstancia:estancia_estudio];
    [self mostrarCasas:[self recuperarCasas]];
    
    [self eliminarEstancia:estancia_pasillo deCasa:casa_kamehouse];
    [self mostrarCasas:[self recuperarCasas]];
    
    [self mostrarInterfaces:[self recuperarInterfacesDeCasa:casa_kamehouse]];
    [self eliminarInterfaz:interfaz_derecha deCasa:casa_kamehouse];
    [self mostrarInterfaces:[self recuperarInterfacesDeCasa:casa_kamehouse]];
    [self mostrarCasas:[self recuperarCasas]];
    
    [self eliminarEstanciasDeCasa:casa_kamehouse];
    [self mostrarCasas:[self recuperarCasas]];
    
    [self eliminarCasa:casa_kamehouse];
    [self mostrarCasas:[self recuperarCasas]];
    
    // Limpieza
    [self eliminarTipo:tipo_persiana];
    [self eliminarTipo:tipo_luz];
    [self eliminarTipo:tipo_interruptor];
}

// Comun
- (NSArray *)recuperarObjetosDeEntidad:(NSString *)entidad conFiltro:(NSPredicate *)predicado yOrdenacion:(NSArray *)ordenacion
{
    // Creamos un objeto NSFetchRequest para realizar la consulta.
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    
    // Definimos que tabla queremos utilizar para la consulta.
    NSEntityDescription *entity = [NSEntityDescription entityForName:entidad inManagedObjectContext:[[NSApp delegate] managedObjectContext]];
    
    if (predicado != nil) {
        // Asignamos el predicado con el filtro dado al objeto NSFetchRequest.
        [fetchRequest setPredicate:predicado];
    }
    
    if (ordenacion != nil) {
        // Asignamos el descriptor con la ordenación dado al objeto NSFetchRequest.
        [fetchRequest setSortDescriptors:ordenacion];
    }
    
    // Asignamos la descripcion de la tabla al objeto NSFetchRequest.
    [fetchRequest setEntity:entity];
    
    NSError *error;
    
    // Realizamos la consulta de los registros almacenandolos en un array.
    NSArray *items = [[[NSApp delegate] managedObjectContext] executeFetchRequest:fetchRequest error:&error];
    
    return items;
}

// Tipos
- (Tipo *)nuevoTipo:(NSString *)nombre
{
    // Creamos el objeto a persistir indicando la entidad y el contexto
    Tipo *tipo = (Tipo *)[NSEntityDescription insertNewObjectForEntityForName:@"Tipo" inManagedObjectContext:[[NSApp delegate] managedObjectContext]];
    
    // Cumplimentamos los atributos del mismo.
    [tipo setValue:nombre forKey:@"nombre"];
    
    // Persistimos el objeto.
    [[NSApp delegate] saveAction:nil];
    
    return tipo;
}

- (void)eliminarTipo:(Tipo *)tipo
{
    // Eliminamos el objeto.
    [[[NSApp delegate] managedObjectContext] deleteObject:tipo];
    
    // Persistimos el objeto.
    [[NSApp delegate] saveAction:nil];
}

// Casas
- (Casa *)nuevaCasa:(NSString *)nombre
{
    // Creamos el objeto a persistir indicando la entidad y el contexto
    Casa *casa = (Casa *)[NSEntityDescription insertNewObjectForEntityForName:@"Casa" inManagedObjectContext:[[NSApp delegate] managedObjectContext]];
    
    // Cumplimentamos los atributos del mismo.
    [casa setValue:nombre forKey:@"nombre"];
    
    // Persistimos el objeto.
    [[NSApp delegate] saveAction:nil];
    
    return casa;
}

- (void)eliminarCasa:(Casa *)casa
{
    // Eliminamos el objeto.
    [[[NSApp delegate] managedObjectContext] deleteObject:casa];
    
    // Persistimos el objeto.
    [[NSApp delegate] saveAction:nil];
}

- (void)eliminarCasas:(NSArray *)casas
{
    // Eliminamos los objetos.
    for (Casa *casa in casas) {
        [[[NSApp delegate] managedObjectContext] deleteObject:casa];
    }
    
    // Persistimos el objetos.
    [[NSApp delegate] saveAction:nil];
}

- (NSArray *)recuperarCasas
{
    NSSortDescriptor *descriptor = [[NSSortDescriptor alloc] initWithKey:@"nombre" ascending:YES];
    return [self recuperarObjetosDeEntidad:@"Casa" conFiltro:nil yOrdenacion:[NSArray arrayWithObject:descriptor]];
}

- (void)mostrarCasas:(NSArray *)casas
{
    // Mostramos los objetos.
    NSLog(@"===========================");
    for (Casa *casa in casas) {
        NSLog(@"- %@", [casa valueForKey:@"nombre"]);
        
        NSSet *estancias = casa.estancias;
        if ([estancias count] > 0) {
            for (Estancia *estancia in estancias) {
                NSLog(@"\t\t+ %@", [estancia valueForKey:@"nombre"]);
                
                NSSet *dispositivos = estancia.dispositivos;
                if ([dispositivos count] > 0) {
                    for (Dispositivo *dispositivo in dispositivos) {
                        Tipo *tipo_dispositivo = [dispositivo valueForKey:@"tipo"];
                        Interfaz *interfaz_dispositivo = [dispositivo valueForKey:@"interfaz"];
                        NSLog(@"\t\t\t\t+ %@%@\t- %@\t- %@\t(%@)", [dispositivo valueForKey:@"cod_casa"],
                                                             [dispositivo valueForKey:@"cod_dispositivo"],
                                                             [interfaz_dispositivo valueForKey:@"nombre"],
                                                             [dispositivo valueForKey:@"nombre"],
                                                             [tipo_dispositivo valueForKey:@"nombre"]);
                    }
                }
            }
        }
    }
}

// Interfaces
- (Interfaz *)nuevaInterfaz:(NSString *)nombre enCasa:(Casa *)casa
{
    // Creamos el objeto a persistir indicando la entidad y el contexto
    Interfaz *interfaz = (Interfaz *)[NSEntityDescription insertNewObjectForEntityForName:@"Interfaz" inManagedObjectContext:[[NSApp delegate] managedObjectContext]];
    [interfaz setValue:nombre forKey:@"nombre"];
    [interfaz setValue:casa forKey:@"casa"];
    
    // Cumplimentamos los atributos del mismo.
    [casa addInterfacesObject:interfaz];
    
    // Persistimos el objeto.
    [[NSApp delegate] saveAction:nil];
    
    return interfaz;
}

- (void)eliminarInterfaz:(Interfaz *)interfaz deCasa:(Casa *)casa
{
    // Eliminamos el objeto.
    [casa removeInterfacesObject:interfaz];
    
    // Persistimos el objeto.
    [[NSApp delegate] saveAction:nil];
}

- (void)eliminarInterfacesDeCasa:(Casa *)casa
{
    // Recuperamos los objetos a eliminar.
    NSArray *interfaces = [self recuperarInterfacesDeCasa:casa];
    NSSet *setInterfaces = [NSSet setWithArray:interfaces];
    
    // Eliminamos los objetos.
    [casa removeInterfaces:setInterfaces];
    
    // Persistimos el objetos.
    [[NSApp delegate] saveAction:nil];
}

- (NSArray *)recuperarInterfacesDeCasa:(Casa *)casa
{
    return [casa.interfaces allObjects];
}

- (void)mostrarInterfaces:(NSArray *)interfaces
{
    // Mostramos los objetos.
    NSLog(@"===========================");
    for (Interfaz *interfaz in interfaces) {
        NSLog(@"- %@", [interfaz valueForKey:@"nombre"]);
    }
}

// Estancias
- (Estancia *)nuevaEstancia:(NSString *)nombre enCasa:(Casa *)casa
{
    // Creamos el objeto a persistir indicando la entidad y el contexto
    Estancia *estancia = (Estancia *)[NSEntityDescription insertNewObjectForEntityForName:@"Estancia" inManagedObjectContext:[[NSApp delegate] managedObjectContext]];
    [estancia setValue:nombre forKey:@"nombre"];
    [estancia setValue:casa forKey:@"casa"];
    
    // Cumplimentamos los atributos del mismo.
    [casa addEstanciasObject:estancia];
    
    // Persistimos el objeto.
    [[NSApp delegate] saveAction:nil];
    
    return estancia;
}

- (void)eliminarEstancia:(Estancia *)estancia deCasa:(Casa *)casa
{
    // Eliminamos el objeto.
    [casa removeEstanciasObject:estancia];
    
    // Persistimos el objeto.
    [[NSApp delegate] saveAction:nil];
}

- (void)eliminarEstanciasDeCasa:(Casa *)casa
{
    // Recuperamos los objetos a eliminar.
    NSArray *estancias = [self recuperarEstanciasDeCasa:casa];
    NSSet *setEstancias = [NSSet setWithArray:estancias];
    
    // Eliminamos los objetos.
    [casa removeEstancias:setEstancias];
    
    // Persistimos el objetos.
    [[NSApp delegate] saveAction:nil];
}

- (NSArray *)recuperarEstanciasDeCasa:(Casa *)casa
{
    return [casa.estancias allObjects];
}

// Dispositivos
- (Dispositivo *)nuevoDispositivo:(NSString *)nombre enInterfaz:(Interfaz *)interfaz conCodCasa:(NSString *)codCasa conCodDispositivo:(NSNumber *)codDispositivo enEstancia:(Estancia *)estancia deTipo:(Tipo *)tipo
{
    // Creamos el objeto a persistir indicando la entidad y el contexto
    Dispositivo *dispositivo = (Dispositivo *)[NSEntityDescription insertNewObjectForEntityForName:@"Dispositivo" inManagedObjectContext:[[NSApp delegate] managedObjectContext]];
    [dispositivo setValue:nombre forKey:@"nombre"];
    [dispositivo setValue:interfaz forKey:@"interfaz"];
    [dispositivo setValue:codCasa forKey:@"cod_casa"];
    [dispositivo setValue:codDispositivo forKey:@"cod_dispositivo"];
    [dispositivo setValue:estancia forKey:@"estancia"];
    [dispositivo setValue:tipo forKey:@"tipo"];
    
    // Cumplimentamos los atributos del mismo.
    [estancia addDispositivosObject:dispositivo];
    
    // Persistimos el objeto.
    [[NSApp delegate] saveAction:nil];
    
    return dispositivo;
}

- (void)eliminarDispositivo:(Dispositivo *)dispositivo deEstancia:(Estancia *)estancia
{
    // Eliminamos el objeto.
    [estancia removeDispositivosObject:dispositivo];
    
    // Persistimos el objeto.
    [[NSApp delegate] saveAction:nil];
}

- (void)eliminarDispositivosDeEstancia:(Estancia *)estancia
{
    // Recuperamos los objetos a eliminar.
    NSArray *dispositivos = [self recuperarDispositivosDeEstancia:estancia];
    NSSet *setDispositivos = [NSSet setWithArray:dispositivos];
    
    // Eliminamos los objetos.
    [estancia removeDispositivos:setDispositivos];
    
    // Persistimos el objetos.
    [[NSApp delegate] saveAction:nil];
}

- (void)eliminarDispositivosDeInterfaz:(Interfaz *)interfaz
{
    // Recuperamos los objetos a eliminar.
    NSArray *dispositivos = [self recuperarDispositivosDeInterfaz:interfaz];
    NSSet *setDispositivos = [NSSet setWithArray:dispositivos];
    
    // Eliminamos los objetos.
    [interfaz removeDispositivos:setDispositivos];
    
    // Persistimos el objetos.
    [[NSApp delegate] saveAction:nil];
}

- (NSArray *)recuperarDispositivosDeEstancia:(Estancia *)estancia
{
    return [estancia.dispositivos allObjects];
}

- (NSArray *)recuperarDispositivosDeInterfaz:(Interfaz *)interfaz
{
    return [interfaz.dispositivos allObjects];
}

- (void) moverDispositivo:(Dispositivo *)dispositivo deEstancia:(Estancia *)estanciaOrigen aEstancia:(Estancia *)estanciaDestino
{
    // Eliminamos el objeto.
    [estanciaOrigen removeDispositivosObject:dispositivo];
    
    // Añadimos el objeto.
    [estanciaDestino addDispositivosObject:dispositivo];
    
    // Persistimos el objetos.
    [[NSApp delegate] saveAction:nil];
}

- (void) moverDispositivo:(Dispositivo *)dispositivo deInterfaz:(Interfaz *)interfazOrigen aInterfaz:(Interfaz *)interfazDestino
{
    // Eliminamos el objeto.
    [interfazOrigen removeDispositivosObject:dispositivo];
    
    // Añadimos el objeto.
    [interfazDestino addDispositivosObject:dispositivo];
    
    // Persistimos el objetos.
    [[NSApp delegate] saveAction:nil];
}


@end
