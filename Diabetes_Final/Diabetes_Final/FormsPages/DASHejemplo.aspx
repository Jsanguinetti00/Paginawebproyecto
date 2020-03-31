<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DASHejemplo.aspx.cs" Inherits="Diabetes_Final.FormsPages._1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ejemplo DashBoard</title>
    <script src="../lib/jquery/Chart.js"></script>
</head>
<body>
         <form id="form1" runat="server">
            <div class="row mt">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Grafica de Estatus de Usuario</h4>
                <div class="panel-body text-center">
                  <canvas id="myChart1" height="200" width="300"></canvas>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Grafica de Estatus de Usuario</h4>
                <div class="panel-body text-center">
                  <canvas id="myChart2" height="200" width="300"></canvas>
                </div>
              </div>
            </div>
            </div>
            <div class="row mt">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Grafica de Estatus de Usuario</h4>
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
            var datos = <%=AgregarAño()%>;
            var myChart1 = new Chart(chartPie1, {
                type: "pie",
                data: {
                    labels: ['Años Totales'],
                    datasets: [{
                        label: 'Num datos',
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
             var datos = <%=RegistrosFecha()%>;
             var myChart2 = new Chart(chartPie1, {
                 type: "pie",
                 data: {
                     labels: ['Años Totales'],
                     datasets: [{
                         label: 'Num datos',
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
             var chartPie1 = document.getElementById("myChart3").getContext("2d");
             var datos = [2];
             var myChart3 = new Chart(chartPie1, {
                 type: "pie",
                 data: {
                     labels: ['Años Totales'],
                     datasets: [{
                         label: 'Num datos',
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
             var chartPie1 = document.getElementById("myChart4").getContext("2d");
             var datos = [2];
             var myChart4 = new Chart(chartPie1, {
                 type: "pie",
                 data: {
                     labels: ['Años Totales'],
                     datasets: [{
                         label: 'Num datos',
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
    </form>
</body>
</html>
