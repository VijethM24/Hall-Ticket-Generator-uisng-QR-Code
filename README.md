-Hall Ticket Generator using QR Code

Project Overview
This project is a web-based Hall Ticket Generator that allows students to generate their hall tickets using QR codes. It includes two user interfaces: one for the admin and another for the students.

- Admin Panel: The admin can add or delete students, manage courses, and more.
- Student Portal: Students can log in, view a QR code, and scan it to see their hall ticket with a print option.

Technologies Used
- Front-end: HTML, CSS, JavaScript
- Back-end: PHP, MySQL (XAMPP)

Setup Instructions
1. Import the Database:
   - Import the `exam_hall.sql` file into your MySQL database using phpMyAdmin in XAMPP.

2. Run XAMPP Server:
   - Start the XAMPP server (Apache and MySQL).

3. Configure Project Files:
   - Save the project files in the `htdocs` folder of your XAMPP directory.
   - Open your browser and navigate to `http://localhost/{folder_name}` to access the admin login page.

4. Admin Credentials:
   - Username: `vijethm2002@gmail.com`
   - Password: `admin`

5. Student Login:
   - To access the student login page, change the URL from `login.php` to `student.php`.
   - Student Credentials: Same as the admin credentials.

6. View Hall Ticket Manually:
   - To view the hall ticket directly, type `student_panel.php` in the browser's search path.
     
Important Notes
- Ensure your laptop and mobile phone are connected to the same WiFi network for the QR code scanning to work.
- Find your IP Address:
  - Open Command Prompt (`cmd`) and type `ipconfig`.
  - Locate your IPv4 Address.
- Copy the IP address and paste it in `tim.php` to ensure the system points to the correct server.


