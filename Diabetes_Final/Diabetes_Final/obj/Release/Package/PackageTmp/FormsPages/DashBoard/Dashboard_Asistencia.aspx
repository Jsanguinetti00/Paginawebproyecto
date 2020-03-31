<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Dashboard_Asistencia.aspx.cs" Inherits="Diabetes_Final.FormsPages.Dashboard_Asistencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Dashboard Asistencia || P.E.D 7 PASOS</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
    <h3><i class="fa fa-angle-right"></i>DashBoard Asistencia</h3>
        <!-- page start-->
        <div class="tab-pane" id="chartjs">
          <div class="row mt">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Pie Asistencias</h4>
                <div class="panel-body text-center">
                      <canvas id="myChart1" width="300" height="200"></canvas>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Line</h4>
                <div class="panel-body text-center">
                  <canvas id="myChart2" height="200" width="300"></canvas>
                </div>
              </div>
            </div>
          </div>
          <div class="row mt">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Radar</h4>
                <div class="panel-body text-center">
                  <canvas id="radar" height="300" width="400"></canvas>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Polar Area</h4>
                <div class="panel-body text-center">
                  <canvas id="polarArea" height="300" width="400"></canvas>
                </div>
              </div>
            </div>
          </div>
          <div class="row mt">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Bar</h4>
                <div class="panel-body text-center">
                  <canvas id="bar" height="300" width="400"></canvas>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Pie</h4>
                <div class="panel-body text-center">
                  <canvas id="pie" height="300" width="400"></canvas>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- page end-->

    <script>
        var chartPie = document.getElementById("myChart1").getContext("2d");
        var myChart1 = new Chart(chartPie, {
            type: "pie",
            data: {
                labels: ['col1', 'col2', 'col3'],
                datasets: [{
                    label: 'Num datos',
                    data: [10, 9, 15],
                    backgroundColor: [
                        'rgb(0, 128, 255)',
                        'rgb(191, 0, 255)',
                        'rgb(255, 0, 0)'
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
        var chartbar = document.getElementById("myChart2").getContext("2d");
        var myChart2 = new Chart(chartbar, {
                type: "bar",
                data: {
                    labels: ['col1', 'col2', 'col3'],
                    datasets: [{
                        label: 'Num datos',
                        data: [10, 9, 15],
                        backgroundColor: [
                            'rgb(0, 128, 255)',
                            'rgb(191, 0, 255)',
                            'rgb(255, 0, 0)'
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
</asp:Content>
