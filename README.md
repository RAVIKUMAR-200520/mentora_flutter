# Mentora_Flutter
Flutter Firebase Project

Mentora is a cross-platform mobile application built using Flutter and Firebase.  
The app allows parents and mentors to interact, manage lessons, sessions, and track progress seamlessly.

---

## Project Flow

1. *Login / Signup*
   - Users authenticate using *Firebase Authentication* (email & password).  
   - On successful login/signup, a *SnackBar* message confirms: "Login Successful" or "Signup Successful".  
   - Users must log in first before accessing any other feature.

2. *Role Selection*
   - After login, users select their role: *Parent* or *Mentor*.  
   - UI contains *cards/buttons* for each role with icons and colors.  
   - Selection determines the next dashboard view.

3. *Parent Screen*
   - Welcome message: "Welcome Parents"  
   - UI displays:
     - *Students* → List of students  
     - *Lessons* → Track lessons  
     - *Sessions* → View scheduled sessions  

4. *Mentor Screen*
   - Welcome message: "Welcome Mentor"  
   - UI displays:
     - *Students* → Manage assigned students  
     - *Lessons* → Create or update lessons  
     - *Sessions* → Schedule or manage sessions  

---

## *Features*

- *Firebase Authentication*: Secure login & signup  
- *SnackBar Feedback*: Success messages for login/signup actions
- *Role-based UI*: Parent or Mentor dashboards    
- *Responsive UI*: Clean minimal UI for all roles  
- *Assets & Resources*: Supports images, icons, logos, and custom fonts  

---
