---
title: 'Servicios Web y REST'
date: '2024-12-05'
author: 'Fabrizio Camaggi'
tags: []
---

# Taller de Integración - Introducción a Sistemas de Integración

## Información del Curso

- **Código**: IIC3103
- **Profesores**:
  - Arturo Tagle (CTO Mineral Forecast, ex-CTO Betterfly)
  - Daniel Darritchon

## Objetivos de Aprendizaje

Al finalizar el curso, el alumno será capaz de:

1. Comprender diferentes tecnologías y técnicas de integración actuales
2. Describir dependencias e interacciones entre sistemas
3. Implementar capas de software para interoperabilidad
4. Analizar consecuencias tecnológicas y de negocios en integraciones
5. Diseñar estrategias de interoperación con objetivos específicos
6. Evaluar costos, beneficios y problemas potenciales
7. Identificar problemáticas y desafíos de integración

## Conceptos Fundamentales

### ¿Qué es un Sistema?

- **Definición**: Conjunto de entidades o componentes interrelacionados que permiten una nueva función
- **Característica clave**: Realiza funciones que sus componentes individuales no pueden hacer por sí solos
- **Aspectos fundamentales**:
  - **Función**: Lo que el sistema hace
  - **Forma**: Lo que el sistema es
  - **Nota**: Múltiples formas pueden realizar una misma función

### Integración de Sistemas

**Definición formal** (Gartner):

> El proceso de crear un sistema de información complejo que puede incluir el diseño y/o construcción de una arquitectura o aplicación personalizada, integrándola con hardware, software o capas de comunicación existentes o nuevas.

## Estrategias de Integración

### 1. Transferencia de Archivos

- Sistema A envía datos a Sistema B mediante archivos
- Requiere acuerdos sobre:
  - Nombres de archivo
  - Ubicación
  - Formato
  - Tiempos de escritura/lectura
  - Responsabilidad de borrado
- **Ejemplos**: FTP, SFTP, correo electrónico

### 2. Base de Datos Compartida

- Múltiples sistemas acceden a una BD común
- **Ventajas**:
  - No requiere transferencia de datos
- **Desventajas**:
  - Dificultad para encontrar modelo de datos universal
  - Punto único de falla
  - Cuello de botella en escalabilidad

### 3. RPC (Remote Procedure Call)

- Exposición de funcionalidad para acceso remoto
- Comunicación síncrona en tiempo real
- **Aplicación**: Común en apps móviles

### 4. Mensajería

- Sistema A publica mensaje en canal común
- Sistema B procesa cuando puede
- Requiere acuerdo en:
  - Canal de comunicación
  - Formato de mensaje
- **Ejemplos**: API REST, GraphQL

## Desafíos de Integración

1. **Heterogeneidad de Sistemas**

   - Diferentes lenguajes
   - Diferentes sistemas operativos
   - Diferentes arquitecturas

2. **Gestión del Cambio**

   - Sistemas evolucionan constantemente
   - Necesidad de adaptación continua
   - Impacto en sistemas interconectados

3. **Confiabilidad de Redes**

   - Problemas inherentes a sistemas distribuidos
   - Mayor complejidad vs sistemas locales

4. **Performance de Red**
   - Latencia significativamente mayor que acceso local
   - Necesidad de considerar impacto en rendimiento

## Recursos Adicionales

### Libros Recomendados

- Hohpe, G., & Woolf, B. (2015). Enterprise Integration Patterns
- Newman, S. (2015). Building Microservices

### Artículos Relevantes

- ["REST vs. RPC: What problems are you trying to solve with your APIs?"](https://cloud.google.com/blog/products/application-development/rest-vs-rpc-what-problems-are-you-trying-to-solve-with-your-apis) - Google Cloud Blog

### Herramientas de Integración

- Zapier
- Apache Kafka
- RabbitMQ
- Amazon API Gateway
- Oracle Service Bus

## Evaluación del Curso

| Componente           | Ponderación | Requisito | Notas                   |
| -------------------- | ----------- | --------- | ----------------------- |
| Actividades en clase | 10%         | -         | Se elimina peor nota    |
| Tareas               | 35%         | ≥ 4.0     | 3 tareas en el semestre |
| Proyecto             | 35%         | ≥ 4.0     | Evaluación de pares     |
| Examen               | 20%         | -         | 6 de diciembre          |

## Notas Importantes

- Las fechas específicas de tareas y proyecto están pendientes
- El curso utiliza Canvas como plataforma principal
- Se incentiva la participación activa y feedback continuo
- Todas las evaluaciones están sujetas a la política de integridad académica
