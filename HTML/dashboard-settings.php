<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Admin Dashboard - Settings</title>
    <link rel="stylesheet" href="../CSS/dashboard-settings-external.css" />
</head>
<body>
    <header>Admin Dashboard - Settings</header>
    <nav>
        <a href="admin_dashboard.php">Dashboard</a>
        <a href="dashboard-property.php">Properties</a>
        <a href="dashboard-user.php">Users</a>
        <a href="dashboard-settings.php">Settings</a>
        <a href="../api/logout.php">Logout</a>
    </nav>
    <main>
        <h1>Settings</h1>
        <div class="content">
            <form id="settings-form">
                <label for="site-title">Site Title:</label><br />
                <input type="text" id="site-title" name="site-title" placeholder="Enter site title" /><br /><br />
                
                <label for="contact-email">Contact Email:</label><br />
                <input type="email" id="contact-email" name="contact-email" placeholder="Enter contact email" /><br /><br />
                
                <label for="theme-color">Theme Color:</label><br />
                <input type="color" id="theme-color" name="theme-color" value="#124076" /><br /><br />
                
                <button type="submit">Save Settings</button>
            </form>
            <script>
                document.getElementById('settings-form').addEventListener('submit', function(event) {
                    event.preventDefault();
                    const siteTitle = document.getElementById('site-title').value.trim();
                    const contactEmail = document.getElementById('contact-email').value.trim();
                    const themeColor = document.getElementById('theme-color').value;

                    if (!siteTitle || !contactEmail || !themeColor) {
                        alert('Please fill in all fields.');
                        return;
                    }

                    fetch('../api/save_settings.php', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/x-www-form-urlencoded',
                        },
                        body: new URLSearchParams({
                            'site_title': siteTitle,
                            'contact_email': contactEmail,
                            'theme_color': themeColor
                        })
                    })
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            alert(data.message);
                        } else {
                            alert('Error: ' + (data.error || 'Unknown error'));
                        }
                    })
                    .catch(error => {
                        alert('Error saving settings: ' + error.message);
                    });
                });

                // Load current settings on page load
                window.addEventListener('DOMContentLoaded', () => {
                    fetch('../api/get_settings.php')
                    .then(response => response.json())
                    .then(data => {
                        if (data.success && data.settings) {
                            document.getElementById('site-title').value = data.settings.site_title || '';
                            document.getElementById('contact-email').value = data.settings.contact_email || '';
                            document.getElementById('theme-color').value = data.settings.theme_color || '#124076';
                        }
                    })
                    .catch(error => {
                        console.error('Error loading settings:', error);
                    });
                });
            </script>
        </div>
    </main>
</body>
</html>
