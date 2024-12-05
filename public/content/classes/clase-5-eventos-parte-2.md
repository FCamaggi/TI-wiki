

# Integración por Eventos - IIC3103

## Descripción General

Este documento cubre los conceptos fundamentales de la integración por eventos, incluyendo arquitecturas orientadas a eventos, patrones de diseño, y consideraciones prácticas para su implementación.

## Objetivos de Aprendizaje

- Comprender los conceptos fundamentales de la integración por eventos
- Diferenciar entre servicios y eventos como mecanismos de integración
- Entender las arquitecturas de mediador y broker
- Analizar patrones de procesamiento de eventos
- Aplicar conceptos de teoría de colas al procesamiento de eventos

## Conceptos Fundamentales

### Características de Servicios vs Eventos

| Aspecto                | Servicios                              | Eventos                                 |
| ---------------------- | -------------------------------------- | --------------------------------------- |
| Inicio de comunicación | Cliente (pull)                         | Emisor del evento (push)                |
| Participantes          | Cliente y servidor                     | Un emisor, múltiples suscriptores       |
| Sincronía              | Comunicación síncrona                  | Comunicación asíncrona                  |
| Uso                    | Basta conocer contrato de comunicación | Requiere registro previo del suscriptor |
| Tipo de datos          | Estado actual de objetos               | Estado en un momento específico         |
| Arquitectura           | Cliente-servidor                       | Emisor - Event broker - Suscriptores    |

### Datos en Servicios vs Eventos

| Característica | Servicios                | Eventos                                  |
| -------------- | ------------------------ | ---------------------------------------- |
| Entidad        | Objeto                   | Hecho o cambio de estado                 |
| Esquema        | Estricto, poco cambiante | Flexible, adaptable a diferentes eventos |
| Naturaleza     | Foto del objeto actual   | Registro de un cambio de estado          |
| Descripción    | Estado presente          | Tendencia temporal                       |
| Actualización  | Directa, sin historial   | Acumulativa, requiere historial          |
| Complejidad    | O(n) - Lineal            | O(n\*k) - Según objetos y cambios        |

## Arquitecturas de Eventos

### Concentradores de Eventos (Event Brokers)

- También conocidos como middlewares o bus de eventos
- Facilitan la interacción entre emisores y suscriptores
- Manejan registro y mantenimiento de suscriptores
- Proporcionan funcionalidades como:
  - Integridad de mensajes
  - Seguridad y control de acceso
  - Logs y auditoría
  - Preprocesamiento de eventos
  - Persistencia de eventos

### Patrones de Arquitectura

#### Topología de Mediador

- Centraliza la lógica de distribución de eventos
- Útil para workflows específicos
- Alta trazabilidad
- Proceso:
  1. Emisor envía evento a cola
  2. Cola transmite al mediador
  3. Mediador orquesta distribución
  4. Procesadores ejecutan lógica específica

#### Topología de Broker

- Distribución descentralizada
- Mejor rendimiento por procesamiento paralelo
- Alta tolerancia a fallos
- Trazabilidad más compleja
- Proceso:
  1. Recepción del evento
  2. Distribución a suscriptores
  3. Procesamiento independiente
  4. Posible generación de eventos secundarios

## Procesamiento de Eventos

### Métodos de Procesamiento

#### Push

- Middleware determina envío
- Suscriptor pasivo
- Implementación común vía webhooks

#### Pull

- Procesador determina momento de consulta
- Suscriptor mantiene información de consulta
- Mayor control del timing

### Teoría de Colas

La ecuación fundamental:

```math
Lq = λWq
```

Donde:

- Lq: Largo medio de la cola
- λ: Tasa de entrada de eventos
- Wq: Tiempo medio de procesamiento

## Desafíos y Consideraciones

### Dificultades Principales

- Transaccionalidad en sistemas distribuidos
- Consistencia eventual
- Manejo de colas y backpressure
- Escalabilidad y performance

## Recursos Adicionales

### Documentación y Tutoriales

- [Apache Kafka Documentation](https://kafka.apache.org/documentation/)
- [RabbitMQ Tutorials](https://www.rabbitmq.com/getstarted.html)
- [Event-Driven Architecture Overview](https://martinfowler.com/articles/201701-event-driven.html)

### Herramientas Recomendadas

- Apache Kafka para streaming de eventos
- RabbitMQ para mensajería
- Apache Spark Streaming para procesamiento
- Redis Pub/Sub para sistemas ligeros

## Referencias

Las referencias completas están disponibles en la bibliografía del curso, incluyendo trabajos de Roumeliotis, Stepro, Wickramarachchi, y otros expertos en el campo.

> **💡 Tip:** Para profundizar en estos conceptos, se recomienda practicar con implementaciones simples usando herramientas como RabbitMQ o Redis antes de abordar sistemas más complejos como Kafka.
