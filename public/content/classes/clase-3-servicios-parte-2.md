

# Servicios Web: Clasificación de APIs y Autenticación

## Descripción General

Este documento cubre los conceptos fundamentales de la clasificación de APIs según el modelo de madurez de Richardson, los principios REST, y los mecanismos de autenticación y autorización en servicios web.

## Objetivos de Aprendizaje

- Comprender los diferentes niveles de madurez de las APIs REST
- Identificar las características principales de una API RESTful
- Dominar los conceptos de autenticación y autorización en servicios web
- Entender los diferentes métodos de autenticación: Basic Auth, OAuth y JWT

## 1. Modelo de Madurez de Richardson

### Niveles de Madurez

1. **Nivel 0 - The Swamp of POX**

   - URL única para todas las operaciones
   - El proceso a ejecutar se identifica dentro del mensaje
   - Considerado el nivel más básico

2. **Nivel 1 - Recursos**

   - Introduce el concepto de recursos individuales
   - Divide la complejidad usando el principio "divide y vencerás"
   - Cada recurso tiene su propia URL

3. **Nivel 2 - Verbos HTTP**

   - Utiliza los verbos HTTP estándar (GET, POST, PUT, DELETE)
   - Implementa operaciones uniformes para situaciones similares
   - Aprovecha las capacidades del protocolo HTTP

4. **Nivel 3 - Hipermedia Controls (HATEOAS)**
   - Introduce el concepto de descubrimiento
   - API autodocumentada
   - Los recursos incluyen enlaces a acciones relacionadas

## 2. Principios REST

### Características Fundamentales

1. **Arquitectura Cliente-Servidor**

   - Separación clara de responsabilidades
   - Independencia entre cliente y servidor

2. **Sistema por Capas**

   - Interfaz uniforme independiente de la arquitectura interna
   - Permite agregar intermediarios (load balancers, caches)

3. **Caché**

   - Mejora la eficiencia y escalabilidad
   - Reduce la latencia y carga del servidor
   - Mensajes pueden marcarse como cacheables o no-cacheables

4. **Servidor Stateless**

   - No guarda estado de sesión
   - Cada request debe contener toda la información necesaria
   - Facilita la escalabilidad

5. **Interfaz Uniforme**
   - Identificación clara de recursos
   - Manipulación de recursos a través de representaciones
   - Mensajes auto-descriptivos

## 3. Autenticación y Autorización

### Métodos de Autenticación

#### Basic Authentication

```http
Authorization: Basic ZGVtbzpwQDU1dzByZA==
```

- Simple y directo
- Requiere HTTPS para seguridad
- No recomendado para aplicaciones productivas

#### OAuth 2.0

- Estándar moderno para autorización
- Soporta diferentes flujos de autorización
- Separación de roles (Resource Owner, Client, Authorization Server)
- Tokens de corta duración

#### JSON Web Tokens (JWT)

- Formato: `header.payload.signature`
- Auto-contenido y verificable
- No requiere estado en el servidor
- Ideal para arquitecturas distribuidas

### Comparativa de Métodos

| Método     | Ventajas              | Desventajas                |
| ---------- | --------------------- | -------------------------- |
| Basic Auth | Simple de implementar | Inseguro sin HTTPS         |
| OAuth 2.0  | Muy flexible y seguro | Complejo de implementar    |
| JWT        | Stateless, eficiente  | No se puede revocar tokens |

## Recursos Adicionales

### Documentación Oficial

- [RFC 7617 - Basic Auth](https://www.rfc-editor.org/rfc/rfc7617)
- [OAuth 2.0 Specification](https://oauth.net/2/)
- [JWT Introduction](https://jwt.io/introduction)

### Tutoriales y Guías

1. [RESTful API Design - Best Practices](https://swagger.io/resources/articles/best-practices-in-api-design/)
2. [OAuth 2.0 Simplified](https://www.oauth.com/)
3. [JWT Security Best Practices](https://auth0.com/blog/a-look-at-the-latest-draft-for-jwt-bcp/)

## Ejercicios Prácticos

### 📝 Ejercicio 1: Análisis de API

**Objetivo:** Identificar el nivel de madurez de una API existente

1. Examinar la documentación de la API
2. Identificar características de cada nivel
3. Determinar el nivel de madurez según Richardson
4. Proponer mejoras para alcanzar el siguiente nivel

### 📝 Ejercicio 2: Implementación de JWT

**Objetivo:** Crear un sistema de autenticación básico con JWT

1. Implementar generación de tokens
2. Verificar tokens en requests
3. Manejar expiración y renovación
4. Implementar revocación de tokens

## Referencias Bibliográficas

1. Fielding, R. T. (2000). Architectural Styles and the Design of Network-based Software Architectures
2. Richardson, L., & Ruby, S. (2007). RESTful Web Services
3. API Security in Action (2020) - Neil Madden
