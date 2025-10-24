# 🏀 Rotowire NBA SOY Archivo de Cuotas

Este repositorio **recopila y archiva automáticamente las cuotas diarias del Six Man of the Year (SOY)** de la NBA publicadas por [RotoWire](https://www.rotowire.com/betting/nba/sixth-man-odds.php).  
Los datos se almacenan en formato CSV mediante un flujo automatizado de **GitHub Actions**.

---

## 📋 Qué hace este repositorio

- Ejecuta un script en R (`six_man_odds.R`) que extrae las cuotas del SOY desde RotoWire.  
- Añade una **marca temporal** para saber cuándo se obtuvieron los datos.  
- Guarda los resultados como un **archivo CSV con fecha** dentro de la carpeta `data/`.  
- Se ejecuta **a diario** y también **bajo demanda** mediante GitHub Actions.  
- Realiza commit y push automáticos de los nuevos archivos, creando un **archivo histórico** de cuotas del SOY a lo largo del tiempo.

---

## ⚙️ Cómo funciona

1. El flujo de trabajo de **GitHub Actions** se activa:
   - Automáticamente cada día a las **08:30 AM UTC**.  
   - Manualmente desde el botón **“Run workflow”** en la pestaña *Actions*.
2. Configura un entorno **R** en un runner Linux.  
3. Instala los paquetes necesarios (`jsonlite`, `dplyr`) y dependencias del sistema.  
4. Ejecuta el script `six_man_odds.R`, que descarga y guarda los datos actualizados.  
5. Hace commit y push de los nuevos CSV al repositorio, manteniendo un registro completo de la evolución de las cuotas.


---

## 🗓️ Ejemplo de archivo generado

data/sixMan_odds_2025_10_24.csv

Cada archivo contiene las cuotas del ROY en el momento en que fueron extraídas, junto con la fecha correspondientes.

