const ctx = document.getElementById('equipmentChart');

new Chart(ctx, {
    type: 'doughnut',
    data: {
        labels: ['Em uso', 'Disponível', 'Manutenção', 'Inativo'],
        datasets: [{
            data: [78, 52, 18, 8],
            backgroundColor: [
                '#0047b3',
                '#39b86f',
                '#f0a53a',
                '#c7c7c7'
            ]
        }]
    },
    options: {
        responsive: true,
        plugins: {
            legend: {
                position: 'right'
            }
        }
    }
});