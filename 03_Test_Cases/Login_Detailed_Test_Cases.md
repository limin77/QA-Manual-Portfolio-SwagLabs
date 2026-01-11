# 📂 Detailed Test Cases: Login Module

**Module:** Authentication
**Test Suite ID:** SUITE_001
**Pre-conditions:** User is on the Login Page (https://www.saucedemo.com/)

---

| TC ID | Title | Test Data | Steps to Execute | Expected Result |
| :--- | :--- | :--- | :--- | :--- |
| **TC_01** | **Standard User Login** | User: `standard_user`<br>Pass: `secret_sauce` | 1. Enter Username.<br>2. Enter Password.<br>3. Click 'Login'. | User is redirected to `inventory.html` page. |
| **TC_02** | **Locked User Logic** | User: `locked_out_user`<br>Pass: `secret_sauce` | 1. Enter Username.<br>2. Enter Password.<br>3. Click 'Login'. | Error message appears: "Epic sadface: Sorry, this user has been locked out." |
| **TC_03** | **Empty Password Validation** | User: `standard_user`<br>Pass: *(Empty)* | 1. Enter Username.<br>2. Leave Password empty.<br>3. Click 'Login'. | Error message appears: "Epic sadface: Password is required" |
| **TC_04** | **Performance Glitch Check** | User: `performance_glitch_user`<br>Pass: `secret_sauce` | 1. Enter Username.<br>2. Enter Password.<br>3. Click 'Login'. | Login succeeds, but verify page load time < 5 seconds. |
| **TC_05** | **Logout Functionality** | User: `standard_user`<br>Pass: `secret_sauce` | 1. Login successfully.<br>2. Click 'Burger Menu' (Top Left).<br>3. Click 'Logout'. | User is redirected back to the Login Page. |

---

### 📊 Test Execution Record (Manual Run)

| Execution Date | Tester | Status | Bugs Found |
| :--- | :--- | :--- | :--- |
| 2026-01-11 | [Your Name] | ⚠️ Partial Pass | **BUG-001** (Locked User Error Text) |