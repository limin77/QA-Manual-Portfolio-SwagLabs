# 🐞 Defect Report: BUG-001

**Title:** Login Error Message contains unprofessional phrasing ("Epic sadface")
**Status:** Open
**Severity:** Low (Content/UX)
**Priority:** Low
**Author:** QA Engineer
**Date:** 2026-01-11

---

## 📝 Description
The error message displayed when a locked-out user attempts to login contains the text "Epic sadface". This phrasing does not align with the standard professional tone required for an e-commerce platform.

## 💻 Environment
- **URL:** https://www.saucedemo.com/
- **Browser:** Google Chrome (Latest)
- **OS:** Windows 11

## 🔄 Steps to Reproduce
1. Navigate to the SwagLabs login page.
2. Enter Username: `locked_out_user`
3. Enter Password: `secret_sauce`
4. Click the **Login** button.
5. Observe the error message container.

## 🟢 Expected Result
The error message should be professional and concise.
*Example:* "Error: Access denied. This account has been locked."

## 🔴 Actual Result
The error message displays: "Epic sadface: Sorry, this user has been locked out."

## 📸 Evidence
![Error Screenshot](./bug_001_evidence.png)

---
**Root Cause Analysis (Optional):**
Hardcoded string in the frontend validation logic uses placeholder/informal text.