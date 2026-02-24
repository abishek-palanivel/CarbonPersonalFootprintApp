# Quick Start Guide

## 1. Database Setup
```sql
CREATE DATABASE `db-carboncalc`;
```

## 2. Update Database Password
Edit `src/main/resources/application.properties`:
```properties
spring.datasource.password=YOUR_MYSQL_PASSWORD
```

## 3. Run the Application
```bash
mvn spring-boot:run
```

## 4. Access the Application
Open browser: http://localhost:8089

## 5. Login Credentials

### Admin Account
- Email: admin@cpfa.com
- Password: admin123

### Test User Account
- Email: user@cpfa.com
- Password: user123

### Create Your Own Account
- Click "Register" on homepage
- Fill in your details
- Login with your credentials

## 6. Features to Try

### As User:
1. Calculate your carbon footprint
2. View your emission history
3. Take lifestyle survey

### As Admin:
1. View all users
2. Monitor all carbon logs
3. View survey responses
4. See system statistics

## 7. Push to GitHub
```bash
git add .
git commit -m "Complete Carbon Footprint App with JSP frontend"
git push -u origin main
```

## Troubleshooting

### Port Already in Use
Change port in `application.properties`:
```properties
server.port=8090
```

### Database Connection Error
- Verify MySQL is running
- Check username/password
- Ensure database exists

### JSP Pages Not Loading
- Verify JSP dependencies in pom.xml
- Check view prefix/suffix in application.properties
- Ensure files are in `src/main/webapp/WEB-INF/views/`
