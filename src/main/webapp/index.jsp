<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>For Amrutha</title>

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:Arial, Helvetica, sans-serif;
        }

        body{
            height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
            background:linear-gradient(135deg,#ff758c,#ff7eb3,#ffd1dc);
            overflow:hidden;
        }

        .card{
            width:90%;
            max-width:650px;
            background:#fff;
            padding:40px;
            border-radius:20px;
            text-align:center;
            box-shadow:0 15px 40px rgba(0,0,0,.2);
            animation:fadeIn 1.5s ease;
        }

        h1{
            color:#e91e63;
            font-size:2.2rem;
            margin-bottom:20px;
        }

        .heart{
            font-size:60px;
            color:red;
            animation:beat 1s infinite;
            margin-bottom:20px;
        }

        p{
            font-size:20px;
            line-height:1.8;
            color:#444;
            min-height:180px;
        }

        button{
            margin-top:25px;
            padding:14px 35px;
            font-size:18px;
            border:none;
            border-radius:30px;
            background:#e91e63;
            color:#fff;
            cursor:pointer;
            transition:.3s;
        }

        button:hover{
            background:#c2185b;
            transform:scale(1.05);
        }

        @keyframes beat{
            0%,100%{transform:scale(1);}
            50%{transform:scale(1.2);}
        }

        @keyframes fadeIn{
            from{
                opacity:0;
                transform:translateY(40px);
            }
            to{
                opacity:1;
                transform:translateY(0);
            }
        }

        .floating-heart{
            position:absolute;
            color:red;
            font-size:20px;
            animation:floatUp 6s linear infinite;
            opacity:.8;
        }

        @keyframes floatUp{
            0%{
                transform:translateY(100vh);
                opacity:0;
            }
            20%{
                opacity:1;
            }
            100%{
                transform:translateY(-120px);
                opacity:0;
            }
        }
    </style>
</head>

<body>

<div class="card">
    <h1>&hearts; A Special Message &hearts;</h1>

    <div class="heart">&hearts;</div>

    <p id="message"></p>

    <button onclick="proposal()">Click Here</button>
</div>

<script>
const text =
`I love you, Amrutha.

Today is a beautiful day, and that's why I wanted to express my feelings in a special way.

Amrutha, you make my days brighter and my heart happier.

Will you be my partner and make this journey of life even more beautiful?

I Love You.`;

let index = 0;

function typeWriter() {
    if (index < text.length) {
        document.getElementById("message").innerHTML += text.charAt(index);
        index++;
        setTimeout(typeWriter, 40);
    }
}

typeWriter();

function proposal() {
    const answer = confirm(
        "I Love You, Amrutha.\n\nWill you be my partner?"
    );

    if (answer) {
        alert("Thank you for saying YES! ❤️");
    } else {
        alert("No worries. I just wanted to honestly share my feelings. ❤️");
    }
}

// Floating hearts
function createHeart(){
    const heart=document.createElement("div");
    heart.className="floating-heart";
    heart.innerHTML="&hearts;";
    heart.style.left=Math.random()*100+"vw";
    heart.style.fontSize=(15+Math.random()*25)+"px";
    heart.style.animationDuration=(4+Math.random()*4)+"s";
    document.body.appendChild(heart);

    setTimeout(()=>{
        heart.remove();
    },8000);
}

setInterval(createHeart,300);
</script>

</body>
</html>
