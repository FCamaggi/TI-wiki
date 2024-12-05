---
title: 'Servicios Web y REST'
date: '2024-12-05'
author: 'Fabrizio Camaggi'
tags: ['servicios web', 'REST', 'integración', 'HTTP']
---

# Servicios Web y REST

## Descripción General

Este documento cubre los fundamentos de servicios web y REST, incluyendo conceptos clave, arquitectura, protocolos y mejores prácticas para la integración de sistemas.

## Objetivos de Aprendizaje

- Comprender qué es un servicio web y sus características principales
- Dominar los conceptos básicos de HTTP y REST
- Entender la seguridad en servicios web mediante HTTPS
- Aprender a construir y consumir servicios web

## 1. Fundamentos de Servicios

### 1.1 Definición de Servicio

Un servicio es un conjunto de funciones de software relacionadas entre sí que:

- Pueden ser reutilizadas para diferentes propósitos
- Son accesibles a través de una interfaz establecida
- Operan bajo reglas específicas de acceso y uso

### 1.2 Características Fundamentales

1. **Bajo Acoplamiento**

   - Permite modificar el funcionamiento interno sin impactar a los consumidores
   - Los sistemas consumidores no se ven afectados por cambios internos
   - Facilita el cambio de proveedores si se mantienen los contratos

2. **Comunicación Punto a Punto**

   - Solo hay dos actores: servidor (proveedor) y cliente (consumidor)
   - La comunicación es directa entre estos actores

3. **Iniciación por Cliente**

   - El cliente inicia la comunicación mediante una solicitud
   - El servidor nunca inicia la comunicación
   - La comunicación termina cuando el servidor entrega la respuesta

4. **Comunicación Síncrona**

   - El cliente espera la respuesta
   - Existe un estado de "busy waiting"
   - Puede implementarse un timeout

5. **Mensajes Request-Response**
   - Solo dos mensajes por interacción
   - Request (solicitud) del cliente
   - Response (respuesta) del servidor

## 2. Servicios Web

### 2.1 Características Específicas

- Operan en ambientes web
- Son independientes del lenguaje de implementación
- Usan HTTP como protocolo de transporte
- Típicamente utilizan JSON como formato de datos

### 2.2 Evolución Histórica

```
1991: CORBA
1993: RDA
1998: XML-RPC
1999: SOAP
2000: REST
2005: JSON-RPC
2007: ODATA
2015: GraphQL
2016: gRPC
```

## 3. HTTP y URLs

### 3.1 Componentes de una URL

```
https://www.example.co.uk:443/blog/article/search?docid=720&hl=en#dayone
|-----|---|---------|-----|-------------------|-------------------|--------|
scheme  |  domain   port        path         query string       fragment
      subdomain
```

### 3.2 Métodos HTTP Principales

- GET: Obtener recursos
- POST: Crear recursos
- PUT: Actualizar recursos completos
- PATCH: Actualizar recursos parcialmente
- DELETE: Eliminar recursos

### 3.3 Códigos de Estado

- 2XX: Éxito (200 OK, 201 Created)
- 3XX: Redirección
- 4XX: Error del cliente (400 Bad Request, 404 Not Found)
- 5XX: Error del servidor

## 4. Seguridad - HTTPS

### 4.1 Proceso de Comunicación Segura

1. Establecimiento de conexión TCP
2. Verificación de certificado
3. Intercambio de llaves
4. Transmisión de datos cifrados

### 4.2 Características de Seguridad

- Encriptación asimétrica para intercambio de llaves
- Encriptación simétrica para datos
- Verificación de integridad
- Autenticación del servidor

## 5. Mejores Prácticas

### 5.1 Diseño de APIs

- Usar nombres de recursos en plural
- Implementar versionado de API
- Mantener coherencia en formatos de respuesta
- Documentar endpoints y respuestas
- Implementar rate limiting

### 5.2 Seguridad

- Usar siempre HTTPS
- Implementar autenticación apropiada
- Validar entradas
- Manejar errores apropiadamente
- Implementar logging

## 📚 Referencias y Recursos Adicionales

1. [REST API Best Practices](https://restfulapi.net/rest-api-design-tutorial-with-example/)
2. [HTTP Status Codes](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status)
3. [Understanding HTTPS](https://howhttps.works/)
4. [RESTful Web Services](https://www.ibm.com/cloud/learn/rest-apis)

### Herramientas Recomendadas

- [Postman](https://www.postman.com/) - Testing de APIs
- [Swagger](https://swagger.io/) - Documentación de APIs
- [curl](https://curl.se/) - Cliente HTTP por línea de comandos
