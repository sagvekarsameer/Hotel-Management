# Hotel-Taj (Hotel Management Project)

## 📌 Project Overview

Hotel-Taj is a web-based hotel management system developed using **Advanced Java (JSP, Servlets)** as part of our academic coursework.
The application streamlines booking processes, staff coordination, and administrative controls to provide an efficient hotel management experience for administrators, staff, and customers.

## 👥 Team Members

- **Sameer** – Project Flow Designer  
- **Sudeepta** – Backend & Database Integration  
- **Raju** – UI/UX Developer

## 🚪 Portals & Functionalities

### 1. 🛠 Admin Portal
- Secure admin login
- Manage customer bookings
- Control room categories, pricing & availability
- Vendor & service management
- Generate reports and analytics

### 2. 🧳 User Portal
- User registration/login
- Browse rooms and hotel services
- Book rooms with room-type/date selection
- Simulated payment integration
- View booking history and status

### 3. 🧹 Staff Portal
- Staff login with assigned roles
- Update service/task statuses (e.g., housekeeping)
- View today's tasks and shift details
- Notification system via bell icon for admin messages
- Read-only dashboard with staff info (editable only by admin)

## 🗂 Project Structure

We developed and deployed two separate modules:

- `admin_hotel_taj` — Admin module  
- `hotel_taj` — User module

> Both modules use the **same MySQL database**, ensuring seamless integration and data consistency across the system.

## 🛠 Technologies Used

| Layer      | Technologies |
|------------|--------------|
| **Frontend** | HTML, CSS |
| **Backend**  | Java (JSP, Servlet), JavaScript |
| **Database** | MySQL (XAMPP) |
| **Server**   | Apache Tomcat |
| **Tools**    | IntelliJ IDEA, XAMPP, Razorpay API |

## ⚙️ How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/sagvekarsameer/Hotel-Management.git

# How to run   
Open the project using IntelliJ IDEA.

Configure Apache Tomcat server in the IDE.

Setup MySQL using XAMPP and import the required SQL schema.

Run both modules (admin_hotel_taj and hotel_taj) by deploying them on Tomcat.

Note: This project uses Maven Archetype, not a standalone WAR file.

We successfully developed a working hotel management system simulating real-world use cases. 
The project enhanced our understanding of Java web technologies and team collaboration in a distributed development environment.
