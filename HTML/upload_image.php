<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Upload</title>
</head>
<body>
    <h1>Upload Project Image</h1>
    <form action="upload_image.php" method="post" enctype="multipart/form-data">
        <label for="title">Project Title:</label>
        <input type="text" name="title" id="title" required><br><br>
        
        <label for="description">Project Description:</label>
        <textarea name="description" id="description" required></textarea><br><br>
        
        <label for="image">Select image to upload:</label>
        <input type="file" name="image" id="image" accept="image/*" required>
        <input type="hidden" name="default_image" value="WIN_20250417_10_51_38_Pro.jpg">
        <br><br>
        
        <input type="submit" value="Upload Image">
    </form>
</body>
</html>
