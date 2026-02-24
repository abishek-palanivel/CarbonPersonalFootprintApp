# 🚀 How to Run the Application

## Step 1: Create Database

Open MySQL Command Line or MySQL Workbench and run:

```sql
CREATE DATABASE `db-carboncalc`;
```

## Step 2: Verify Database Password

Check `src/main/resources/application.properties` line 13:
```properties
spring.datasource.password=abi@1234
```

If your MySQL password is different, update it.

## Step 3: Run the Application

In your terminal (PowerShell), run:

```bash
mvn spring-boot:run
```

Wait for the message: `Started CarbonPersonalFootprintAppApplication`

## Step 4: Open Browser

Go to: **http://localhost:8089**

You should see the home page with Login and Register buttons.

---

## 🔐 Test Login

### User Account
- Email: `user@cpfa.com`
- Password: `user123`

### Admin Account
- Email: `admin@cpfa.com`
- Password: `admin123`

---

## ✅ What to Test

1. **Home Page** - Should load without 403 error
2. **Register** - Create a new account
3. **Login as User** - Test user features
4. **Login as Admin** - Test admin features
5. **Calculate Emissions** - Add carbon log
6. **View History** - See your logs
7. **Take Survey** - Submit survey

---

## 🐛 If You Get Errors

### 403 Forbidden Error
- Restart the application: Stop (Ctrl+C) and run `mvn spring-boot:run` again

### Database Connection Error
- Make sure MySQL is running
- Check username/password in application.properties
- Verify database `db-carboncalc` exists

### Port 8089 Already in Use
- Stop the previous instance
- Or change port in application.properties to 8090

---

## 📝 Notes

- The application uses **session-based authentication**
- Passwords are encrypted with **BCrypt**
- Default users are created automatically from `data.sql`
- All routes are now accessible (Spring Security allows all)

---

**Ready to test! 🎉**
