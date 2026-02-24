# Carbon Personal Footprint App

A Spring Boot web application for tracking and calculating personal carbon emissions.

## Features

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

## Technologies Used
- Spring Boot 4.0.1
- Spring Security
- Spring Data JPA
- MySQL Database
- JSP (JavaServer Pages)
- Lombok
- BCrypt Password Encryption

## Setup Instructions

### Prerequisites
- Java 17 or higher
- MySQL 8.0 or higher
- Maven

### Database Setup
1. Create a MySQL database:
```sql
CREATE DATABASE `db-carboncalc`;
```

2. Update database credentials in `src/main/resources/application.properties`:
```properties
spring.datasource.username=root
spring.datasource.password=your_password
```

### Running the Application
1. Clone the repository
2. Navigate to project directory
3. Run Maven command:
```bash
mvn spring-boot:run
```

4. Access the application at: `http://localhost:8089`

## Default Admin Credentials
- Email: admin@cpfa.com
- Password: admin123

## Default User Credentials
- Email: user@cpfa.com
- Password: user123

## User Roles
- **USER**: Can calculate emissions, view history, take surveys
- **ADMIN**: Full access to all users, logs, and surveys

## Carbon Emission Calculations

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

## Project Structure
```
src/
├── main/
│   ├── java/com/cpfa/
│   │   ├── config/          # Security & JWT configuration
│   │   ├── controller/      # Web & REST controllers
│   │   ├── dto/             # Data Transfer Objects
│   │   ├── entity/          # JPA entities
│   │   ├── enums/           # Enumerations
│   │   ├── repository/      # Data repositories
│   │   └── service/         # Business logic
│   ├── resources/
│   │   └── application.properties
│   └── webapp/WEB-INF/views/  # JSP pages
└── test/
```

## API Endpoints

### Authentication
- POST `/register` - Register new user
- POST `/login` - User login

### User Endpoints
- GET `/user/dashboard` - User dashboard
- GET `/user/calculate` - Calculate emissions form
- POST `/user/calculate` - Submit calculation
- GET `/user/history` - View emission history
- GET `/user/survey` - Survey form
- POST `/user/survey` - Submit survey

### Admin Endpoints
- GET `/admin/dashboard` - Admin dashboard
- GET `/admin/users` - View all users
- GET `/admin/logs` - View all emission logs
- GET `/admin/surveys` - View all surveys

## License
This project is for educational purposes.
