<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Home.Master" AutoEventWireup="true" CodeBehind="Dashboard_Usuario.aspx.cs" Inherits="Diabetes_Final.FormsPages.Dashboard_usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_heder_blanc" runat="server">
    <title>Dashboard Usuario || P.E.D 7 PASOS</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido_blanco" runat="server">
    <form id="form1" runat="server">
    <h3><i class="fa fa-angle-right"></i>DashBoard Usuario</h3>
        <!-- page start-->
        <div class="tab-pane" id="chartjs">
          <div class="row mt">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Pie de Años con Diabetes</h4>
                <div class="panel-body text-center">
                      <canvas id="myChart1" width="300" height="200"></canvas>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Bar de Rango por Edades</h4>
                <div class="panel-body text-center">
                  <canvas id="myChart2" height="200" width="300"></canvas>
                </div>
              </div>
            </div>
          </div>
          <div class="row mt">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Pie Estatus de Usuario</h4>
                <div class="panel-body text-center">
                  <canvas id="myChart3" height="200" width="300"></canvas>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i>Pie por Edades</h4>
                       <input type="number" id="_quantity" runat="server" class="form-control" name="quantity" min="1" max="100">
                        <asp:Button runat="server" ID="btnEdad" CssClass="btn btn-theme btn-block" text="Aplicar" OnClick="btnEdad_Click"/>
                <div class="panel-body text-center">
                  <canvas id="myChart4" height="200" width="300"></canvas>
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
        var datos = <%=EdadesRangosDiabetes()%>;
        var myChart1 = new Chart(chartPie, {
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
        var chartbar = document.getElementById("myChart2").getContext("2d");
        var myChart2 = new Chart(chartbar, {
                type: "bar",
                data: {
                    labels: ['Edad de 1 - 15', 'Edad de 16 - 30', 'Edad de 31 - 45', 'Edad de 46 - 60', 'Edad de 61 - 75', 'Edad de 76 - 90', 'Edad de 91 - 100'],
                    datasets: [{
                        label: 'Num datos',
                        data: <% =EdadesRangosChart() %>,
                        backgroundColor: [
                            'rgb(0, 128, 255)',
                            'rgb(191, 0, 255)',
                            'rgb(255, 0, 0)',
                            'rgb(61, 222, 245)',
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
            var chartPie1 = document.getElementById("myChart3").getContext("2d");
            var datos = <%=StatusPersona()%>;
            var myChart3 = new Chart(chartPie1, {
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
    <script>
        var chartPie = document.getElementById("myChart1").getContext("2d");
        var datos = <%=EdadesRangosDiabetes()%>;
        var myChart1 = new Chart(chartPie, {
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
        var chartPie = document.getElementById("myChart4").getContext("2d");
        var datos = <%=EdadIngresado()%>;
        var myChart4 = new Chart(chartPie, {
            type: "pie",
            data: {
                labels: ['Edad'],
                datasets: [{
                    label: 'Num datos',
                    data: datos,
                    backgroundColor: [
                        'rgb(132, 45, 225)'
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
</asp:Content>
