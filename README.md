# Flutter Store App

This is a basic Flutter store application that displays a list of products fetched from a fake API (`https://fakestoreapi.com`). Users can view products, add them to the cart, and view the cart with selected items.

## Features:

- **Product Listing**: Displays a grid of products with their images, prices, and ratings.
- **Add to Cart**: Allows users to add products to the cart from the product list.
- **Cart View**: Displays items added to the cart along with their prices.
- **Sorting**: Users can toggle between 1-column and 2-column grid views for the product listing.

## Screens:

1. **Products Screen**: Displays a grid view of products fetched from the API. Each product shows the image, title, price, and rating. Users can add products to the cart from this screen.
2. **Cart Screen**: Shows the products that were added to the cart, along with their titles, descriptions, and prices.

## Widgets:

- **ProductWidget**: A widget to display individual products in a grid view with an "Add to Cart" button.
- **CartWidget**: A widget to display individual cart items.
- **CartScreen**: A screen that lists all products added to the cart.
- **ProductsScreen**: The main screen displaying the product grid and a button to navigate to the cart.

## API:

This app fetches data from the [Fake Store API](https://fakestoreapi.com) for products including product images, titles, prices, descriptions, categories, and ratings.

## How to Run:

1. Clone this repository:
   ```bash
   git clone https://github.com/Mahmoud664h/flutter_store_app.git
   ```
