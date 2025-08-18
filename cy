<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Grade Calculator</title>
  <style>
    * { box-sizing: border-box; }

    body {
      margin: 0;
      font-family: system-ui, -apple-system, Segoe UI, Roboto, Helvetica, Arial, sans-serif;
      line-height: 1.5;
      background: #f6f7fb;
      color: #222;
    }

    .wrapper {
      max-width: 720px;
      margin: 48px auto;
      padding: 0 16px;
    }

    h1 {
      margin: 0 0 16px;
      font-size: 2.25rem;
      text-align: center;
    }

    .card {
      background: #fff;
      border-radius: 14px;
      box-shadow: 0 8px 24px rgba(0,0,0,0.08);
      padding: 20px;
    }

    .row {
      display: flex;
      align-items: center;
      gap: 12px;
      flex-wrap: wrap;
      justify-content: center;
    }

    label {
      min-width: 220px;
    }

    input[type="number"] {
      width: 140px;
      padding: 8px 10px;
      border: 1px solid #d5d7df;
      border-radius: 8px;
      font-size: 1rem;
    }

    button {
      padding: 9px 14px;
      border: 0;
      border-radius: 8px;
      background: #2f6fed;
      color: #fff;
      font-weight: 600;
      cursor: pointer;
    }

    button:hover { filter: brightness(1.05); }

    .result {
      margin-top: 14px;
      min-height: 24px; /* keeps layout steady before result shows */
      text-align: center;
      font-weight: 500;
    }
  </style>
</head>
<body>
  <main class="wrapper">
    <!-- Level 1 heading as required -->
    <h1>Grade Calculator</h1>

    <div class="card">
      <div class="row">
        <label id="marksLabel" for="marks">Enter your marks (0-100):</label>
        <input
          type="number"
          id="marks"
          min="0"
          max="100"
          placeholder="e.g., 86"
          aria-labelledby="marksLabel"
        />
        <button id="getGradeButton">Convert</button>
      </div>

      <p id="gradeResult" class="result"></p>
    </div>
  </main>

  <script>
    document.getElementById("getGradeButton").addEventListener("click", function () {
      const marksInput = document.getElementById("marks").value.trim();
      let message = "";

      if (marksInput === "") {
        message = "Enter any marks to get the grades.";
      } else {
        const marks = parseInt(marksInput, 10);

        if (isNaN(marks) || marks < 0 || marks > 100) {
          message = "The marks should be between 0-100.";
        } else if (marks >= 90) {
          message = For marks ${marks}, your grade is A;
        } else if (marks >= 80) {
          message = For marks ${marks}, your grade is B;
        } else if (marks >= 70) {
          message = For marks ${marks}, your grade is C;
        } else if (marks >= 60) {
          message = For marks ${marks}, your grade is D;
        } else {
          message = For marks ${marks}, your grade is F;
        }
      }

      document.getElementById("gradeResult").innerText = message;
    });
  </script>
</body>
</html>
