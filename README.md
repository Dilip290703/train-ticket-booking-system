# 🚆 TravelEase: Train Ticket Booking Website

TravelEase is a PHP + MySQL based train ticket booking system that allows users to search, book, and manage train tickets online. It offers a smooth booking process for travelers and powerful management tools for administrators.

---

## 📂 Project Structure
```
TravelEase/
│-- index.php              # Main entry point
│-- config.php             # Application config
│-- conn.php               # Database connection
│-- constants.php          # Constants & settings
│-- DATABASE FILE/
│   └── otrsphp.sql        # MySQL database schema
│-- css/                   # Stylesheets
│-- js/                    # JavaScript files
│-- images/                # Project images
│-- library/               # Bootstrap, jQuery, FontAwesome
│-- PHPMailer/             # Email handling library
```

---

## 🌟 Features
- 👤 **User Accounts** – Register, login, and manage profiles  
- 🔎 **Search Trains** – By source, destination, and travel date  
- 🪑 **Seat Selection** – Interactive booking interface  
- 💳 **Secure Payments** – PayPal / Razorpay integration  
- 🧾 **E-ticket Generation** – PDF tickets with PNR  
- 📂 **Booking History** – View & manage past bookings  
- 🔐 **Admin Dashboard** – Manage trains, users & revenue  

---

## 🛠 Tech Stack
- **Frontend:** HTML, CSS, JavaScript, Bootstrap  
- **Backend:** PHP  
- **Database:** MySQL  
- **Email Notifications:** PHPMailer  
- **Environment:** XAMPP (Apache + MySQL)  

---

## ⚡ Installation & Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/TravelEase.git
   cd TravelEase
   ```

2. Move the project into your XAMPP `htdocs` directory:
   ```
   C:\xampp\htdocs\TravelEase
   ```

3. Import the database:
   - Open [http://localhost/phpmyadmin](http://localhost/phpmyadmin)  
   - Create a new database: `travelease`  
   - Import `DATABASE FILE/otrsphp.sql`  

4. Update DB credentials in `config.php` / `conn.php`:
   ```php
   $servername = "localhost";
   $username   = "root";
   $password   = "";
   $dbname     = "travelease";
   ```

5. Start **Apache & MySQL** in XAMPP.  
6. Run in browser:  
   ```
   http://localhost/TravelEase
   ```

---

## 📸 Screenshots

### 🏠 Homepage

<img width="1073" height="611" alt="image" src="https://github.com/user-attachments/assets/65b0019b-ccf4-455d-9503-8b8bbd948f18" />


### 📂 Passenger Dashboard

<img width="1073" height="616" alt="image" src="https://github.com/user-attachments/assets/ea1afabb-59d4-4141-a1df-eaa8948f9483" />


### 📂 Admin Dashboard


<img width="1073" height="603" alt="image" src="https://github.com/user-attachments/assets/e278558f-078c-45d0-bed5-dc432f6871e5" />

<img width="1073" height="617" alt="image" src="https://github.com/user-attachments/assets/96394062-0aab-44ea-82e1-14300ebcce3f" />

<img width="1073" height="616" alt="image" src="https://github.com/user-attachments/assets/9d7e4d92-77f3-4912-b368-35a39f168d62" />




---


## 🔮 Future Enhancements
- 📱 Mobile app (Android/iOS)  
- 🌐 Multi-modal booking (buses, flights)  
- 📡 Real-time train tracking  
- 🔑 OAuth logins (Google/Facebook)  
- 🤖 AI-powered travel recommendations  

## 📜 License

This project is for educational purposes only. Not intended for clinical use.
