# 🔗 Requirement Traceability Matrix (RTM)

**Project:** SwagLabs E-Commerce
**Version:** 1.0

| Req ID | Requirement Description | Test Scenario ID | Test Case ID | Status | Defect ID |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **REQ-01** | System must allow valid users to login. | TS_01 | TC_01 | ✅ PASS | - |
| **REQ-02** | System must block locked-out users. | TS_09 | TC_02 | ⚠️ FAIL | [BUG-001](../02_Defects/BUG-001_Login_Error_Message.md) |
| **REQ-03** | System must require a password. | TS_05 | TC_03 | ✅ PASS | - |
| **REQ-04** | System must load within 500ms (Performance). | TS_12 | API_TEST_01 | ✅ PASS | - |
| **REQ-05** | User data must be stored securely. | TS_11 | SQL_VERIFY_01| ✅ PASS | - |