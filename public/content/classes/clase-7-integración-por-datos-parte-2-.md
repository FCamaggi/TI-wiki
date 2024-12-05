---
title: 'Integración por Datos - Parte 2'
date: '2024-12-05'
author: 'Fabrizio Camaggi'
course: 'IIC3103 - Taller de Integración'
---

# Integración por Datos - Arquitecturas y Estrategias

## Objetivos de Aprendizaje

- Comprender las diferentes arquitecturas de integración a nivel de datos
- Analizar ventajas y desventajas de cada aproximación
- Entender los conceptos de ETL, CDC y Data Lakes
- Conocer la evolución de ETL a ELT

## Arquitecturas de Integración de Datos

### Lectura Cruzada de Fuentes de Datos

Esta arquitectura permite la lectura directa entre diferentes fuentes de datos.

#### Ventajas

- Acceso en tiempo real a la información
- Eliminación de redundancia de datos
- Eficiencia en la comunicación

#### Desventajas

- Problemas de seguridad de datos
- Riesgos de integridad de datos
- Dificultades de mantenimiento
- Riesgo de sobrecarga

### Base de Datos Compartida

Implementa una fuente única y centralizada de información.

#### Ventajas

- Consistencia de datos
- Economía de recursos
- Coherencia en tiempo real

#### Desventajas

- Cuellos de botella y problemas de rendimiento
- Problemas de seguridad
- Dificultades de mantenimiento y escalabilidad
- Problemas de integridad de datos

### Factores de Escalabilidad

- Carga de la base de datos (R/W)
- Consistencia de los datos
- Coordinación de cambios
- Aislamiento

## Procesos de Integración de Datos

### ETL (Extract, Transform, Load)

Un proceso ETL consiste en:

1. Extracción de datos de sistemas fuente
2. Transformación de los datos según reglas de negocio
3. Carga en el sistema destino

#### Casos de Uso Comunes

- Extracción de información de sistemas transaccionales a bases analíticas
- Migración de sistemas
- Integración de datos entre sistemas

### Change Data Capture (CDC)

Metodología para capturar y trackear cambios en los datos en tiempo real.

#### Características

- Captura cambios incrementales
- Mantiene un log de cambios
- Permite sincronización en tiempo real
- Reduce la carga en sistemas fuente

### Data Lakes

#### Evolución: De ETL a ELT

Las tecnologías de Data Lake han impulsado un cambio paradigmático:

- Almacenamiento de datos sin procesar
- Transformación delegada al consumidor final
- Mayor flexibilidad en el procesamiento

#### Arquitecturas Avanzadas

- Data Ocean
- Data Mesh
- Arquitecturas distribuidas

## Mejores Prácticas y Recomendaciones

### Consideraciones de Diseño

1. Evaluar requisitos de tiempo real vs batch
2. Determinar necesidades de consistencia
3. Planificar la escalabilidad
4. Implementar seguridad desde el diseño

### Patrones de Implementación

1. Implementar logging y monitoreo
2. Establecer políticas de respaldo
3. Definir estrategias de recuperación
4. Mantener documentación actualizada

## Recursos Adicionales

### Referencias Académicas

- Hohpe, G. (2002). Enterprise integration patterns
- Hohpe, G., & Woolf, B. (2015). Enterprise integration patterns: Designing, building and deploying messaging solutions
- Fowler, M. (2015). Patterns of enterprise application architecture

### Recursos en Línea

- [Change Data Capture Guide - Hevo Data](https://hevodata.com/learn/change-data-capture/)
- [Data Lake Architecture Patterns](https://aws.amazon.com/big-data/datalakes-and-analytics/)
- [Modern Data Integration Patterns](https://www.confluent.io/learn/data-integration/)

## Ejercicios Prácticos

### Ejercicio 1: Diseño de Arquitectura

Diseñar una arquitectura de integración de datos para una empresa que necesita sincronizar información entre:

- Sistema de ventas
- Sistema de inventario
- Sistema de análisis

### Ejercicio 2: Implementación de CDC

Implementar un sistema básico de CDC utilizando:

- Logs de base de datos
- Sistema de mensajería
- Proceso de sincronización

---
