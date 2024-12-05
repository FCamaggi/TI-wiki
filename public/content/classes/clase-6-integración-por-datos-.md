---
title: 'Integración por Datos'
date: '2024-12-05'
author: 'Fabrizio Camaggi'
tags: ['integración', 'datos', 'architectura', 'transferencia']
---

# Integración por Datos - IIC3103

## Objetivos de Aprendizaje

- Comprender los fundamentos de la integración de sistemas por datos
- Identificar las diferentes aproximaciones a la integración de datos
- Analizar casos de uso y escenarios para la transferencia de archivos
- Explorar herramientas y servicios modernos para la integración de datos

## 1. Motivación para la Integración de Sistemas

### ¿Por qué queremos integrar sistemas?

- Procesos transparentes para comunicación e intercambio de datos
- Interoperabilidad de sistemas (manejo de dependencias)
- Disponibilidad de información
- Uso más eficiente del software
- Comunicación entre sistemas nuevos y existentes
- Reducción de costos:
  - Automatización de procesos manuales costosos y lentos
  - Integración de módulos vs modificación de código base

## 2. Aproximaciones a la Integración

### 2.1 Las 4 Aproximaciones Principales:

1. Intercambio de archivos
2. Bases de datos compartidas
3. Invocación remota
4. Mensajería

### 2.2 Arquitectura de Sistemas

La arquitectura típica se compone de tres capas:

- Capa de datos
- Lógica de negocio
- Visualización

### 2.3 Niveles de Integración

- **Integración por servicios y eventos**: A nivel de capa lógica de negocios
- **Integración por datos**: A nivel de capa de datos

## 3. Integración por Datos: Casos de Uso

### 3.1 Cuándo usar integración por datos:

- No existen servicios ni eventos disponibles:
  - Por falta de desarrollo
  - Por limitaciones tecnológicas
- Alto volumen de datos hace impráctica la integración por servicios/eventos
- Requerimientos específicos de integridad y seguridad

## 4. Transferencia de Archivos

### 4.1 Protocolos y Herramientas

- **FTP/SFTP**:
  - File Transfer Protocol
  - Arquitectura cliente-servidor
  - Transferencia independiente del sistema operativo

### 4.2 Soluciones Empresariales

#### AWS Transfer Family

- Servicios administrados para transferencia de archivos
- Soporta SFTP, FTPS, FTP
- Integración con S3 y EFS
- Procesamiento y análisis post-transferencia

#### AWS Snowball/Snowmobile

- Solución para transferencia de datos a gran escala
- Dispositivos físicos para migración
- Ideal para volúmenes masivos de datos

### 4.3 Automatización

#### RPA (Robotic Process Automation)

- Automatización de procesos repetitivos
- Ejemplo: Procesamiento automático de facturas PDF
- Herramientas:
  - Rocketbot (solución chilena)
  - UiPath
  - Automation Anywhere

## 5. Arquitecturas de Integración

### 5.1 Enfoques

1. **Centralizado**:

   - Mayor control sobre permisos y autenticación
   - Alta carga en el servidor
   - No escalable
   - Infraestructura y protocolos simples

2. **Distribuido (P2P)**:
   - Menor control sobre permisos
   - Carga distribuida
   - Altamente escalable
   - Requiere infraestructura más compleja

## Referencias y Recursos Adicionales

### Bibliografía Principal

- Hohpe, G. (2002). Enterprise integration patterns
- Hohpe, G., Woolf, B. (2015). Enterprise integration patterns: Designing, building and deploying messaging solutions
- Fowler, M. (2015). Patterns of enterprise application architecture

### Recursos Online

- [AWS Transfer Family](https://aws.amazon.com/es/aws-transfer-family/)
- [AWS Snowball](https://aws.amazon.com/es/snowball/)
- [Rocketbot RPA](https://www.rocketbot.com/)

### Lecturas Recomendadas

1. "Data Integration Blueprint and Modeling" por Anthony David Giordano
2. "Enterprise Integration: An Architecture for Enterprise Application and Systems Integration" por Fred A. Cummins
