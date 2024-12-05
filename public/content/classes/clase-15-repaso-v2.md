# Resumen Clase 15 - Taller de Integración

## Conceptos Principales y Definiciones

### Arquitecturas Orientadas a Eventos

1. **Características de los eventos**:

   - **Bajo acoplamiento**: Mejora la flexibilidad entre sistemas.
   - **Comunicación entre múltiples sistemas**: Permite interoperabilidad.
   - **Asincronía**: No se depende de respuestas inmediatas.
   - **Registro de suscriptores**: Es necesario registrarse para recibir eventos.
   - **El mensaje es el evento**: Representa un cambio o hecho en el sistema.

2. **Concentradores de Eventos**:
   - También llamados **brokers** o **middlewares**.
   - Facilitan la interacción entre emisores y suscriptores.
   - Son esenciales en arquitecturas con intermediarios.

### Servicios vs Eventos

| **Característica** | **Servicios**    | **Eventos**                |
| ------------------ | ---------------- | -------------------------- |
| **Entidad**        | Objeto           | Cambio de estado           |
| **Esquema**        | Estricto         | Flexible                   |
| **Qué describe**   | Presente         | Tendencias en el tiempo    |
| **Sincronía**      | Síncrona         | Asíncrona                  |
| **Arquitectura**   | Cliente-servidor | Emisor-broker-suscriptores |

### Consumo de Eventos

- **Push**: Middleware envía eventos al suscriptor en tiempo real.
- **Pull**: Suscriptor consulta al middleware según sus necesidades.

### Procesamiento de Datos - ETL

- **Extracción, Transformación y Carga**:
  - Migración de sistemas.
  - Carga en data warehouses.
  - Integración de datos entre sistemas.

## Herramientas y Tecnologías Relevantes

1. **Token-Based Authentication**:

   - Utiliza tokens generados por un servidor de autenticación con tiempo de expiración.

2. **HMAC-Based Authentication**:

   - Genera firmas criptográficas basadas en claves públicas y privadas.

3. **Microservicios**:
   - **Características**:
     - Desacoplamiento.
     - Resiliencia.
     - Priorización de capacidades de negocio.
   - **Referencias útiles**:
     - [System Design: Netflix](https://dev.to/karanpratapsingh/system-design-netflix-3d9g)
     - [EDA en AlgoDaily](https://algodaily.com/lessons/pub-sub-and-event-driven-architecture)

## Ejercicios y Respuestas

### Preguntas Prácticas

1. **Campos adicionales en mensajes de eventos**:

   - **Pregunta**: Si se siguen las mejores prácticas para el diseño de un mensaje de evento, ¿qué campos deberían incluirse?
   - **Respuesta correcta**: c) Solo I y III (Fecha y hora + Identificador de sala).

2. **Cantidad mínima de instancias de procesamiento**:
   - **Pregunta**: ¿Cuántas instancias mínimas se necesitan para procesar mensajes eficientemente?
   - **Respuesta correcta**: b) 10 instancias.

## Recursos Adicionales

1. **Artículos**:

   - [Introducción a Arquitecturas EDA](https://algodaily.com/lessons/pub-sub-and-event-driven-architecture)
   - [Diseño de sistemas distribuidos: microservicios](https://dev.to/karanpratapsingh/system-design-netflix-3d9g)

2. **Tutoriales**:
   - [Creación de un Event Broker con RabbitMQ](https://www.rabbitmq.com/getstarted.html)
   - [Implementación de APIs seguras](https://auth0.com/docs/get-started/apis)

---
