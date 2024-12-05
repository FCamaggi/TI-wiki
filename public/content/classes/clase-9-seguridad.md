# Seguridad en Sistemas de Información

## Introducción

Este documento cubre los aspectos fundamentales de la seguridad en sistemas informáticos, abarcando desde conceptos básicos hasta implementaciones prácticas de criptografía y protocolos de seguridad.

## Contenido Principal

### 1. Fundamentos de Seguridad de la Información

#### 1.1 Conceptos Clave

- **Confidencialidad**: Protección de datos contra accesos no autorizados
- **Integridad**: Garantía de que los datos no han sido modificados
- **Disponibilidad**: Aseguramiento del acceso cuando sea necesario

#### 1.2 Principios de Sistemas Seguros

1. **Diseño abierto**: Maximizar la ayuda externa y revisión
2. **Minimización de secretos**: Reducir información crítica
3. **Economía de mecanismos**: Simplificar para mejor control
4. **Defaults seguros**: Configuraciones seguras por defecto
5. **Principio de privilegios mínimos**: "No guardar el almuerzo con las joyas"

### 2. Técnicas de Protección

#### 2.1 Algoritmos de Hash

- **Definición**: Función que convierte datos de entrada en una salida de longitud fija
- **Características**:
  - No reversibles
  - Deterministas
  - Distribución uniforme
  - Rápidos de calcular

#### 2.2 Criptografía

##### Criptografía Simétrica

- Utiliza la misma clave para cifrar y descifrar
- Ejemplos históricos:
  - Cifrado César (~50 DC)
  - Cifrado Vigenère (~1400)

##### Criptografía Asimétrica

- **RSA** (Rivest-Shamir-Adleman, 1977)
  - Basado en factorización de números primos
  - Fundamental para comercio electrónico
  - Usado en:
    - SSH
    - OpenPGP
    - SSL/TLS

### 3. Implementaciones Prácticas

#### 3.1 Password Security

- Uso de salt en hashes
- Almacenamiento seguro
- Políticas de contraseñas fuertes

#### 3.2 Protocolos de Seguridad

- **Diffie-Hellman**: Intercambio seguro de claves
- **Three-pass protocol**: Comunicación sin intercambio previo de claves

## Mejores Prácticas y Recomendaciones

### OWASP Top 10 (2017)

1. Inyección
2. Pérdida de autenticación
3. Exposición de datos sensibles
4. Entidades externas XML (XXE)
5. Pérdida de control de acceso
6. Configuración de seguridad incorrecta
7. Cross-Site Scripting (XSS)
8. Deserialización insegura
9. Componentes vulnerables
10. Monitoreo insuficiente

### Recursos Adicionales

#### Herramientas de Seguridad

- [CSIRT Chile](https://www.csirt.gob.cl/)
- [OWASP Testing Guide](https://owasp.org/www-project-web-security-testing-guide/)
- [Security Headers](https://securityheaders.com/)

#### Referencias Académicas

1. Tanenbaum, A. S., & Van Steen, M. (2017). Distributed systems: principles and paradigms.
2. Anderson, R. (2020). Security engineering: a guide to building dependable distributed systems.

## Ejercicios Prácticos

```python
import hashlib
import os

def hash_password(password):
    """
    Crear un hash seguro de una contraseña usando SHA-256 y salt.

    Args:
        password (str): La contraseña a hashear

    Returns:
        tuple: (salt, hash) donde ambos son strings hexadecimales
    """
    # Generar salt aleatorio
    salt = os.urandom(32)

    # Combinar password y salt
    salted_password = password.encode() + salt

    # Crear hash
    hash_obj = hashlib.sha256(salted_password)
    password_hash = hash_obj.hexdigest()

    return salt.hex(), password_hash

def verify_password(password, stored_salt, stored_hash):
    """
    Verificar si una contraseña coincide con un hash almacenado.

    Args:
        password (str): La contraseña a verificar
        stored_salt (str): El salt almacenado en formato hexadecimal
        stored_hash (str): El hash almacenado

    Returns:
        bool: True si la contraseña coincide, False en caso contrario
    """
    # Convertir salt de hex a bytes
    salt = bytes.fromhex(stored_salt)

    # Recrear el hash con la contraseña proporcionada
    salted_password = password.encode() + salt
    hash_obj = hashlib.sha256(salted_password)
    password_hash = hash_obj.hexdigest()

    # Comparar con el hash almacenado
    return password_hash == stored_hash

# Ejemplo de uso
def main():
    # Crear hash de una contraseña
    password = "MiContraseñaSegura123!"
    salt, hash_value = hash_password(password)

    print(f"Password: {password}")
    print(f"Salt: {salt}")
    print(f"Hash: {hash_value}")

    # Verificar contraseña correcta
    is_valid = verify_password(password, salt, hash_value)
    print(f"\nVerificación contraseña correcta: {is_valid}")

    # Verificar contraseña incorrecta
    wrong_password = "ContraseñaIncorrecta"
    is_valid = verify_password(wrong_password, salt, hash_value)
    print(f"Verificación contraseña incorrecta: {is_valid}")

if __name__ == "__main__":
    main()

```

## Evaluación y Control

Para mantener un sistema seguro, se recomienda:

1. Realizar auditorías regulares
2. Implementar monitoreo continuo
3. Mantener actualizadas las dependencias
4. Seguir las mejores prácticas de OWASP
5. Utilizar herramientas de análisis de seguridad
