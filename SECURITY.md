# Política de seguridad del repositorio

## Ramas protegidas

Las ramas protegidas son:

- `develop`
- `qa`
- `staging`
- `main`

No está permitido realizar push directo sobre ellas.

## Flujo obligatorio

Los cambios deben promocionarse mediante Pull Request:

`feature/*`, `fix/*` o `HU*` → `develop` → `qa` → `staging` → `main`

Los hotfix pueden ingresar directamente a `main`, pero deben
replicarse posteriormente hacia `staging`, `qa` y `develop`.

## Aprobaciones

Todo Pull Request necesita:

1. Revisión del líder técnico.
2. Aprobación del Instructor, Juan Pablo o Andrey Gómez.
3. Pipeline exitoso.
4. Conversaciones resueltas.
5. Rama actualizada.

## Información prohibida

No se permite almacenar:

- Contraseñas.
- Tokens.
- Archivos `.env`.
- Claves privadas.
- Certificados privados.
- Cadenas de conexión reales.
- Copias de bases de datos.
- Dumps de producción.
- Datos personales extraídos de ambientes reales.

## Migraciones

Toda migración debe:

- Estar registrada en Liquibase.
- Tener identificador único.
- Ser validada sobre PostgreSQL 16.
- Incluir rollback o una excepción justificada.
- Evitar modificaciones manuales fuera de Liquibase.
- Aplicar el principio de mínimo privilegio.

## Cambios críticos

Se consideran críticos:

- Eliminación de tablas o columnas.
- Cambios de tipo de datos.
- Cambios en roles, grants o políticas.
- Actualizaciones o eliminaciones masivas.
- Cambios del changelog principal.
- Cambios de pipelines.
- Cambios de CODEOWNERS.
- Modificaciones sobre auditoría o identidad.

Estos cambios requieren revisión reforzada de los coordinadores.