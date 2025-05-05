<?php

// Add at the very top of products.php
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Check if session directory is writable
$sessionPath = ini_get('session.save_path');
if (!is_writable($sessionPath)) {
    die("Session directory ($sessionPath) is not writable");
}

if (session_status() === PHP_SESSION_NONE) {
    if (!session_start()) {
        die('Failed to start session');
    }
}

// Get the selected category from the request
$selected_category = isset($_GET['category']) ? $_GET['category'] : '';

// Build the SQL query based on the selected category
if (!empty($selected_category) && $selected_category !== 'all') {
    $sql = "SELECT * FROM products WHERE category = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $selected_category);
    $stmt->execute();
    $result = $stmt->get_result();
} else {
    $sql = "SELECT * FROM products";
    $result = $conn->query($sql);
}

// Get all unique categories for the filter dropdown
$category_sql = "SELECT DISTINCT category FROM products";
$category_result = $conn->query($category_sql);
$categories = [];
while ($row = $category_result->fetch_assoc()) {
    $categories[] = $row['category'];
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Graduation Products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .card {
            transition: transform 0.3s;
            margin-bottom: 20px;
        }
        .card:hover {
            transform: scale(1.03);
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }
        .card-img-top {
            height: 250px;
            object-fit: contain;
            padding: 15px;
        }
        .category-badge {
            position: absolute;
            top: 10px;
            right: 10px;
        }
        .category-filter {
            margin-bottom: 20px;
            max-width: 300px;
        }
        
        header{
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            background: #fff;
            padding: 0.7rem 9%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            z-index:1000;
            box-shadow: 0.5rem 1rem rgba(0, 0, 0, 0.1);
        }

        header .logo{
            font-size: 2rem;
            color: #333;
            font-weight: bolder;
        }

        header .logo span{
            color: peru;
        }

        header .homehead a{
            font-size: 2rem;
            padding: 0 1.5rem;
            color: #666;

        }

        header .homehead a:hover{
            color: peru;
        }
        header .icon {
            padding-top: 2rem;
        }

        header .icon a{
            font-size: 1.5rem;
            color: peachpuff;
            margin-left: 1.5rem;
            float: right;
        }

        header .icon .ccontainer .shopping img{
            max-width: 3.5rem;
            padding: 0;
            margin: 0;
            margin-left: 1rem;
            float: right;
            bottom: 0;
        }

        header .icon a:hover{
            color: firebrick;
        }

        .icon{
            display: flex;
        }

        header #toggler{
            display: none;
        }

        header .fa-bars{
          font-size:3rem;
          color :#333;
          border-radius: 0.5rem;
          padding: 1rem 1rem;
          cursor: pointer;
          border: .1rem solid rgba(0, 0, 0, 0.3);  
          display: none;
        }
        
        footer{
            font-style: italic;
            font-weight: bold;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            background-color: rgba(255,255,255,0.1);
            position: relative;
            top: 100%;
            z-index: 5000;
            left: 5.28%;
            max-width: 94.7%;
        }

        .footerNav ul li{
            list-style-type: none;
        }

        .footerContain{
            width: 100%;
            padding: 70px 30px 20px;
        }

        .socialIcon{
            box-shadow: 0 0.5rem 0.8rem rgba(0,0,0,0.9);
            color: white;
            display: flex;
            justify-content: center;
            background-color: white;
            border-radius: 50px;
        }

        .socialIcon a{
            background-color: white;
            padding: 10px;
            text-decoration: none;

        }

        .socialIcon a i{
            margin: 10px;
            padding: 10px;
            max-width: 100px;
            font-size: 3em;
            color: black;
            opacity: 0.9;
        }

        .socialIcon a:hover{
            color: white;
            transition: 0.5s;
        }

        .socialIcon a:hover i{
            color: white;
            transition: 0.5s;
            background-color: black;
            border-radius: 50%;
        }

        .footerNav{
            margin: 30px 0;
        }

        .footerNav ul{
            display: flex;
            justify-content: center;
        }

        .footerNav ul li a{
            color: white;
            margin: 20px;
            text-decoration: none;
            font-size: 1.5em;
            opacity: 0.4;
            transition: 0.5s;
        }

        .footerNav ul li a:hover{
            opacity: 1;
        }

        .footerBottom{
            padding: 2%;
            text-align: center;
            font-size: 2.5rem;
        }

        .footerBottom p{
            color: rgb(117, 121, 236);
        }

        .designer{
            opacity: 0.7;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: bold;
            margin: 0;
        }
    </style>
</head>
<body>
    <header>

        <input type="checkbox" name="toggler" id="toggler">
        <label for="toggler" class="fa fa-bars"></label>

        <a href="home.php" class="logo"><span>Clown Store</span></a>

        <div class="icon">
            <a href="home.php"><i class="fa fa-home"></i></a>
            <a href="./products.php"><i class="fa fa-book"></i></a>
            <a href="./login.php"><span id="login">Login</span></a>
            <a href="./view_cart.php"><i class="fa fa-shopping-cart"></i> 
            <?php if(isset($_SESSION['cart']) && count($_SESSION['cart']) > 0): ?>
                <span class="cart-count"><?php echo array_sum(array_column($_SESSION['cart'], 'quantity')); ?></span>
            <?php endif; ?>
            <a href="./profile.php" class="fa fa-user"></a>
        </div>
    </header><br><br><br>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Graduation Products</h1>
        
        <!-- Category Filter Dropdown -->
        <div class="category-filter">
            <form method="get" action="products.php">
                <div class="input-group">
                    <select name="category" class="form-select" onchange="this.form.submit()">
                        <option value="all" <?php echo empty($selected_category) || $selected_category === 'all' ? 'selected' : ''; ?>>All Categories</option>
                        <?php foreach ($categories as $category): ?>
                            <option value="<?php echo htmlspecialchars($category); ?>" 
                                <?php echo $selected_category === $category ? 'selected' : ''; ?>>
                                <?php echo htmlspecialchars($category); ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                    <?php if (!empty($selected_category) && $selected_category !== 'all'): ?>
                        <a href="products.php" class="btn btn-outline-secondary">Clear Filter</a>
                    <?php endif; ?>
                </div>
            </form>
        </div>
        
        <div class="row">
            <?php while($product = $result->fetch_assoc()): ?>
            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    <span class="badge bg-primary category-badge"><?php echo $product['category']; ?></span>
                    <img src="/ClownStore/Participant/p_asset/images/<?php echo htmlspecialchars($product['product_pic']); ?>" class="card-img-top" alt="<?php echo htmlspecialchars($product['product_name']); ?>">
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $product['product_name']; ?></h5>
                        <p class="card-text"><?php echo $product['product_desc']; ?></p>
                        <p class="text-success fw-bold">RM <?php echo number_format($product['product_price'], 2); ?></p>
                        <form method="post" action="cart.php">
                            <input type="hidden" name="product_id" value="<?php echo $product['product_id']; ?>">
                            <div class="input-group mb-3">
                                <input type="number" name="quantity" value="1" min="1" max="<?php echo $product['stock_quantity']; ?>" class="form-control">
                                <button type="submit" name="add_to_cart" class="btn btn-primary">Add to Cart</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <?php endwhile; ?>
        </div>
    </div>
    <?php include 'footer.php'; ?>
</body>
</html>