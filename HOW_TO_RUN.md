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

## Step 3: Build and Run

In your terminal (PowerShell), run:

```bash
mvn clean spring-boot:run
```

Wait for: `Started CarbonPersonalFootprintAppApplication`

## Step 4: Open Browser

Go to: **http://localhost:8089**

You should see the home page with Login and Register buttons.

---

## 🔐 Login Credentials

### User Account
- Email: `user@cpfa.com`
- Password: `user123`

### Admin Account
- Email: `admin@cpfa.com`
- Password: `admin123`

---

## ✅ Features to Test

1. **Home Page** - Beautiful gradient design
2. **Register** - Create new account
3. **User Login** - Access user dashboard (blue theme)
4. **Calculate Emissions** - Enter data and see results
5. **View History** - See all your logs
6. **Take Survey** - Submit lifestyle survey
7. **Admin Login** - Access admin dashboard (red theme)
8. **View Users** - See all registered users
9. **View Logs** - Monitor all emissions
10. **View Surveys** - Check responses

---

## 🐛 Troubleshooting

### Database Connection Error
- Verify MySQL is running
- Check credentials in application.properties
- Ensure database exists

### Port Already in Use
- Stop previous instance (Ctrl+C)
- Or change port to 8090

### Application Won't Start
```bash
mvn clean install
mvn spring-boot:run
```

---

## 📝 Technical Info

- **Packaging:** WAR for JSP support
- **Authentication:** Session-based
- **Database:** MySQL with JPA
- **View:** JSP pages

---

**Enjoy! 🎉**
