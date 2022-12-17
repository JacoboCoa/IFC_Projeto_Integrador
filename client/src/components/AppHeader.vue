<template>
    <header>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <span class="dot">unique</span>
        <h4 id="title">Gestão de OC</h4>
        <nav>
            <router-link to="/">Home</router-link>
            <router-link to="/fornecedores">Fornecedores</router-link>
            <router-link to="/orcamentos">Orçamentos</router-link>
            <router-link to="/about">Cronograma</router-link>
        </nav>
    </header>
</template>

<style lang="scss">
    header{
        display: flex;
        border-bottom: 1px solid #ccc;
        background-color: #2d6a4f;
    }
    .dot{
        padding: 10px;
        margin: 10px;
        width: 80px;
        background-color: #ff7b00;
        border: 2px solid white;
        color: white;
        border-radius: 5%;
        display: inline-flex;
        align-items: center;
    }
    #title{
        color: white;
        display: inline-flex;
        align-items: center;
        width: 85%;
    }
    nav{
        background-color: white;
        display: inline-flex;
        align-items: center;
        a{
            background-color: #2d6a4f;
            display: flex;
            padding: 30px 40px;
        }
        a:link{
            text-decoration: none;
        }
        a:visited{
            color: white;
            text-decoration: none;
        }
        a:hover{
            background-color: #1b4332;
        }
        a:active{
            background: #081c15;
            -webkit-box-shadow: inset 0px 0px 5px #c1c1c1;
            -moz-box-shadow: inset 0px 0px 5px #c1c1c1;
            box-shadow: inset 0px 0px 5px #c1c1c1;
            outline: none;
        }
        a.router-link-exact-active {
            color: white;
            background-color: #081c15;
        }
    }
</style>