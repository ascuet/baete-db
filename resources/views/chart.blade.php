<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    
</head>
<body>
    <div class="container">
        {{ $name }}
        <div style="width:500px; margin-left:30%;padding:10px">
            <canvas id="myChart"></canvas>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        const ctx = document.getElementById('myChart');
        Chart.defaults.font.size = 14;
        Chart.defaults.font.weight = 'bold';
        new Chart(ctx, {
            type: 'radar',
            options: {
                plugins: {
                    legend: {
                        labels: {
                            // This more specific font property overrides the global property
                            font: {
                                size: 14
                            }
                        }
                    }
                }
            },
            data: {
            labels: ['PO1', 'PO2', 'PO3', 'PO4', 'PO5', 'PO6', 'PO7', 'PO8', 'PO9', 'PO10', 'PO11', 'PO12'],
            datasets: [{
                label: '{{ $roll }} ({{ $name }})',            
                data: [{{ number_format($po1*100, 0) }}, {{ number_format($po2*100, 0) }}, {{ number_format($po3*100, 0) }}, 
                       {{ number_format($po4*100, 0) }}, {{ number_format($po5*100, 0) }}, {{ number_format($po6*100, 1) }}, 
                       {{ number_format($po7*100, 0) }}, {{ number_format($po8*100, 0) }}, {{ number_format($po9*100, 1) }}, 
                       {{ number_format($po10*100, 0) }}, {{ number_format($po11*100, 0) }}, {{ number_format($po12*100, 1) }}],
                borderWidth: 2
            }]
            }
        });
    </script>

</body>
</html>