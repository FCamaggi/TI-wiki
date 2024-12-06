# Entendiendo APIs RESTful

## Descripción General

Este documento explora los conceptos fundamentales de APIs RESTful utilizando como caso de estudio la API de Spotify. Se analizan aspectos clave como autenticación, endpoints, rate limiting y manejo de errores.

## Objetivos de Aprendizaje

- Comprender la estructura y funcionamiento de endpoints REST
- Entender los mecanismos de autenticación y autorización en APIs
- Analizar el manejo de rate limiting y sus implicaciones
- Interpretar códigos de error HTTP y sus significados
- Familiarizarse con la documentación de APIs profesionales

## Conceptos Fundamentales

### 1. Endpoints y Recursos

Los endpoints son URLs que representan recursos en una API REST. En el caso de Spotify, vemos ejemplos como:

- `GET /me`: Obtiene el perfil del usuario autenticado
- `GET /albums/{id}`: Obtiene información de un álbum específico
- `GET /recently-played`: Obtiene el historial de reproducción

> **💡 Tip:** Los endpoints siguen una estructura jerárquica que refleja las relaciones entre recursos.

### 2. Autenticación y Tokens

La API de Spotify utiliza OAuth 2.0 para autenticación, lo que implica:

- Tokens de acceso para autorizar requests
- Tokens con tiempo de expiración
- Necesidad de reautenticación cuando el token expira
- Manejo de errores 401 (Bad or expired token)

> **⚠️ Advertencia:** Nunca expongas tokens de acceso en código público o logs.

### 3. Rate Limiting

El rate limiting es un mecanismo de control que:

- Se calcula en ventanas de 30 segundos
- Varía según el modo (desarrollo vs. cuota extendida)
- Retorna error 429 cuando se excede el límite
- Requiere implementar backoff exponencial

### 4. Respuestas y Metadata

Las respuestas de la API incluyen:

| Elemento        | Descripción                     | Ejemplo                           |
| --------------- | ------------------------------- | --------------------------------- |
| Códigos de país | Indican disponibilidad regional | `available_markets: ["US", "UK"]` |
| Tipos de álbum  | Clasificación del contenido     | `album_type: "album"/"single"`    |
| Géneros         | Categorización musical          | `genres: ["rock", "indie"]`       |

## Mejores Prácticas

1. **Manejo de Errores**

   - Implementar retry con backoff exponencial
   - Validar tokens antes de cada request
   - Manejar errores específicos (401, 429, etc.)

2. **Optimización de Requests**

   - Cachear respuestas cuando sea posible
   - Agrupar requests relacionados
   - Monitorear uso de rate limit

3. **Seguridad**
   - Rotación regular de tokens
   - Validación de respuestas
   - Manejo seguro de credenciales

## 📚 Referencias

1. [Spotify Web API Documentation](https://developer.spotify.com/documentation/web-api/reference/) - Documentación oficial
2. [Authentication Guide](https://developer.spotify.com/documentation/general/guides/authorization/) - Guía de autenticación
3. [Best Practices](https://developer.spotify.com/documentation/general/guides/best-practices/) - Mejores prácticas recomendadas

### Ejercicios Prácticos

📝 **Ejercicio 1: Autenticación**

**Objetivo:** Implementar flujo de autenticación OAuth 2.0

**Instrucciones:**

1. Registrar aplicación en Spotify Developer Dashboard
2. Implementar flujo de autorización
3. Manejar refresh tokens

**Solución:**

```javascript
const getAccessToken = async (clientId, clientSecret) => {
  const response = await fetch('https://accounts.spotify.com/api/token', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
      Authorization: 'Basic ' + btoa(clientId + ':' + clientSecret),
    },
    body: 'grant_type=client_credentials',
  });
  return response.json();
};

</details>

> **Nota:** Esta actividad evalúa la comprensión práctica de APIs REST en un contexto real, utilizando una API ampliamente utilizada y bien documentada como Spotify.
```
