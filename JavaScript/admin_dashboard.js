function filterTableByColumn(inputId, tableBodyId, columnIndex) {
    const input = document.getElementById(inputId);
    const filter = input.value.toLowerCase();
    const tableBody = document.getElementById(tableBodyId);
    const rows = tableBody.getElementsByTagName('tr');

    for (let i = 0; i < rows.length; i++) {
        const row = rows[i];
        const cells = row.getElementsByTagName('td');
        if (cells.length > columnIndex) {
            const cellText = cells[columnIndex].textContent.toLowerCase();
            if (cellText.indexOf(filter) > -1) {
                row.style.display = '';
            } else {
                row.style.display = 'none';
            }
        }
    }
}
