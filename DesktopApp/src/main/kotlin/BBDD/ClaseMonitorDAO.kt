package BBDD

import Negocio.ClaseMonitor

interface ClaseMonitorDAO {
    fun getAllClaseMonitor(): List<ClaseMonitor>
}