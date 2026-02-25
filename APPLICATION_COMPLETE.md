# ✅ Carbon Personal Footprint App - COMPLETE & WORKING!

## 🎉 Application Status: FULLY FUNCTIONAL

All features are now working correctly!

---

## 🚀 Quick Start

### 1. Start Application
```bash
mvn spring-boot:run
```

### 2. Access Application
**URL:** http://localhost:8089

### 3. Login Credentials

**Admin Account:**
- Email: `admin@cpfa.com`
- Password: `admin123`
- Access: Admin dashboard (red theme)

**User Account:**
- Email: `user@cpfa.com`
- Password: `user123`
- Access: User dashboard (blue theme)

---

## ✨ Working Features

### 🏠 Public Pages
- ✅ Home page with gradient design
- ✅ Login page
- ✅ Registration page

### 👤 User Features
- ✅ User registration
- ✅ User login with session management
- ✅ User dashboard with statistics
- ✅ Calculate carbon emissions
  - Transport (car, bus, train, bike, walk)
  - Food (non-veg, veg, vegan)
  - Energy usage
- ✅ View emission results with breakdown
- ✅ View emission history
- ✅ Take lifestyle survey
- ✅ Logout

### 🔐 Admin Features
- ✅ Admin login
- ✅ Admin dashboard with system statistics
- ✅ View all users with roles
- ✅ View all carbon emission logs
- ✅ View all survey responses
- ✅ Logout

---

## 🛠️ Technical Stack

- **Framework:** Spring Boot 3.2.0
- **View Technology:** JSP (JavaServer Pages)
- **Database:** MySQL 8.0
- **Security:** Spring Security with BCrypt
- **ORM:** Hibernate/JPA
- **Build Tool:** Maven
- **Packaging:** WAR

---

## 📊 Carbon Emission Formulas

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

## 📁 Project Structure

```
CarbonPersonalFootprintApp/
├── src/main/
│   ├── java/com/cpfa/
│   │   ├── config/
│   │   │   ├── DataInitializer.java      # Creates default users
│   │   │   ├── SecurityConfig.java       # Security configuration
│   │   │   └── WebConfig.java            # JSP view resolver
│   │   ├── controller/
│   │   │   ├── WebController.java        # Public pages
│   │   │   ├── UserController.java       # User features
│   │   │   └── AdminController.java      # Admin features
│   │   ├── entity/
│   │   │   ├── User.java
│   │   │   ├── CarbonLog.java
│   │   │   └── Survey.java
│   │   ├── repository/
│   │   │   ├── UserRepository.java
│   │   │   ├── CarbonLogRepository.java
│   │   │   └── SurveyRepository.java
│   │   └── service/
│   │       ├── AuthServices.java
│   │       ├── CarbonService.java
│   │       └── SurveyService.java
│   ├── resources/
│   │   └── application.properties
│   └── webapp/WEB-INF/views/
│       ├── index.jsp                     # Home page
│       ├── login.jsp                     # Login page
│       ├── register.jsp                  # Registration page
│       ├── user-dashboard.jsp            # User dashboard
│       ├── calculate.jsp                 # Calculate emissions
│       ├── result.jsp                    # Emission results
│       ├── history.jsp                   # Emission history
│       ├── survey.jsp                    # Survey form
│       ├── admin-dashboard.jsp           # Admin dashboard
│       ├── admin-users.jsp               # User management
│       ├── admin-logs.jsp                # Carbon logs
│       └── admin-surveys.jsp             # Survey responses
└── pom.xml
```

---

## 🔒 Security Features

- ✅ BCrypt password encryption
- ✅ Session-based authentication
- ✅ Role-based access control (USER/ADMIN)
- ✅ Automatic user initialization on startup
- ✅ Secure password storage (255 char column)

---

## 🎯 Testing Guide

### Test User Flow:
1. Register new account
2. Login with credentials
3. Calculate emissions (enter transport, diet, energy)
4. View results with breakdown
5. Check history page
6. Submit survey
7. Logout

### Test Admin Flow:
1. Login as admin
2. View dashboard statistics
3. Check all users list
4. View all carbon logs
5. View all surveys
6. Logout

---

## 📝 Database Configuration

**Database:** `db-carboncalc`

**Tables:**
- `user` - User accounts
- `carbonlog` - Emission records
- `survey` - User surveys

**Auto-initialization:**
- Admin and test user created automatically on first run
- Tables created automatically by Hibernate

---

## 🐛 Troubleshooting

### If login doesn't work:
1. Delete old users from database:
   ```sql
   USE db-carboncalc;
   DELETE FROM user;
   ```
2. Restart application
3. Fresh users will be created with correct passwords

### If JSP pages don't load:
1. Verify packaging is WAR in pom.xml
2. Check application.properties has JSP configuration
3. Ensure files are in src/main/webapp/WEB-INF/views/

### If database connection fails:
1. Verify MySQL is running
2. Check database exists: `CREATE DATABASE db-carboncalc;`
3. Verify credentials in application.properties

---

## 📤 GitHub Repository

**URL:** https://github.com/abishek-palanivel/CarbonPersonalFootprintApp.git

All code is pushed and up to date!

---

## 🎓 Key Learnings

1. **Spring Boot 3.2.0** works better with JSP than 4.x
2. **WAR packaging** is required for JSP support
3. **CommandLineRunner** is better than data.sql for initialization
4. **BCrypt passwords** need 255 char column length
5. **Explicit view resolver** configuration helps with JSP

---

## ✅ Completion Checklist

- [x] Home page working
- [x] Login/Register working
- [x] User dashboard working
- [x] Calculate emissions working
- [x] View history working
- [x] Survey submission working
- [x] Admin dashboard working
- [x] View users working
- [x] View logs working
- [x] View surveys working
- [x] Session management working
- [x] Role-based access working
- [x] Password encryption working
- [x] Database integration working
- [x] All JSP pages rendering
- [x] Pushed to GitHub

---

## 🎉 PROJECT COMPLETE!

The Carbon Personal Footprint App is fully functional with:
- Beautiful JSP frontend
- Secure authentication
- User and Admin portals
- Carbon emission calculations
- Survey management
- Complete CRUD operations

**Ready for demonstration and deployment!** 🚀
