🧩 HTML, Forms, Tables & JavaScript Practice

This repository contains a collection of HTML and JavaScript mini-projects that demonstrate my understanding of web structure, forms, tables, and basic client-side interactivity.
Each activity builds upon the previous one — introducing HTML fundamentals, form validation, and dynamic web behavior using JavaScript.

📘 Project Overview
1. Ian’s Timetable

A study timetable created using the <table> element with colspan and rowspan attributes to organize data neatly.

Features:

Table captions, headers, and merged cells

Organized into morning, afternoon, and evening sessions

Styled using basic HTML attributes

File: timetable.html

2. Basic HTML Form

A simple form that sends data to an email address using the mailto: attribute.

Features:

<form> with method="post" and action="mailto:..."

<input> and <label> for user entries

Introduces basic data input and submission concepts

File: form.htm

3. Text Entry Form

An improved form with multiple input fields such as name, email, and postal code.

Features:

Single-line text inputs

Semantic labels and placeholders

Enhanced accessibility and layout structure

File: form_text_entry.html

4. Menu Buttons & Drop-down Lists

Introduces more interactive elements such as radio buttons, checkboxes, and select menus.

Features:

Gender and status selection via radio buttons

Drop-down lists for date of birth

Demonstrates grouping and form organization

File: form_menus.html

5. 🔥 JavaScript Form Validation

This project adds JavaScript for dynamic form validation and user interaction.

Features:

Checks for empty input fields before submission

Validates email formats using regular expressions

Displays real-time error messages using the DOM

Prevents form submission if inputs are invalid

File: form_validation.js (linked to HTML form)

Example Functionality:

function validateForm() {
  let name = document.getElementById("name").value;
  let email = document.getElementById("email").value;

  if (name === "" || email === "") {
    alert("All fields must be filled!");
    return false;
  }

  if (!email.includes("@")) {
    alert("Please enter a valid email address!");
    return false;
  }

  return true;
}

🧠 Concepts Learned

HTML structure and semantic elements

Table creation using <table>, <tr>, <th>, and <td>

Form handling with <input>, <label>, and <select>

Basic JavaScript for validation and DOM manipulation

Client-side interactivity (alerts, events, and field checks)

Linking JS files to HTML with <script>

🧰 Tools Used

HTML5 — structure and content

JavaScript (ES6) — interactivity and validation

VS Code — coding and debugging

Web Browser (Chrome/Edge) — testing and previews

📂 Folder Structure
📁 BITE-223-Web-Design
│
├── timetable.html
├── form.htm
├── form_text_entry.html
├── form_menus.html
├── form_validation.js
└── README.md

🌐 Author

Francis Mwalimu (Franco)
📧 [YourEmail@example.com
]
💻 Passionate about front-end development, UI/UX, and interactive web design.
