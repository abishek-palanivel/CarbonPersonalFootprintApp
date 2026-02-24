# ✅ Testing Checklist

## Before Starting
- [ ] MySQL is running
- [ ] Database `db-carboncalc` created
- [ ] Password updated in application.properties

## Start Application
```bash
mvn spring-boot:run
```

Wait for: `Started CarbonPersonalFootprintAppApplication`

---

## 🧪 User Portal Tests

### 1. Registration
- [ ] Go to http://localhost:8089
- [ ] Click "Register"
- [ ] Fill: Name, Email, Password
- [ ] Submit → Should redirect to login with success message

### 2. User Login
- [ ] Login with: user@cpfa.com / user123
- [ ] Should redirect to user dashboard
- [ ] Check: Welcome message shows "Test User"
- [ ] Check: Statistics cards display

### 3. Calculate Emissions
- [ ] Click "Calculate Emissions"
- [ ] Select: Car, 10km, Non-Veg, 5kWh
- [ ] Submit
- [ ] Check: Result page shows breakdown
  - Transport emission
  - Food emission
  - Energy emission
  - Total emission

### 4. View History
- [ ] Click "View History" from dashboard
- [ ] Check: Previous calculation appears in table
- [ ] Verify: Date, emissions, total are correct

### 5. Take Survey
- [ ] Click "Take Survey"
- [ ] Fill: Transport mode, Diet type, Energy usage
- [ ] Submit
- [ ] Check: Redirects to dashboard with success message

### 6. Logout
- [ ] Click "Logout"
- [ ] Should redirect to home page

---

## 🔐 Admin Portal Tests

### 1. Admin Login
- [ ] Go to http://localhost:8089/login
- [ ] Login with: admin@cpfa.com / admin123
- [ ] Should redirect to admin dashboard (red theme)
- [ ] Check: Welcome shows "Admin"

### 2. Admin Dashboard
- [ ] Check statistics cards:
  - Total Users (should be ≥ 2)
  - Total Logs (from user tests)
  - Total Emissions

### 3. View Users
- [ ] Click "Manage Users"
- [ ] Check: Table shows all users
- [ ] Verify: Admin has "ADMIN" badge (red)
- [ ] Verify: Regular users have "USER" badge (blue)

### 4. View All Logs
- [ ] Click "View All Logs"
- [ ] Check: Table shows all carbon logs
- [ ] Verify: User names appear
- [ ] Verify: Emissions data is correct

### 5. View Surveys
- [ ] Click "View Surveys"
- [ ] Check: Table shows all survey responses
- [ ] Verify: User names and survey data appear

### 6. Admin Logout
- [ ] Click "Logout"
- [ ] Should redirect to home page

---

## 🔒 Security Tests

### 1. Access Control
- [ ] Logout completely
- [ ] Try to access: http://localhost:8089/user/dashboard
- [ ] Should redirect to login (not accessible without login)

### 2. Role-Based Access
- [ ] Login as regular user (user@cpfa.com)
- [ ] Try to access: http://localhost:8089/admin/dashboard
- [ ] Should be denied or redirect (users can't access admin)

### 3. Session Management
- [ ] Login as user
- [ ] Close browser
- [ ] Reopen and go to http://localhost:8089/user/dashboard
- [ ] Should require login again

---

## 🎨 UI/UX Tests

### 1. Responsive Design
- [ ] Resize browser window
- [ ] Check: Layout adjusts properly
- [ ] Check: No horizontal scrolling

### 2. Navigation
- [ ] All links work correctly
- [ ] Back button works
- [ ] Dashboard links navigate properly

### 3. Forms
- [ ] Required fields show validation
- [ ] Submit buttons work
- [ ] Error messages display properly

---

## 📊 Data Validation Tests

### 1. Emission Calculations
Test with known values:
- Car 10km = 2.1 kg CO₂
- Non-Veg diet = 7.19 kg CO₂
- 5 kWh energy = 4.6 kg CO₂
- **Total should be ≈ 13.89 kg CO₂**

### 2. Database Persistence
- [ ] Add emission log
- [ ] Restart application
- [ ] Check: Data still exists in history

### 3. Multiple Users
- [ ] Create 2-3 new user accounts
- [ ] Each user adds logs
- [ ] Login as admin
- [ ] Verify: All users and logs appear

---

## 🐛 Common Issues

### Application won't start
```bash
mvn clean install
mvn spring-boot:run
```

### JSP pages show as text
- Check: application.properties has correct view prefix/suffix
- Verify: JSP files are in src/main/webapp/WEB-INF/views/

### Database errors
- Verify MySQL is running
- Check credentials in application.properties
- Ensure database exists

### Login fails
- Check: data.sql ran successfully
- Verify: User table has admin and user records
- Check: Passwords are BCrypt hashed

---

## ✅ Success Criteria

All features working:
- ✓ User registration and login
- ✓ Carbon emission calculation
- ✓ History tracking
- ✓ Survey submission
- ✓ Admin dashboard
- ✓ User management
- ✓ Log monitoring
- ✓ Survey viewing
- ✓ Role-based access
- ✓ Secure authentication

---

## 📝 Test Results

Date: _______________

| Feature | Status | Notes |
|---------|--------|-------|
| User Registration | ⬜ Pass ⬜ Fail | |
| User Login | ⬜ Pass ⬜ Fail | |
| Calculate Emissions | ⬜ Pass ⬜ Fail | |
| View History | ⬜ Pass ⬜ Fail | |
| Take Survey | ⬜ Pass ⬜ Fail | |
| Admin Login | ⬜ Pass ⬜ Fail | |
| Admin Dashboard | ⬜ Pass ⬜ Fail | |
| View Users | ⬜ Pass ⬜ Fail | |
| View Logs | ⬜ Pass ⬜ Fail | |
| View Surveys | ⬜ Pass ⬜ Fail | |
| Access Control | ⬜ Pass ⬜ Fail | |

---

**Happy Testing! 🎉**
