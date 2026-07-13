<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>For Amrutha ❤️</title>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: Arial, sans-serif;
    }

    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      background: linear-gradient(135deg, #ff9a9e, #fad0c4);
      overflow: hidden;
    }

    .card {
      background: white;
      padding: 40px;
      border-radius: 20px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.2);
      text-align: center;
      max-width: 600px;
      animation: fadeIn 2s ease;
    }

    h1 {
      color: #e91e63;
      margin-bottom: 20px;
    }

    p {
      font-size: 20px;
      color: #444;
      line-height: 1.8;
    }

    .heart {
      font-size: 60px;
      animation: heartbeat 1s infinite;
      margin: 20px 0;
    }

    button {
      margin-top: 25px;
      padding: 12px 30px;
      font-size: 18px;
      border: none;
      border-radius: 30px;
      background: #e91e63;
      color: white;
      cursor: pointer;
      transition: 0.3s;
    }

    button:hover {
      background: #c2185b;
      transform: scale(1.05);
    }

    @keyframes heartbeat {
      0%,100% { transform: scale(1); }
      50% { transform: scale(1.2); }
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
        transform: translateY(40px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }
  </style>
</head>
<body>

<div class="card">
  <h1>❤️ A Special Message ❤️</h1>

  <div class="heart">💖</div>

  <p id="message"></p>

  <button onclick="showProposal()">Click Here</button>
</div>

<script>
const text = `I love you, Amrutha.

Today is a beautiful day, and that's why I wanted to express my feelings in a special way.

Amrutha, you make my days brighter and my heart happier.

Will you be my partner and make this journey of life even more beautiful?

❤️ Will you be mine? ❤️`;

let i = 0;

function typeWriter() {
  if (i < text.length) {
    document.getElementById("message").innerHTML += text.charAt(i);
    i++;
    setTimeout(typeWriter, 40);
  }
}

typeWriter();

function showProposal() {
  alert("❤️ I Love You, Amrutha! ❤️\n\nWill you be my partner?");
}
</script>

</body>
</html>
