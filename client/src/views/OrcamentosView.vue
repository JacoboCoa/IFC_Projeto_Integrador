<template>
    <!--<div class="wrapper">
        <div v-for="orcamento in orcamentos" :key="orcamento.numeroOrcamento" class="orcamento">
        <p>{{orcamento.numeroOrcamento}}</p>
        <p>{{orcamento.valorTotal}}</p>
        </div>
    </div>-->
    <div id="container">
        <div id="listaOrcamentos" class="item">Lista de Orçamentos<br>
            <button>+ incluir orcamento</button>
            <ul id="orcamentos" 
            class="list-group" 
            v-for="orcamento in orcamentos" 
            :key="orcamento.numeroOrcamento">
                <li>Orçamento {{orcamento.numeroOrcamento}}</li>
            </ul>
        </div>
        <div id="main" class="item">Detalhes do Orçamento
            <div class="card w-75" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">{{orcamentos[0].valorTotal}}</h5>
                    <h6 class="card-subtilte mb-2 text-muted">{{orcamentos[0].data}}</h6>
                    <p class="card-text">{{orcamentos[0].itens}}</p>
                    <div id="last">
                        <p class="card-link">{{orcamentos[0].validade}}</p>
                        <p class="card-link">{{orcamentos[0].entrega}}</p>
                    </div>
                </div>
            </div>
        </div>
        <div id="empresaDetalhes" class="item">Detalhes da Empresa
            <ul>
                <li>{{orcamentos[0].empresa.nome}}</li>
                <li>{{orcamentos[0].empresa.cnpj}}</li>
                <li>{{orcamentos[0].empresa.telefone}}</li>
                <li>{{orcamentos[0].empresa.endereco}}</li>
                <li>{{orcamentos[0].empresa.email}}</li>
            </ul>
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
        width: 50%;
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
    #empresaDetalhes{
        padding: 10px;
        background-color: #d8f3dc;
        width: 20%;
        word-wrap: break-word;
        display: flex;
        flex-direction: column;
        align-items: center;
        ul li{
            list-style: none;
        }
    }
</style>