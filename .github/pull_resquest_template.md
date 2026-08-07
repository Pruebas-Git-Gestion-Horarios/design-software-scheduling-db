# Pull Request de base de datos

## Información general

- Tarea o incidencia:
- Repositorio:
- Autor:
- Líder técnico:
- Rama origen:
- Rama destino:
- Ambiente afectado:
  - [ ] develop
  - [ ] qa
  - [ ] staging
  - [ ] main

## Tipo de cambio

- [ ] Schema
- [ ] Tabla
- [ ] Columna
- [ ] Constraint
- [ ] Índice
- [ ] Vista
- [ ] Función
- [ ] Procedimiento
- [ ] Trigger
- [ ] Seed
- [ ] Actualización de datos
- [ ] Eliminación de datos
- [ ] Rol o permiso
- [ ] Política de seguridad
- [ ] Rollback
- [ ] Pipeline
- [ ] Documentación

## Carpetas modificadas

- [ ] `01_ddl`
- [ ] `02_dml`
- [ ] `03_dcl`
- [ ] `04_tcl`
- [ ] `05_rollbacks`
- [ ] `changelog`
- [ ] `.github`

## Descripción

Explique qué cambia, por qué es necesario y qué requerimiento resuelve.

## Objetos afectados

Indique los schemas, tablas, columnas, constraints, índices,
roles, grants, funciones, vistas, triggers o registros afectados.

## Flujo de promoción

- [ ] `feature/*` o `fix/*` → `develop`
- [ ] `develop` → `qa`
- [ ] `qa` → `staging`
- [ ] `staging` → `main`
- [ ] `hotfix/*` → `main`

## Compatibilidad

- [ ] Compatible con versiones anteriores.
- [ ] Requiere actualización del backend.
- [ ] Requiere ventana de mantenimiento.
- [ ] Puede bloquear tablas.
- [ ] Puede ocasionar pérdida de datos.
- [ ] No aplica.

## Liquibase

- [ ] Se creó o modificó un changeset.
- [ ] El changeset tiene identificador único.
- [ ] El changeset está incluido en el changelog.
- [ ] El changelog llega hasta `changelog-master.yaml`.
- [ ] `liquibase validate` finaliza correctamente.
- [ ] `liquibase update` finaliza correctamente.
- [ ] Una segunda ejecución no genera cambios pendientes.
- [ ] Se revisó el SQL generado antes de aplicar.

## Rollback

- [ ] Se agregó rollback.
- [ ] El rollback fue probado.
- [ ] El rollback restaura el estado anterior.
- [ ] No se necesita rollback y se justificó.

### Justificación cuando no existe rollback

Escriba la justificación técnica.

## Seguridad

- [ ] No se agregaron contraseñas.
- [ ] No se agregaron tokens.
- [ ] No se agregó un archivo `.env`.
- [ ] No se agregaron claves privadas.
- [ ] No se agregaron copias de datos reales.
- [ ] No se otorgaron permisos amplios a `PUBLIC`.
- [ ] Los roles siguen mínimo privilegio.
- [ ] No se exponen datos personales o sensibles.

## Rendimiento

- [ ] Se evaluaron índices.
- [ ] Se evaluó el impacto de bloqueos.
- [ ] Se evaluó el volumen de datos.
- [ ] Se evitaron operaciones masivas sin condición.
- [ ] No aplica.

## Evidencias

Adjunte:

- Resultado del pipeline.
- SQL generado por Liquibase.
- Resultado del rollback.
- Consultas de validación.
- Capturas o registros.

## Plan de reversión

Explique cómo se recuperará la base de datos en caso de fallo.

## Aprobaciones

- [ ] Líder técnico.
- [ ] Instructor, Juan Pablo o Andrey.
- [ ] QA, cuando corresponda.
- [ ] Pipeline exitoso.
- [ ] Conversaciones resueltas.