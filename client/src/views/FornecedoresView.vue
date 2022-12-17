<template>
    <div id="container">
        <div id="listaOrcamentos" class="item">Lista de Fornecedores<br>
            <button>+ adicionar empresa</button>
            <ul id="orcamentos" 
            class="list-group" 
            v-for="orcamento in orcamentos" 
            :key="orcamento.numeroOrcamento">
                <li>{{orcamento.empresa.nome}}</li>
            </ul>
        </div>
        <div id="main" class="item">Detalhes do Fornecedor
            <div class="card w-75" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">{{orcamentos[0].empresa.nome}}</h5>
                    <h6 class="card-subtilte mb-2 text-muted">{{orcamentos[0].empresa.cnpj}}</h6>
                    <p class="card-text">{{orcamentos[0].empresa.endereco}}</p>
                    <div id="last">
                        <p class="card-link">{{orcamentos[0].empresa.telefone}}</p>
                        <p class="card-link">{{orcamentos[0].empresa.email}}</p>
                    </div>
                </div>
            </div>
        </div>

    </div>
</template>

<script>
    import { ref } from 'vue';
    import orcamentosAll from '@/data/orcamentos';

    export default {
        setup() {
            const orcamentos = ref(orcamentosAll)
            return {orcamentos}
        }
    }

</script>

<style lang="scss" scoped>
    #container{
        display: flex;
        height: 850px;
    }
    .item{
        flex-grow: 3;
    }
    #listaOrcamentos{
        display: flex;
        
        flex-direction: column;
        padding: 10px;
        background-color: #d8f3dc;
        ul li{
            background-color: white;
            margin: 5px;
            text-decoration: none;
            list-style: none;
        }
    }
    #main{
        padding: 10px;
        width: 82%;
        display: flex;
        flex-direction: column;
        align-items: center;
        
    }
    #last{
        display: flex;
        align-items: center;
    }
    .card-body{
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .card-link{
        flex-grow: 2;
    }
</style>