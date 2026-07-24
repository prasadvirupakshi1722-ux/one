<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ammu &#10084;</title>
<style>
  :root{
    --ink:#3a1f2b;
    --rose:#c9184a;
    --rose-deep:#800f2f;
    --blush:#ffe5ec;
    --cream:#fff0f3;
    --gold:#e0a458;
  }

  *{box-sizing:border-box;}

  body{
    margin:0;
    min-height:100vh;
    display:flex;
    align-items:center;
    justify-content:center;
    font-family:'Georgia', 'Times New Roman', serif;
    background:radial-gradient(circle at 50% 20%, var(--cream), var(--blush) 70%);
    color:var(--ink);
    overflow:hidden;
    position:relative;
  }

  .rose-field{
    position:fixed;
    inset:0;
    pointer-events:none;
    z-index:0;
    opacity:0;
    transition:opacity 1.2s ease;
  }
  .rose-field.active{opacity:1;}
  .petal{
    position:absolute;
    top:-10%;
    font-size:1.6rem;
    animation:fall linear infinite;
    filter:drop-shadow(0 2px 3px rgba(128,15,47,0.25));
  }
  @keyframes fall{
    0%{transform:translateY(0) rotate(0deg);}
    100%{transform:translateY(110vh) rotate(360deg);}
  }

  .card{
    position:relative;
    z-index:2;
    background:rgba(255,255,255,0.85);
    backdrop-filter:blur(6px);
    border-radius:24px;
    padding:2.8rem 2.4rem;
    max-width:460px;
    width:90%;
    text-align:center;
    box-shadow:0 20px 50px rgba(128,15,47,0.18);
    border:1px solid rgba(201,24,74,0.15);
  }

  .eyebrow{
    letter-spacing:0.2em;
    text-transform:uppercase;
