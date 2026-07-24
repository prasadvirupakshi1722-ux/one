<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ammu ❤</title>
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

  /* floating background roses */
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
    font-size:0.7rem;
    color:var(--rose);
    font-family:Georgia, serif;
    margin-bottom:0.4rem;
  }

  h1{
    font-size:2.2rem;
    margin:0 0 0.3rem;
    color:var(--rose-deep);
    font-style:italic;
  }

  .question{
    font-size:1.05rem;
    line-height:1.5;
    margin:1.4rem 0 1.8rem;
    color:var(--ink);
  }

  .stars{
    display:flex;
    justify-content:center;
    gap:0.6rem;
    margin-bottom:1.6rem;
  }

  .star-btn{
    border:none;
    background:var(--cream);
    border:2px solid var(--rose);
    color:var(--rose-deep);
    width:52px;
    height:52px;
    border-radius:50%;
    font-size:1.2rem;
    font-weight:bold;
    cursor:pointer;
    transition:transform .2s ease, background .2s ease, color .2s ease;
    font-family:Georgia, serif;
  }
  .star-btn:hover{
    background:var(--rose);
    color:#fff;
    transform:translateY(-4px) scale(1.08);
  }
  .star-btn:active{transform:scale(0.95);}
  .star-btn.chosen{
    background:var(--rose-deep);
    color:#fff;
    border-color:var(--rose-deep);
  }

  .response{
    min-height:90px;
    display:flex;
    align-items:center;
    justify-content:center;
    padding:0.4rem 0.6rem;
  }

  .response p{
    font-size:1.15rem;
    font-style:italic;
    color:var(--rose-deep);
    margin:0;
    animation:pop .5s ease;
  }

  @keyframes pop{
    0%{opacity:0; transform:scale(0.85) translateY(6px);}
    100%{opacity:1; transform:scale(1) translateY(0);}
  }

  .placeholder{
    color:#b98a95;
    font-size:0.95rem;
    font-style:normal;
  }

  .signature{
    margin-top:1.6rem;
    font-size:0.8rem;
    letter-spacing:0.05em;
    color:var(--gold);
  }

  /* intro screen */
  .screen{
