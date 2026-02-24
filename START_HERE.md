# 🚀 START HERE - Carbon Personal Footprint App

## ⚡ Quick Setup (3 Steps)

### Step 1: Setup Database
Open MySQL and run:
```sql
CREATE DATABASE `db-carboncalc`;
```

Or use the provided script:
```bash
mysql -u root -p < setup-database.sql
```

### Step 2: Update Password (if needed)
Edit `src/main/resources/application.properties` line 13:
```properties
spring.datasource.password=YOUR_MYSQL_PASSWORD
```

### Step 3: Run Application
```bash
mvn spring-boot:run
```

## 🌐 Access Application
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

## ✅ What's Working

### User Portal Features:
✓ User registration and login  
✓ Calculate carbon emissions (transport, food, energy)  
✓ View emission history with detailed breakdown  
✓ Take lifestyle surveys  
✓ Personal dashboard with statistics  
✓ Secure password encryption  

### Admin Portal Features:
✓ Admin dashboard with system-wide stats  
✓ View all registered users  
✓ Monitor all carbon emission logs  
✓ View all survey responses  
✓ Role-based access control  

---

## 📊 Carbon Calculation Formula

### Transport Emissions (kg CO₂/km)
- Car: 0.21
- Bus: 0.089
- Train: 0.041
- Bike/Walk: 0.0

### Food Emissions (kg CO₂/day)
- Non-Vegetarian: 7.19
- Vegetarian: 3.81
- Vegan: 2.89

### Energy Emissions
- 0.92 kg CO₂ per kWh

---

## 🔧 Troubleshooting

### Port Already in Use
Change port in `application.properties`:
```properties
server.port=8090
```

### Database Connection Error
1. Verify MySQL is running
2. Check username/password in application.properties
3. Ensure database `db-carboncalc` exists

### Application Won't Start
```bash
mvn clean install
mvn spring-boot:run
```

---

## 📁 Project Structure

```
src/
├── main/
│   ├── java/com/cpfa/
│   │   ├── config/          # Security configuration
│   │   ├── controller/      # Web controllers
│   │   │   ├── WebController.java      # Home, login, register
│   │   │   ├── UserController.java     # User features
│   │   │   └── AdminController.java    # Admin features
│   │   ├── dto/             # Data transfer objects
│   │   ├── entity/          # Database entities
│   │   ├── repository/      # Data access layer
│   │   └── service/         # Business logic
│   ├── resources/
│   │   ├── application.properties
│   │   └── data.sql         # Initial data (admin & user)
│   └── webapp/WEB-INF/views/  # JSP pages
│       ├── index.jsp
│       ├── login.jsp
│       ├── register.jsp
│       ├── user-dashboard.jsp
│       ├── calculate.jsp
│       ├── result.jsp
│       ├── history.jsp
│       ├── survey.jsp
│       ├── admin-dashboard.jsp
│       ├── admin-users.jsp
│       ├── admin-logs.jsp
│       └── admin-surveys.jsp
```

---

## 🎯 Testing the Application

### As User:
1. Login with user@cpfa.com / user123
2. Go to "Calculate Emissions"
3. Enter: Car, 10km, Non-Veg, 5kWh
4. View result and check history
5. Take a survey

### As Admin:
1. Login with admin@cpfa.com / admin123
2. View dashboard statistics
3. Check all users
4. Monitor carbon logs
5. Review surveys

---

## 🔐 Security Features
- BCrypt password encryption
- Role-based access control (USER/ADMIN)
- Session management
- CSRF protection disabled for development
- Secure route protection

---

## 📤 Push to GitHub
```bash
git push -u origin main
```

---

## 📞 Need Help?
Check these files:
- `README.md` - Full documentation
- `QUICKSTART.md` - Quick reference
- `LOGIN_INFO.txt` - Login credentials
- `setup-database.sql` - Database setup script

---

## ✨ Features Highlights

### Smart Calculations
Real-world emission factors based on scientific data

### Beautiful UI
Modern gradient design with responsive layout

### Secure
Industry-standard password encryption and authentication

### Complete
Full CRUD operations for users, logs, and surveys

### Production Ready
Clean architecture with proper separation of concerns

---

**Enjoy tracking your carbon footprint! 🌍**
