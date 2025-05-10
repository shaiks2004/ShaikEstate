
  new Chart(document.getElementById('propertyStatusChart'), {
    type: 'doughnut',
    data: {
      labels: ['Available', 'Booked'],
      datasets: [{
        label: 'Properties',
        data: [12, 8],
        backgroundColor: ['#e4ba7a', '#124076']
      }]
    }
  });

  new Chart(document.getElementById('userStatusChart'), {
    type: 'doughnut',
    data: {
      labels: ['Active', 'Inactive'],
      datasets: [{
        label: 'Users',
        data: [30, 5],
        backgroundColor: ['#e4ba7a', '#124076']
      }]
    }
  });

  new Chart(document.getElementById('soldStatusChart'), {
    type: 'doughnut',
    data: {
      labels: ['Sold', 'Unsold'],
      datasets: [{
        label: 'Sold',
        data: [10, 15],
        backgroundColor: ['#e4ba7a', '#124076']
      }]
    }
  });
