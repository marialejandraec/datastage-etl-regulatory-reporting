# ETL Regulatorio – Banca Electrónica | IBM DataStage

## Descripción
Proceso ETL desarrollado en IBM DataStage para la generación de insumos
regulatorios relacionados con operaciones de clientes a través de servicios
de banca electrónica, cumpliendo lineamientos regulatorios.

El proceso consolida información transaccional y de clientes proveniente de
fuentes XML y Data Warehouse, generando layouts finales para reporte trimestral.

## Objetivo
Recabar y procesar información sobre:
- Número de clientes que operan servicios de banca electrónica
- Operaciones monetarias realizadas por canal electrónico
- Montos y conteos por periodo y tipo de cliente

## Fuentes de datos
- XML transaccionales (Clearing, Customers)
- Data Warehouse (modelo relacional)

## Flujo ETL
1. Extracción de datos desde XML y DWH
2. Filtrado de clientes activos
3. Aplicación de reglas de negocio
4. Agregaciones por periodo (trimestre y mes)
5. Cálculo de métricas (conteos y montos)
6. Consolidación de información
7. Generación de archivos planos para reporte regulatorio

## Reglas de negocio principales
- Considerar únicamente clientes activos
- Filtrado por tipo de participante
- Procesamiento exclusivo para producto específico
- Cálculo de métricas por mes dentro del trimestre
- Validación de relaciones entre operaciones y participantes

## Métricas calculadas
- Número de clientes por servicio
- Número de operaciones por canal
- Monto total operado
- Métricas desagregadas por mes

## Salidas
- Archivos planos con layout regulatorio
- Información consolidada lista para consumo externo

## Herramientas utilizadas
- IBM DataStage
- SQL
- Data Warehouse
- Procesos automatizados (ejecución periódica)

## Periodicidad
- Ejecución trimestral
- Generación en el octavo día hábil posterior al cierre del trimestre

## Nota
Proyecto representativo basado en experiencia real.
Estructuras y nombres han sido anonimizados por confidencialidad.

