package BBDD

import Negocio.Monitor

interface MonitorDAO {

    fun getAllMonitor(): List<Monitor>

    }