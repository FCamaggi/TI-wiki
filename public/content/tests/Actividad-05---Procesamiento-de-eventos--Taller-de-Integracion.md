# Procesamiento de Eventos en Sistemas Distribuidos

## Conceptos Fundamentales Evaluados

La actividad evalúa la comprensión de:

- Procesamiento de eventos en sistemas distribuidos
- Teoría de colas y capacidad de procesamiento
- Arquitecturas orientadas a eventos
- Patrones de entrega de eventos
- Sistemas de streaming y publicación/suscripción

### 1. Teoría de Colas y Capacidad de Procesamiento

#### Conceptos Clave

- **Lambda (λ)**: Tasa de llegada de eventos
- **W**: Tiempo de procesamiento por evento
- **L**: Largo medio de la cola
- **Servidores/Ejecutores**: Unidades de procesamiento paralelo

#### Fórmulas Fundamentales

```
L = λ * W  (Ley de Little)
λ(total) = λ(por_servidor) * n_servidores
Tiempo_total = L / λ
```

### 2. Patrones de Procesamiento

#### Procesamiento Paralelo

- Eventos independientes pueden procesarse concurrentemente
- La capacidad total es la suma de las capacidades individuales
- Ejemplo: 20 reqs/seg distribuidos en 5 servidores = 4 reqs/seg por servidor

#### Procesamiento Secuencial

- Eventos dependientes requieren procesamiento ordenado
- Un solo ejecutor debe procesar la cola completa
- Ejemplo: 1200 eventos a 0.5 reqs/seg = 2400 segundos (40 minutos)

### 3. Arquitectura Orientada a Eventos

#### Concentrador de Eventos

**Funciones Principales:**

- Mediación entre emisores y suscriptores
- Enriquecimiento de eventos
- Gestión de enrutamiento
- Garantías de entrega

#### Tipos de Entrega

1. **At-least-once**:

   - Garantiza al menos una entrega
   - Acepta duplicados
   - Ideal para sistemas tolerantes a duplicación

2. **Exactly-once**:

   - Garantiza exactamente una entrega
   - Mayor overhead de procesamiento
   - Necesario para operaciones críticas

3. **At-most-once**:
   - Máximo una entrega
   - Puede perder eventos
   - Útil en streaming de datos no críticos

### 4. Sistemas de Streaming

#### Tecnologías Principales

| Sistema       | Caso de Uso Principal                    |
| ------------- | ---------------------------------------- |
| Apache Kafka  | Procesamiento de streams en tiempo real  |
| Apache Hadoop | Procesamiento batch de grandes volúmenes |
| Elasticsearch | Búsqueda y análisis de logs              |

#### Patrón Publish/Subscribe

**Ventajas:**

- Desacoplamiento de productores y consumidores
- Escalabilidad horizontal
- Flexibilidad en la integración
- Resiliencia del sistema

## Mejores Prácticas

### Diseño de Sistemas de Eventos

1. Planificar la capacidad basada en:

   - Tasa de llegada de eventos
   - Tiempo de procesamiento
   - SLAs requeridos
   - Necesidades de ordenamiento

2. Implementar monitoreo de:
   - Longitud de colas
   - Latencia de procesamiento
   - Tasa de throughput
   - Errores y reintentos

### Consideraciones de Escalabilidad

- Balancear entre paralelismo y ordenamiento
- Dimensionar recursos según demanda
- Implementar particionamiento de eventos
- Gestionar estados y consistencia

## Recursos Adicionales

### Referencias Técnicas

- [Apache Kafka Documentation](https://kafka.apache.org/documentation/)
- [Event-Driven Architecture](https://martinfowler.com/articles/201701-event-driven.html)
- [Patterns of Distributed Systems](https://martinfowler.com/articles/patterns-of-distributed-systems/)

### Herramientas de Aprendizaje

- Simuladores de colas
- Plataformas de prueba de carga
- Frameworks de procesamiento de eventos

## Ejercicios Prácticos

### Cálculo de Capacidad

1. Determinar servidores necesarios para SLA
2. Calcular longitud media de cola
3. Estimar tiempo total de procesamiento
4. Analizar impacto de paralelismo

### Diseño de Arquitectura

1. Seleccionar patrón de entrega
2. Definir estrategia de escalado
3. Planificar manejo de fallos
4. Implementar monitoreo
