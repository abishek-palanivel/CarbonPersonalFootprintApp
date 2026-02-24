# Carbon Personal Footprint App

A Spring Boot web application for tracking and calculating personal carbon emissions.

## 🚀 Quick Start

### 1. Setup Database
```sql
CREATE DATABASE `db-carboncalc`;
```

Or use the provided script:
```bash
mysql -u root -p < setup-database.sql
```

### 2. Update Password
Edit `src/main/resources/application.properties`:
```properties
spring.datasource.password=YOUR_MYSQL_PASSWORD
```

### 3. Run Application
```bash
mvn spring-boot:run
```

### 4. Access Application
Open browser: **http://localhost:8089**

---

## 👤 Login Credentials

### Regular User
- **Email:** user@cpfa.com
- **Password:** user123

### Administrator
- **Email:** admin@cpfa.com
- **Password:** admin123

---

## ✨ Features

### User Features
- User registration and login
- Calculate carbon emissions based on:
  - Transportation mode and distance
  - Diet type
  - Energy usage
- View emission history
- Take lifestyle surveys
- Dashboard with statistics

### Admin Features
- View all users
- Monitor all carbon emission logs
- View all survey responses
- Dashboard with system-wide statistics

---

## 🛠️ Technologies Used
- Spring Boot 4.0.1
- Spring Security
- Spring Data JPA
- MySQL Database
- JSP (JavaServer Pages)
- Lombok
- BCrypt Password Encryption

---

## 📊 Carbon Emission Calculations

### Transport Emissions (kg CO₂ per km)
- Car: 0.21
- Bus: 0.089
- Train: 0.041
- Bike: 0.0
- Walk: 0.0

### Food Emissions (kg CO₂ per day)
- Non-Vegetarian: 7.19
- Vegetarian: 3.81
- Vegan: 2.89

### Energy Emissions
- 0.92 kg CO₂ per kWh

---

## 📁 Project Structure
```
src/
├── main/
│   ├── java/com/cpfa/
│   │   ├── config/          # Security configuration
│   │   ├── controller/      # Web controllers
│   │   ├── entity/          # JPA entities
│   │   ├── repository/      # Data repositories
│   │   └── service/         # Business logic
│   ├── resources/
│   │   ├── application.properties
│   │   └── data.sql         # Initial data
│   └── webapp/WEB-INF/views/  # JSP pages
└── test/
```

---

## 🔧 Troubleshooting

### Port Already in Use
Change port in `application.properties`:
```properties
server.port=8090
```

### Database Connection Error
1. Verify MySQL is running
2. Check username/password
3. Ensure database exists

### Application Won't Start
```bash
mvn clean install
mvn spring-boot:run
```

---

## 📄 License
This project is for educational purposes.

