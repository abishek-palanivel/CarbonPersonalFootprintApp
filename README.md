# 🌍 Carbon Personal Footprint App

A comprehensive Spring Boot web application for tracking, calculating, and managing personal carbon emissions. This application helps users understand their environmental impact through detailed carbon footprint calculations based on transportation, diet, and energy consumption.

[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.2.0-brightgreen.svg)](https://spring.io/projects/spring-boot)
[![Java](https://img.shields.io/badge/Java-17-orange.svg)](https://www.oracle.com/java/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-blue.svg)](https://www.mysql.com/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

---

## 📋 Table of Contents
- [Features](#-features)
- [Demo Credentials](#-demo-credentials)
- [Technologies](#-technologies-used)
- [Installation](#-installation)
- [Usage](#-usage)
- [Carbon Calculations](#-carbon-emission-calculations)
- [Screenshots](#-screenshots)
- [Project Structure](#-project-structure)
- [Contributing](#-contributing)

---

## ✨ Features

### 👥 User Features
- **User Authentication**
  - Secure registration with BCrypt password encryption
  - Login/logout functionality
  - Session management

- **Carbon Footprint Calculator**
  - Calculate emissions from transportation (car, bus, train, bike, walk)
  - Diet-based emissions (non-vegetarian, vegetarian, vegan)
  - Energy consumption tracking
  - Real-time calculation results

- **Personal Dashboard**
  - View total carbon emissions
  - Track number of calculations
  - Visual statistics and insights
  - Emission history timeline

- **Lifestyle Surveys**
  - Submit detailed lifestyle information
  - Track survey responses
  - Contribute to environmental awareness

- **History Tracking**
  - View all past calculations
  - Filter by date and type
  - Detailed emission breakdowns

### 🔐 Admin Features
- **User Management**
  - View all registered users
  - **Suspend/Activate users** - Control user access
  - **Delete users** - Remove users from system
  - Role-based access control (ADMIN/USER)
  - User status monitoring (ACTIVE/SUSPENDED)

- **System Monitoring**
  - View all carbon emission logs across users
  - Monitor all survey responses
  - System-wide statistics dashboard
  - Total emissions tracking

- **Admin Dashboard**
  - Total users count
  - Total calculations performed
  - Aggregate carbon emissions
  - Quick access to management tools

---

## � Demo Credentials

### Regular User
```
Email: user@cpfa.com
Password: user123
```

### Administrator
```
Email: admin@cpfa.com
Password: admin123
```

---

## �️ Technologies Used

### Backend
- **Spring Boot 3.2.0** - Application framework
- **Spring Security** - Authentication & authorization
- **Spring Data JPA** - Database operations
- **Hibernate** - ORM framework
- **BCrypt** - Password encryption

### Frontend
- **JSP (JavaServer Pages)** - Server-side rendering
- **JSTL** - JSP Standard Tag Library
- **CSS3** - Styling and responsive design
- **JavaScript** - Client-side interactions

### Database
- **MySQL 8.0** - Relational database
- **HikariCP** - Connection pooling

### Build Tools
- **Maven** - Dependency management
- **Lombok** - Boilerplate code reduction

---

## 🚀 Installation

### Prerequisites
- Java 17 or higher
- MySQL 8.0 or higher
- Maven 3.6+

### Step 1: Clone Repository
```bash
git clone https://github.com/abishek-palanivel/CarbonPersonalFootprintApp.git
cd CarbonPersonalFootprintApp
```

### Step 2: Setup Database
```sql
CREATE DATABASE `db-carboncalc`;
```

Or use the provided script:
```bash
mysql -u root -p < setup-database.sql
```

### Step 3: Configure Application
Edit `src/main/resources/application.properties`:
```properties
spring.datasource.url=jdbc:mysql://localhost:3306/db-carboncalc
spring.datasource.username=root
spring.datasource.password=YOUR_MYSQL_PASSWORD
```

### Step 4: Build and Run
```bash
# Clean and build
mvn clean install

# Run application
mvn spring-boot:run
```

### Step 5: Access Application
Open your browser and navigate to:
```
http://localhost:8089
```

---

## 💡 Usage

### For Users
1. **Register** - Create a new account with email and password
2. **Login** - Access your personal dashboard
3. **Calculate** - Enter your daily activities:
   - Transportation mode and distance
   - Diet type
   - Energy consumption
4. **View Results** - See your carbon footprint breakdown
5. **Track History** - Monitor your emissions over time
6. **Take Surveys** - Share your lifestyle information

### For Administrators
1. **Login** with admin credentials
2. **Manage Users** - View, suspend, or delete users
3. **Monitor Logs** - Track all carbon calculations
4. **View Surveys** - Analyze user survey responses
5. **Dashboard** - Get system-wide insights

---

## 📊 Carbon Emission Calculations

### Transportation Emissions (kg CO₂ per km)
| Mode | Emission Factor |
|------|----------------|
| Car | 0.21 kg CO₂/km |
| Bus | 0.089 kg CO₂/km |
| Train | 0.041 kg CO₂/km |
| Bike | 0.0 kg CO₂/km |
| Walk | 0.0 kg CO₂/km |

### Food Emissions (kg CO₂ per day)
| Diet Type | Daily Emissions |
|-----------|----------------|
| Non-Vegetarian | 7.19 kg CO₂ |
| Vegetarian | 3.81 kg CO₂ |
| Vegan | 2.89 kg CO₂ |

### Energy Emissions
- **Electricity**: 0.92 kg CO₂ per kWh

### Formula
```
Total Emissions = Transport Emissions + Food Emissions + Energy Emissions
```

---

## 📸 Screenshots

### User Dashboard
Clean, intuitive interface showing personal carbon footprint statistics.

### Admin Panel
Comprehensive management tools with user control and system monitoring.

### Calculator
Easy-to-use form for calculating daily carbon emissions.

---

## 📁 Project Structure

```
CarbonPersonalFootprintApp/
├── src/
│   ├── main/
│   │   ├── java/com/cpfa/
│   │   │   ├── config/
│   │   │   │   ├── DataInitializer.java      # Auto-create default users
│   │   │   │   ├── SecurityConfig.java       # Spring Security setup
│   │   │   │   └── WebConfig.java            # JSP view resolver
│   │   │   ├── controller/
│   │   │   │   ├── AdminController.java      # Admin endpoints
│   │   │   │   ├── UserController.java       # User endpoints
│   │   │   │   └── WebController.java        # Auth & public pages
│   │   │   ├── entity/
│   │   │   │   ├── User.java                 # User entity
│   │   │   │   ├── CarbonLog.java            # Emission records
│   │   │   │   └── Survey.java               # Survey responses
│   │   │   ├── repository/
│   │   │   │   ├── UserRepository.java
│   │   │   │   ├── CarbonLogRepository.java
│   │   │   │   └── SurveyRepository.java
│   │   │   └── service/
│   │   │       ├── AuthServices.java         # Authentication logic
│   │   │       ├── CarbonService.java        # Carbon calculations
│   │   │       └── SurveyService.java        # Survey management
│   │   ├── resources/
│   │   │   └── application.properties        # App configuration
│   │   └── webapp/WEB-INF/views/
│   │       ├── index.jsp                     # Landing page
│   │       ├── login.jsp                     # Login page
│   │       ├── register.jsp                  # Registration page
│   │       ├── user-dashboard.jsp            # User dashboard
│   │       ├── calculate.jsp                 # Calculator form
│   │       ├── result.jsp                    # Calculation results
│   │       ├── history.jsp                   # Emission history
│   │       ├── survey.jsp                    # Survey form
│   │       ├── admin-dashboard.jsp           # Admin dashboard
│   │       ├── admin-users.jsp               # User management
│   │       ├── admin-logs.jsp                # Emission logs
│   │       └── admin-surveys.jsp             # Survey responses
│   └── test/
├── pom.xml                                   # Maven dependencies
├── setup-database.sql                        # Database setup script
├── reset-users.sql                           # Reset users script
├── HOW_TO_RUN.md                            # Detailed run instructions
├── FEATURES_ADDED.md                        # Feature documentation
└── README.md                                # This file
```

---

## 🔧 Configuration

### Database Configuration
```properties
spring.datasource.url=jdbc:mysql://localhost:3306/db-carboncalc
spring.datasource.username=root
spring.datasource.password=your_password
spring.jpa.hibernate.ddl-auto=update
```

### Server Configuration
```properties
server.port=8089
spring.mvc.view.prefix=/WEB-INF/views/
spring.mvc.view.suffix=.jsp
```

### Security Configuration
- BCrypt password encoding
- Session-based authentication
- Role-based access control (ADMIN/USER)
- CSRF protection disabled for simplicity

---

## 🐛 Troubleshooting

### Port Already in Use
```properties
# Change in application.properties
server.port=8090
```

### Database Connection Error
1. Verify MySQL is running: `sudo systemctl status mysql`
2. Check credentials in `application.properties`
3. Ensure database exists: `SHOW DATABASES;`

### JSP Pages Not Loading
1. Verify WAR packaging in `pom.xml`
2. Check Spring Boot version is 3.2.0
3. Ensure Tomcat Jasper dependency is included

### Login Issues
1. Check console logs for password matching
2. Verify users exist in database
3. Delete old users if needed: `DELETE FROM user;`
4. Restart application to recreate default users

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Author

**Abishek Palanivel**
- GitHub: [@abishek-palanivel](https://github.com/abishek-palanivel)
- Repository: [CarbonPersonalFootprintApp](https://github.com/abishek-palanivel/CarbonPersonalFootprintApp)

---

## 🙏 Acknowledgments

- Spring Boot community for excellent documentation
- Carbon emission factors based on environmental research
- Open source contributors

---

## 📞 Support

If you encounter any issues or have questions:
1. Check the [Troubleshooting](#-troubleshooting) section
2. Review [HOW_TO_RUN.md](HOW_TO_RUN.md) for detailed instructions
3. Open an issue on GitHub

---

## 🌟 Star this repository if you find it helpful!

**Made with ❤️ for a greener planet 🌱**
