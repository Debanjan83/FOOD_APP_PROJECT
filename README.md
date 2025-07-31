# 🍽️ Foodie - Food Ordering Web Application

A dynamic web-based food ordering platform developed using **Java (JSP, Servlet)**, **MySQL**, and **Bootstrap**. This application allows clients to browse food items, place orders, and view their order history. Admins can manage food items and track orders.

---

## 🌟 Features

### 👥 User Roles

- **Client**
  - Register/Login
  - Search and view food items
  - Add items to cart
  - Place orders
  - View order history and billing

- **Admin**
  - Manage food categories
  - Add, edit, delete food items
  - View and manage orders

---

## 🧰 Tech Stack

| Layer         | Technology                        |
|--------------|-----------------------------------|
| Frontend     | HTML, CSS, Bootstrap, JSP         |
| Backend      | Java Servlet, JSP                 |
| Database     | MySQL                             |
| Architecture | MVC (Model-View-Controller)       |

---

## 🗂️ Project Structure

FOOD_APP_PROJECT/
│
├── src/
│ ├── com.dao/ # DAO classes for database interaction
│ ├── com.db/ # DB connection utility
│ ├── com.entity/ # Data Transfer Objects (DTO)
│
├── WebContent/
│ ├── admin/ # Admin-specific JSP pages
│ ├── client/ # Client-facing pages (order list, billing, etc.)
│ ├── css/ # Stylesheets
│ ├── images/ # Food images
│ ├── SearchClientFood.jsp # Food search functionality
│ ├── OrderList.jsp # Display list of client orders
│ ├── Billing.jsp # Billing summary
│ ├── index.jsp, login.jsp # Main pages
│
├── database/
│ └── foodie.sql # MySQL schema and sample data
│
└── README.md


---

## 🏃‍♂️ How to Run the Project

### 🔧 Prerequisites

- Java JDK 8+
- Apache Tomcat 8.5+
- MySQL Server
- Eclipse/NetBeans/IntelliJ

### 🚀 Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone https://github.com/Debanjan83/FOOD_APP_PROJECT.git
2. Import into Eclipse

File > Import > Dynamic Web Project > Select the folder

3. Configure the Database

Create a database named foodie

Import the SQL script from database/foodie.sql

4. Update DB Connection

Edit DBConnect.java in com.db with your MySQL credentials

5. Run the Application

Deploy on Tomcat and access http://localhost:8080/FOOD_APP_PROJECT

🧾 Database Tables
register – Stores client credentials and details

category – Stores food categories

food – Stores food item details

cart – Tracks food items added by users

orders – Stores order information

billing – Stores billing and payment summaries

📷 Screenshots
<details> <summary>🍜 Food Listing Page</summary> <img src="https://via.placeholder.com/700x400?text=Food+Listing+Screenshot" alt="Food List"> </details> <details> <summary>🧾 Order Summary</summary> <img src="https://via.placeholder.com/700x400?text=Order+Summary+Screenshot" alt="Order List"> </details> <details> <summary>💳 Billing Page</summary> <img src="https://via.placeholder.com/700x400?text=Billing+Page+Screenshot" alt="Billing"> </details>
Replace placeholders with your own screenshots stored in a /screenshots or /assets folder.

✨ Highlights
Role-based dashboard

Clean UI with Bootstrap

DAO and DTO separation for clean code

MVC architecture

Dynamic order management

🤝 Contribution
Contributions, suggestions, and improvements are welcome!
Feel free to fork and submit a pull request.

📜 License
This project is open-source under the MIT License.

👨‍💻 Author
Debanjan Pal
📧 debanjanpal79611@gmail.com
🌐 GitHub
