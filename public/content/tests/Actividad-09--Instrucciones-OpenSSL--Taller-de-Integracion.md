# Documento relacionado: Actividad-9--Instrucciones-OpenSSL--Taller-de-Integracion

# Criptografía Asimétrica y OpenSSL: Una Guía Práctica

## Descripción General

Esta guía aborda la implementación de comunicación segura utilizando criptografía asimétrica a través de OpenSSL. El objetivo es establecer un canal de comunicación seguro entre dos partes mediante el uso de pares de llaves públicas y privadas.

## Objetivos de Aprendizaje

- Comprender los fundamentos de la criptografía asimétrica
- Implementar generación de llaves usando OpenSSL
- Aplicar técnicas de encriptación y desencriptación de mensajes
- Establecer un protocolo seguro de comunicación

## Fundamentos Teóricos

### Criptografía Asimétrica

La criptografía asimétrica, también conocida como criptografía de llave pública, utiliza dos llaves diferentes:

- **Llave Pública**: Distribuida abiertamente, usada para encriptar mensajes
- **Llave Privada**: Mantenida en secreto, usada para desencriptar mensajes

#### Ventajas del Sistema

| Característica   | Beneficio                                                    |
| ---------------- | ------------------------------------------------------------ |
| Confidencialidad | Solo el poseedor de la llave privada puede leer los mensajes |
| Integridad       | Los mensajes no pueden ser alterados durante la transmisión  |
| No repudio       | El remitente no puede negar haber enviado el mensaje         |

## Implementación Práctica

### 1. Generación de Llaves

```bash
# Generar llave privada RSA de 2048 bits
openssl genpkey -algorithm RSA -out private_key.pem -pkeyopt rsa_keygen_bits:2048

# Extraer llave pública
openssl rsa -pubout -in private_key.pem -out public_key.pem
```

### 2. Proceso de Comunicación Segura

1. **Envío de Llave Pública**

   ```bash
   # Enviar public_key.pem por correo electrónico
   ```

2. **Encriptación de Mensaje**

   ```bash
   echo "Mensaje secreto" | openssl rsautl -encrypt -pubin -inkey public_key.pem -out encrypted_message.bin
   ```

3. **Desencriptación de Mensaje**

   ```bash
   openssl rsautl -decrypt -inkey private_key.pem -in encrypted_message.bin
   ```

## Consideraciones de Seguridad

> **⚠️ Advertencia:** Nunca comparta su llave privada. Manténgala en un lugar seguro y con respaldos apropiados.

> **💡 Tip:** Use llaves de al menos 2048 bits para garantizar seguridad adecuada.

### Mejores Prácticas

1. Almacenamiento Seguro de Llaves

   - Usar permisos restrictivos en archivos
   - Implementar cifrado de disco
   - Mantener copias de seguridad seguras

2. Rotación de Llaves
   - Actualizar llaves periódicamente
   - Establecer procedimientos de revocación

## Recursos Adicionales

### 📚 Referencias

1. [OpenSSL Official Documentation](https://www.openssl.org/docs/) - Documentación completa
2. ["Applied Cryptography" por Bruce Schneier](https://www.schneier.com/books/applied-cryptography/) - Fundamentos teóricos
3. [NIST Cryptographic Standards](https://csrc.nist.gov/projects/cryptographic-standards-and-guidelines) - Estándares y guías

### Herramientas Complementarias

- GnuPG para gestión de llaves
- OpenSSH para comunicación segura
- KeyBase para verificación de identidad

## Ejercicios Prácticos

### 📝 Ejercicio 1: Verificación de Integridad

**Objetivo:** Verificar la integridad de un mensaje encriptado

**Instrucciones:**

1. Generar par de llaves RSA
2. Crear un mensaje de prueba
3. Encriptar y desencriptar el mensaje
4. Verificar que el contenido sea idéntico

**Ver solución**

```bash
# Generar llaves
openssl genpkey -algorithm RSA -out private_key.pem -pkeyopt rsa_keygen_bits:2048
openssl rsa -pubout -in private_key.pem -out public_key.pem

# Crear y encriptar mensaje
echo "Mensaje de prueba" > original.txt
openssl rsautl -encrypt -pubin -inkey public_key.pem -in original.txt -out encrypted.bin

# Desencriptar y verificar
openssl rsautl -decrypt -inkey private_key.pem -in encrypted.bin > decrypted.txt
diff original.txt decrypted.txt
```
