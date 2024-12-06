# Servicios REST y APIs: Conceptos Fundamentales

## Descripción General

Este documento cubre los conceptos fundamentales de servicios REST, APIs y arquitectura de Internet, basado en la Actividad 2 del curso Taller de Integración. Se enfoca en la comprensión práctica de cómo funcionan las APIs REST y los principios básicos de Internet.

## Objetivos de Aprendizaje

- Comprender la estructura y funcionamiento de APIs REST
- Aprender a utilizar herramientas como Postman para interactuar con APIs
- Entender los conceptos fundamentales de Internet y direccionamiento IP
- Dominar los métodos HTTP y su uso apropiado
- Aplicar principios RESTful en el diseño de URLs

## 1. Fundamentos de APIs REST

### APIs y Servicios Web

Una API (Application Programming Interface) es un conjunto de reglas y protocolos que permite que diferentes aplicaciones se comuniquen entre sí. REST (Representational State Transfer) es un estilo arquitectónico para diseñar servicios web.

### Características Principales de REST

- **Arquitectura Cliente-Servidor**: Separación clara de responsabilidades
- **Sin Estado**: Cada petición contiene toda la información necesaria
- **Cacheable**: Las respuestas deben indicar si pueden ser cacheadas
- **Sistema por Capas**: Los componentes no pueden "ver" más allá de su capa
- **Interfaz Uniforme**: Métodos y recursos estandarizados

## 2. Métodos HTTP y su Idempotencia

### Métodos Principales

| Método  | Idempotente | Seguro | Uso Común                        |
| ------- | ----------- | ------ | -------------------------------- |
| GET     | Sí          | Sí     | Obtener recursos                 |
| POST    | No          | No     | Crear recursos                   |
| PUT     | Sí          | No     | Actualizar recursos completos    |
| DELETE  | Sí          | No     | Eliminar recursos                |
| PATCH   | No          | No     | Actualizar recursos parcialmente |
| OPTIONS | Sí          | Sí     | Obtener opciones de comunicación |

### Idempotencia

> **💡 Tip:** Un método es idempotente si realizar la misma operación múltiples veces tiene el mismo efecto que realizarla una sola vez.

## 3. Diseño de URLs RESTful

### Principios de Diseño

- Usar sustantivos, no verbos
- Representar jerarquías usando '/'
- Usar plural para colecciones
- Incluir IDs para recursos específicos

### Ejemplos de URLs RESTful

```plaintext
/parents/345/childs         ✅ Correcto
/childs/parent/456         ❌ Incorrecto
/parent/345/childs         ❌ Incorrecto
/parents/childs/456        ❌ Incorrecto
```

## 4. Internet y Direccionamiento IP

### Conceptos Básicos

- Internet es una red distribuida de computadoras
- Cada dispositivo tiene una dirección IP única
- IPv4 vs IPv6: Transición debido a limitaciones de direcciones

### IPv4 vs IPv6

| Característica | IPv4              | IPv6                                    |
| -------------- | ----------------- | --------------------------------------- |
| Bits           | 32                | 128                                     |
| Formato        | 192.168.1.1       | 2001:0db8:85a3:0000:0000:8a2e:0370:7334 |
| Direcciones    | ~4.3 mil millones | ~340 undecillones                       |

## 5. Herramientas y Recursos

### Postman

- Herramienta esencial para probar APIs
- Permite crear colecciones de requests
- Soporta variables de ambiente
- Documentación automática

### APIs de Ejemplo

La API de Rick & Morty es un excelente recurso para practicar:

- Documentación clara
- Múltiples endpoints
- Relaciones entre recursos
- Paginación implementada

## Referencias

1. [Documentación oficial de REST](https://restfulapi.net/)
2. [Guía de Postman](https://learning.postman.com/docs/getting-started/introduction/)
3. [Rick & Morty API](https://rickandmortyapi.com/documentation/)
4. [Principios de diseño RESTful](https://restfulapi.net/rest-api-design-tutorial/)
