# 🧪 Test Scenarios: SwagLabs Login Feature

**Project:** SwagLabs E-Commerce (SauceDemo)
**Module:** User Authentication
**Version:** 1.0
**Author:** QA Engineer
**Date:** 2026-01-11

---

## 📋 1. Introduction
This document outlines the high-level test scenarios for the Login functionality of the SwagLabs application. The goal is to verify that authorized users can access the system while unauthorized access is prevented.

**Test Data References:**
- Standard User: `standard_user`
- Locked User: `locked_out_user`
- Password: `secret_sauce`

---

## 🚀 2. Test Scenarios Master List

### 🟢 Priority 1: Critical Path (Happy Path)
*These scenarios verify the core functionality works as expected.*

| ID | Scenario Title | Description | Priority |
| :--- | :--- | :--- | :--- |
| **TS_01** | **Verify Valid Login** | Ensure user can login with valid `standard_user` credentials. | P1 (Critical) |
| **TS_02** | **Verify Redirection** | Ensure user is redirected to `inventory.html` after login. | P1 (Critical) |
| **TS_03** | **Verify Logout** | Ensure user can successfully logout and return to login page. | P2 (High) |

### 🔴 Priority 2: Negative Testing (Error Handling)
*These scenarios verify that the system handles invalid inputs correctly.*

| ID | Scenario Title | Description | Priority |
| :--- | :--- | :--- | :--- |
| **TS_05** | **Empty Password** | Verify error message displays when Password field is empty. | P2 (High) |
| **TS_06** | **Empty Username** | Verify error message displays when Username field is empty. | P2 (High) |
| **TS_07** | **Invalid Username** | Verify error message for non-existent username. | P2 (High) |
| **TS_09** | **Locked Out User** | **(Security)** Verify system blocks login for `locked_out_user`. | P1 (Critical) |

### 🟠 Priority 3: Edge Cases
*These scenarios verify boundary values and specific user constraints.*

| ID | Scenario Title | Description | Priority |
| :--- | :--- | :--- | :--- |
| **TS_10** | **Trim Whitespace** | Verify that leading/trailing spaces in username are ignored. | P3 (Medium) |
| **TS_11** | **SQL Injection Attempt** | Verify login fields reject basic SQL strings (`' OR 1=1 --`). | P1 (Critical) |