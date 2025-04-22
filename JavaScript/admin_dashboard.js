// Generic toggle function to show/hide filter select dropdowns
function toggleFilterInput(inputId) {
    const filterElement = document.getElementById(inputId);
    if (filterElement.style.display === 'none' || filterElement.style.display === '') {
        filterElement.style.display = 'block';
        filterElement.focus();
    } else {
        filterElement.style.display = 'none';
        filterElement.value = '';
        const tableBodyId = filterElement.getAttribute('data-table-body');
        const columnIndex = parseInt(filterElement.getAttribute('data-column-index'), 10);
        filterTableByColumn(inputId, tableBodyId, columnIndex);
    }
}

// Generic filter function to filter table rows by column value
function filterTableByColumn(inputId, tableBodyId, columnIndex) {
    const filterValue = document.getElementById(inputId).value.toLowerCase();
    const tableBody = document.getElementById(tableBodyId);
    const rows = tableBody.getElementsByTagName('tr');
    for (let i = 0; i < rows.length; i++) {
        const cell = rows[i].getElementsByTagName('td')[columnIndex];
        if (cell) {
            const cellText = cell.textContent || cell.innerText;
            if (filterValue === "" || cellText.toLowerCase() === filterValue) {
                rows[i].style.display = '';
            } else {
                rows[i].style.display = 'none';
            }
        }
    }
}
