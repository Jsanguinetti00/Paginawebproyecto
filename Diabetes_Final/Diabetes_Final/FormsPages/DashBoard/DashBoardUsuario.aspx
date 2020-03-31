<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoardUsuario.aspx.cs" Inherits="Diabetes_Final.FormsPages.DashBoard.DashBoardUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../../lib/jquery/Chart.js"></script>
</head>
<body>
 <form id="form1" runat="server">
            <div class="row mt">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Grafica de Pacientes por Edades</h4>
                <div class="panel-body text-center">
                  <canvas id="myChart1" height="200" width="300"></canvas>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Grafica de Pacientes por Año de Registro</h4>
                <div class="panel-body text-center">
                  <canvas id="myChart2" height="200" width="300"></canvas>
                </div>
              </div>
            </div>
            </div>
            <div class="row mt">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Grafica de Rango por Edades</h4>
                <div class="panel-body text-center">
                  <canvas id="myChart3" height="200" width="300"></canvas>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Grafica de Estatus de Usuario</h4>
                <div class="panel-body text-center">
                  <canvas id="myChart4" height="200" width="300"></canvas>
                </div>
              </div>
            </div>
            </div>

        <script>
            var chartPie1 = document.getElementById("myChart1").getContext("2d");
            var datos = <%=NumeroEdades()%>;
            var myChart1 = new Chart(chartPie1, {
                type: "bar",
                data: {
                    labels: ['Años Totales'],
                    datasets: [{
                        label: 'Numero de Pacientes',
                        data: datos,
                        backgroundColor: [
                            'rgb(191, 0, 255)'
                        ]
                    }]
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });
        </script>
         <script>
             var chartPie1 = document.getElementById("myChart2").getContext("2d");
             var datos = <%=FechaRegistros()%>;
             var myChart2 = new Chart(chartPie1, {
                 type: 'scatter',
                 data: {
                     labels: ['Años Totales'],
                     datasets: [{
                         label: 'Numero de Pacientes Registrados',
                         data: datos,
                         backgroundColor: [
                             'rgb(191, 0, 255)'
                         ]
                     }]
                 },
                 options: {
                     scales: {
                         yAxes: [{
                             ticks: {
                                 beginAtZero: true
                             }
                         }]
                     }
                 }
             });
        </script>
          <script>
              var chartPie = document.getElementById("myChart3").getContext("2d");
              var datos = <%=EdadesRangosChart()%>;
              var myChart3 = new Chart(chartPie, {
                  type: "pie",
                  data: {
                      labels: ['De 1 - 3 Años', 'De 4 - 6 Años', 'De 7 - 9 Años', 'De 10 - 12 Años', 'De 13 - 15 Años', 'De 16 a Mas Años'],
                      datasets: [{
                          label: 'Num datos',
                          data: datos,
                          backgroundColor: [
                              'rgb(0, 128, 255)',
                              'rgb(191, 0, 255)',
                              'rgb(255, 0, 0)',
                              'rgb(45, 117, 222)',
                              'rgb(132, 45, 225)',
                              'rgb(233, 154, 32)'
                          ]
                      }]
                  },
                  options: {
                      scales: {
                          yAxes: [{
                              ticks: {
                                  beginAtZero: true
                              }
                          }]
                      }
                  }
              });
    </script>
      <script>
          var chartPie1 = document.getElementById("myChart4").getContext("2d");
          var datos = <%=StatusPersona()%>;
          var myChart4 = new Chart(chartPie1, {
              type: "pie",
              data: {
                  labels: ['Estatus Graduado', 'Estatus No Graduado'],
                  datasets: [{
                      label: 'Num datos',
                      data: datos,
                      backgroundColor: [
                          'rgb(0, 128, 255)',
                          'rgb(191, 0, 255)'
                      ]
                  }]
              },
              options: {
                  scales: {
                      yAxes: [{
                          ticks: {
                              beginAtZero: true
                          }
                      }]
                  }
              }
          });
    </script>
    </form>
</body>
</html>
