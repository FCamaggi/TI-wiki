# IIC3103 - Taller de Integración: Sistemas Distribuidos y Arquitectura

## Contenido General del Curso

1. [Introducción y Fundamentos](#introducción-y-fundamentos)
2. [Domain-Driven Design (DDD)](#domain-driven-design-ddd)
3. [Arquitectura Hexagonal](#arquitectura-hexagonal)
4. [Arquitectura de Microservicios](#arquitectura-de-microservicios)
5. [Principios SOLID](#principios-solid)

## Introducción y Fundamentos

### Objetivos del Diseño de Sistemas

Los sistemas de software modernos deben cumplir con varios objetivos clave:

| Objetivo      | Descripción                                                    |
| ------------- | -------------------------------------------------------------- |
| Practicidad   | Sistema dirigido a las necesidades específicas de los usuarios |
| Exactitud     | Cumplimiento de requisitos funcionales y no funcionales        |
| Eficiencia    | Uso óptimo de recursos disponibles                             |
| Fiabilidad    | Alta disponibilidad y confiabilidad del sistema                |
| Optimización  | Gestión eficiente de recursos escasos (tiempo/espacio)         |
| Escalabilidad | Adaptabilidad a necesidades cambiantes                         |

### Conceptos Clave

#### Load Balancer

- Distribuye el tráfico de red entre múltiples servidores
- Mejora la disponibilidad y rendimiento del sistema

#### API Gateway

- Gestiona y coordina solicitudes API
- Funciones principales:
  - Routing
  - Autorización
  - Rate limiting
  - Caching
  - Monitoreo

#### Content Delivery Network (CDN)

- Acelera la entrega de contenido
- Distribuye geográficamente el contenido
- Reduce la latencia para usuarios finales

## Domain-Driven Design (DDD)

### Fundamentos

1. **Definición**: Enfoque de diseño que enfatiza:

   - Modelado basado en el dominio del negocio
   - Alineación entre código y lógica de negocio

2. **Elementos Principales**:
   - Ubiquitous Language (Lenguaje Ubicuo)
   - Bounded Contexts (Contextos Delimitados)
   - Aggregates y Entities

### Componentes Clave

#### Bounded Context

- Define límites explícitos entre diferentes partes del sistema
- Mantiene la consistencia del modelo dentro de sus límites
- Facilita la separación de responsabilidades

#### Entities y Aggregates

```java
// Ejemplo de Entity
public class Cliente {
    private final UUID id;
    private String nombre;
    private List<Pedido> pedidos;

    // Métodos y lógica de negocio
}

// Ejemplo de Aggregate
public class Pedido {
    private final UUID id;
    private Cliente cliente;
    private List<ItemPedido> items;
    private EstadoPedido estado;

    // Métodos y reglas de negocio
}
```

## Arquitectura Hexagonal

### Principios Fundamentales

1. **Propósito**:

   - Separación clara de concerns
   - Independencia de tecnologías externas
   - Facilidad de testing

2. **Componentes**:
   - Núcleo de aplicación (dominio)
   - Puertos (interfaces)
   - Adaptadores (implementaciones)

### Implementación

```java
// Puerto (interfaz)
public interface ProductoRepository {
    Producto findById(String id);
    void save(Producto producto);
}

// Adaptador
public class PostgresProductoRepository implements ProductoRepository {
    // Implementación específica para PostgreSQL
}
```

## Arquitectura de Microservicios

### Características Principales

1. **Descomposición**:

   - Servicios pequeños e independientes
   - Responsabilidad única por servicio

2. **Beneficios**:
   - Escalabilidad independiente
   - Despliegue continuo
   - Resiliencia mejorada

### Patrones de Resiliencia

| Patrón          | Propósito                        |
| --------------- | -------------------------------- |
| Circuit Breaker | Previene fallos en cascada       |
| Bulkhead        | Aísla recursos y fallos          |
| Retry           | Maneja fallos transitorios       |
| Cache           | Mejora rendimiento y resistencia |

## Principios SOLID

### Resumen de Principios

1. **Single Responsibility (SRP)**

   - Una clase, una razón para cambiar

2. **Open/Closed (OCP)**

   - Abierto para extensión, cerrado para modificación

3. **Liskov Substitution (LSP)**

   - Las subclases deben poder sustituir a sus clases base

4. **Interface Segregation (ISP)**

   - Interfaces específicas son mejores que una interfaz general

5. **Dependency Inversion (DIP)**
   - Depender de abstracciones, no de implementaciones

### Ejemplos Prácticos

```java
// Ejemplo de Single Responsibility
public class Usuario {
    private String nombre;
    private String email;
}

public class UsuarioValidator {
    public boolean validarEmail(String email) {
        // Lógica de validación
    }
}

public class UsuarioRepository {
    public void guardar(Usuario usuario) {
        // Lógica de persistencia
    }
}
```

## Recursos Adicionales

### Lecturas Recomendadas

- "Domain-Driven Design" por Eric Evans
- "Clean Architecture" por Robert C. Martin
- "Building Microservices" por Sam Newman

### Herramientas y Frameworks

1. **Desarrollo**:

   - Spring Boot
   - Docker
   - Kubernetes

2. **Monitoreo**:

   - Prometheus
   - Grafana
   - ELK Stack

3. **Testing**:
   - JUnit
   - Mockito
   - TestContainers

### Enlaces Útiles

- [Documentación oficial de Spring](https://spring.io/docs)
- [Patrones de Microservicios](https://microservices.io/patterns)
- [Docker Documentation](https://docs.docker.com)
