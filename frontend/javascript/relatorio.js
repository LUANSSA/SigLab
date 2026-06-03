// ===============================
// MANUTENÇÕES POR STATUS
// ===============================
new Chart(document.getElementById('manutencoesChart'), {
    type: 'doughnut',
    data: {
        labels: [
            'Concluídas',
            'Em Andamento',
            'Aguardando Peças',
            'Canceladas'
        ],
        datasets: [{
            data: [42, 18, 8, 3],
            backgroundColor: [
                '#39b86f',
                '#f0a53a',
                '#4f8cff',
                '#d9534f'
            ],
            borderWidth: 0
        }]
    },
    options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
            legend: {
                position: 'bottom'
            }
        }
    }
});


// ===============================
// EMPRÉSTIMOS POR LABORATÓRIO
// ===============================
new Chart(document.getElementById('emprestimosChart'), {
    type: 'bar',
    data: {
        labels: [
            'Informática',
            'Eletrônica',
            'Eletrotécnica',
            'Manufatura',
            'Química'
        ],
        datasets: [{
            label: 'Empréstimos',
            data: [38, 31, 26, 19, 12],
            backgroundColor: '#0047b3',
            borderRadius: 8
        }]
    },
    options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
            legend: {
                display: false
            }
        },
        scales: {
            y: {
                beginAtZero: true,
                grid: {
                    color: '#eeeeee'
                }
            },
            x: {
                grid: {
                    display: false
                }
            }
        }
    }
});


// ===============================
// EQUIPAMENTOS POR STATUS
// ===============================
new Chart(document.getElementById('equipamentosChart'), {
    type: 'doughnut',
    data: {
        labels: [
            'Disponíveis',
            'Em Uso',
            'Manutenção',
            'Inativos'
        ],
        datasets: [{
            data: [85, 52, 14, 5],
            backgroundColor: [
                '#39b86f',
                '#0047b3',
                '#f0a53a',
                '#c7c7c7'
            ],
            borderWidth: 0
        }]
    },
    options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
            legend: {
                position: 'bottom'
            }
        }
    }
});