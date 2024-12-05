# Integración por Eventos - Taller de Integración

## Motivación y Conceptos Fundamentales

### ¿Por qué Integración por Eventos?

- Necesidad de conocer cambios de estado en tiempo real
- Monitoreo efectivo de sistemas
- Evitar pérdida de datos importantes
- Mejor manejo de tendencias y comportamientos
- Reducción de overhead y mayor escalabilidad

### Conceptos Clave

#### Evento

- Hecho que sucede en un software o hardware que produce un cambio de estado
- Debe ser autocontenido (toda la información necesaria está en el evento)
- Estructura básica:

  ```json
  {
    "eventType": "<tipo de evento>",
    "eventTime": "<timestamp>",
    "eventData": {<custom_payload>}
  }
  ```

#### Actores Principales

1. **Emisor del evento**: Sistema que genera el cambio de estado
2. **Concentrador o bus de eventos** (opcional):
   - Sistema que gestiona suscripciones y propagación
   - Ejemplos: Apache Kafka, RabbitMQ, GCP Pubsub, AWS Event Bridge
3. **Suscriptores**: Sistemas que reciben y procesan los eventos

## Características de Arquitecturas Basadas en Eventos

### 1. Bajo Acoplamiento

- Permite modificaciones internas sin impactar suscriptores
- Desacoplamiento tecnológico entre emisor y suscriptor
- Flexibilidad para cambiar consumidores sin afectar al emisor

### 2. Comunicación Multidireccional

- Un emisor puede tener múltiples suscriptores
- La comunicación es iniciada por el emisor
- Procesamiento asíncrono de eventos

### 3. Datos No Normalizados

- Se permite redundancia de datos
- Cada evento es autocontenido
- Balance entre tamaño del payload y eficiencia de procesamiento

## Tecnologías y Protocolos

### Server-Sent Events (SSE)

- Estándar HTML5 para notificaciones al navegador
- Comunicación unidireccional servidor → cliente
- Opera sobre HTTP
- Soportado por la mayoría de navegadores modernos

### WebSockets

- Protocolo bidireccional
- Ideal para comunicación en tiempo real
- Conexión persistente
- Menor overhead que HTTP
- Soporte universal en navegadores modernos

### Webhooks

- Notificaciones HTTP entre servidores
- Requiere registro previo del suscriptor
- Modelo push vs polling tradicional
- Ideal para integraciones servidor-servidor

## Comparativa: Servicios vs Eventos

| Aspecto       | Servicios     | Eventos                |
| ------------- | ------------- | ---------------------- |
| Entidad       | Objeto        | Hecho/cambio de estado |
| Esquema       | Estricto      | Flexible               |
| Naturaleza    | Estado actual | Historia/tendencia     |
| Actualización | In-place      | Append-only            |
| Complejidad   | O(n)          | O(n\*k)                |

## Mejores Prácticas

1. **Diseño de Eventos**

   - Incluir timestamp para procesamiento asíncrono
   - Mantener eventos autocontenidos
   - Documentar estructura y contratos

2. **Escalabilidad**

   - Considerar crecimiento exponencial de eventos
   - Planificar almacenamiento histórico
   - Implementar estrategias de retención

3. **Monitoreo**
   - Tracking de entrega de eventos
   - Manejo de fallos y reintentos
   - Auditoría de procesamiento

## Recursos Adicionales

### Documentación Oficial

- [AWS EventBridge](https://aws.amazon.com/eventbridge/)
- [Google Cloud Pub/Sub](https://cloud.google.com/pubsub)
- [Azure Event Grid](https://azure.microsoft.com/services/event-grid/)

### Artículos y Tutoriales

- [Event-Driven Architecture Pattern](https://microservices.io/patterns/data/event-driven-architecture.html)
- [Martin Fowler - Event-Driven Architecture](https://martinfowler.com/articles/201701-event-driven.html)
- [The Many Meanings of Event-Driven Architecture](https://www.theguardian.com/info/2019/dec/02/the-many-meanings-of-event-driven-architecture)

### Herramientas

- Apache Kafka: [Documentación](https://kafka.apache.org/documentation/)
- RabbitMQ: [Guía de inicio](https://www.rabbitmq.com/getstarted.html)
- WebSocket API: [MDN Web Docs](https://developer.mozilla.org/docs/Web/API/WebSocket)
