<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link href='https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css' rel='stylesheet' type='text/css'>
    <link href='https://cdn.datatables.net/buttons/2.2.3/css/buttons.dataTables.min.css' rel='stylesheet' type='text/css'>
    <style>
        .col-overall{
            background: #a8e1a8 !important;
            text-align: center !important;
        }
        .bg-attain{
            background: #b7e09a !important;
        }
        .bg-weak{
            background: #e0df63 !important;
        }
        .bg-not{
            background: #e08363 !important;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <h4>Batch 37</h4>
        <p>Fall 2021 (ADA, ADAL)</p>
        <p>Fall 2022 (AI, AIL, CN, CNL, SD) </p>
        <p>Spring 2022 (MM, SEISD, SEISDL)</p>
        <table class="table table-striped display" id="MyTable">
            <thead>
                <th>Roll</th>
                <th>Name</th>
                <th>PO1</th>
                <th>PO2</th>
                <th>PO3</th>
                <th>PO4</th>
                <th>PO5</th>
                <th>PO6</th>
                <th>PO7</th>
                <th>PO8</th>
                <th>PO9</th>
                <th>PO10</th>
                <th>PO11</th>
                <th>PO12</th>
                <th>Overall ({{ $count_po }})</th>
                <th>Chart</th> 
            </thead>
            <tbody>
                @foreach($students_info as $i=>$s)
                @if($i > 0 && $students_info[$i-1]['roll']!=$students_info[$i]['roll'])
                <tr>
                    <td>{{ $s['roll'] }}</td>
                    <td>{{ $s['name'] }}</td>
                    <!-- <td>{{ number_format($s['po1'] / ($pos_total[0]->tot_po1 !=0 ? $pos_total[0]->tot_po1 : 1)*100,0) }}%</td>
                    <td>{{ number_format($s['po2'] / ($pos_total[0]->tot_po2 !=0 ? $pos_total[0]->tot_po2 : 1)*100,0) }}%</td>
                    <td>{{ number_format($s['po3'] / ($pos_total[0]->tot_po3 !=0 ? $pos_total[0]->tot_po3 : 1)*100,0) }}%</td>
                    <td>{{ number_format($s['po4'] / ($pos_total[0]->tot_po4 !=0 ? $pos_total[0]->tot_po4 : 1)*100,0) }}%</td>
                    <td>{{ number_format($s['po5'] / ($pos_total[0]->tot_po5 !=0 ? $pos_total[0]->tot_po5 : 1)*100,0) }}%</td>
                    <td>{{ number_format($s['po6'] / ($pos_total[0]->tot_po6 !=0 ? $pos_total[0]->tot_po6 : 1)*100,0) }}%</td>
                    <td>{{ number_format($s['po7'] / ($pos_total[0]->tot_po7 !=0 ? $pos_total[0]->tot_po7 : 1)*100,0) }}%</td>
                    <td>{{ number_format($s['po8'] / ($pos_total[0]->tot_po8 !=0 ? $pos_total[0]->tot_po8 : 1)*100,0) }}%</td>
                    <td>{{ number_format($s['po9'] / ($pos_total[0]->tot_po9 !=0 ? $pos_total[0]->tot_po9 : 1)*100,0) }}%</td>
                    <td>{{ number_format($s['po10'] / ($pos_total[0]->tot_po10 !=0 ? $pos_total[0]->tot_po10 : 1)*100,0) }}%</td>
                    <td>{{ number_format($s['po11'] / ($pos_total[0]->tot_po11 !=0 ? $pos_total[0]->tot_po11 : 1)*100,0) }}%</td>
                    <td>{{ number_format($s['po12'] / ($pos_total[0]->tot_po12 !=0 ? $pos_total[0]->tot_po12 : 1)*100,0) }}%</td> -->
                    <td class="{{ $s['po1_percent'] >= 0.50 ? 'bg-attain': '' }}">{{ number_format($s['po1_percent']*100,0) }}%</td>
                    <td>{{ number_format($s['po2_percent']*100,0) }}%</td>
                    <td>{{ number_format($s['po3_percent']*100,0) }}%</td>
                    <td>{{ number_format($s['po4_percent']*100,0) }}%</td>
                    <td>{{ number_format($s['po5_percent']*100,0) }}%</td>
                    <td>{{ number_format($s['po6_percent']*100,0) }}%</td>
                    <td>{{ number_format($s['po7_percent']*100,0) }}%</td>
                    <td>{{ number_format($s['po8_percent']*100,0) }}%</td>
                    <td>{{ number_format($s['po9_percent']*100,0) }}%</td>
                    <td>{{ number_format($s['po10_percent']*100,0) }}%</td>
                    <td>{{ number_format($s['po11_percent']*100,0) }}%</td>
                    <td>{{ number_format($s['po12_percent']*100,0) }}%</td>
                    <td class="col-overall">{{ number_format(($s['sum_po'] / $count_po)*100,0)  }}%</td>
                    <td><a href="{{ url('chart/'.$s['roll'].'/'.$s['po1_percent'].'/'.$s['po2_percent'].'/'.$s['po3_percent'].'/'.$s['po4_percent'].'/'.$s['po5_percent'].'/'.$s['po6_percent'].'/'.$s['po7_percent'].'/'.$s['po8_percent'].'/'.$s['po9_percent'].'/'.$s['po10_percent'].'/'.$s['po11_percent'].'/'.$s['po12_percent']) }}">View Chart</a></td>
                </tr>
                @endif
                @endforeach
            </tbody>
        </table>

       
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.html5.min.js"></script>

    <script>
        $(document).ready(function(){
            $("#MyTable").DataTable({
                dom: 'Bfrtip',
                pageLength: 150,
                buttons: [
                    {
                        extend: 'excelHtml5',
                        text: 'Export',
                        title: '37 Batch',
                        download: 'open',
                        orientation:'landscape',
                        exportOptions: {
                            // columns: ':visible'
                            columns: [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14]
                        }
                    }
                ]
            });
        })
        $(document).ready(function(){
            var i = 0;
            var t = document.getElementById('MyTable');
            var col_len = $("table > tbody > tr:first > td").length;
            // alert($("table > tbody > tr:first > td:eq(2)").text())
            $("#MyTable tr").each(function() {
                for(var j = 2; j < col_len; j++){
                    var cell_value = $(t.rows[i].cells[j]).text();
                    cell_value.replace("%","");
                    cell_value = parseInt(cell_value, 10);
                    if(cell_value >= 50){
                        $(t.rows[i].cells[j]).addClass('bg-attain');
                    }
                    if(cell_value >=25 && cell_value<50){
                        $(t.rows[i].cells[j]).addClass('bg-weak');
                    }
                    else if(cell_value < 25 && cell_value != 0){
                        $(t.rows[i].cells[j]).addClass('bg-not');
                    }
                }
                // var val1 = $(t.rows[i].cells[1]).text();
                // console.log(val1) ;
                // break;
                i++;
            });
        });
    </script>



</body>
</html>