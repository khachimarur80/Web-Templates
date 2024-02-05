<template>
  <div id="información">
    <h1 class="info-header">Información</h1>
    <div class="schedule">
      <table>
        <thead>
          <tr>
            <th>Día</th>
            <th>Horario</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Lunes</td>
            <td>10:00 AM - 6:00 PM</td>
          </tr>
          <tr>
            <td>Martes</td>
            <td>10:00 AM - 6:00 PM</td>
          </tr>
          <tr>
            <td>Miércoles</td>
            <td>10:00 AM - 6:00 PM</td>
          </tr>
          <tr>
            <td>Jueves</td>
            <td>10:00 AM - 8:00 PM</td>
          </tr>
          <tr>
            <td>Viernes</td>
            <td>10:00 AM - 8:00 PM</td>
          </tr>
          <tr>
            <td>Sábado</td>
            <td>9:00 AM - 5:00 PM</td>
          </tr>
          <tr>
            <td>Domingo</td>
            <td>Cerrado</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>
export default {
  name: 'vInfo',
}
</script>

<style scoped>
  .info-header {
    width: 100%;
    text-align: center;
    margin-bottom: 50px;
  }
  #información {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 50px;
    width: 100h;
    flex-direction: column;
  }
  .schedule {
    height: fit-content;
    width: fit-content;
    padding: 30px;
    border: 1px solid var(--primary);
    border-radius: 30px;
    background-color: var(--text-light);
  }

  table {
    width: 400px;
    border-collapse: collapse;
    margin-top: 20px;
    background-color: var(--text-light);
  }

  th, td {
    padding: 10px;
    text-align: center;
    user-select: none;
    padding-top: 15px;
    padding-bottom: 15px;
  }

  th {
    background-color: var(--primary);
    color: #FFFFFF;
  }

  tr:nth-child(even) {
    background-color: var(--text-light);
  }
  tr:nth-child(odd) {
    background-color: var(--background);
  }


</style>