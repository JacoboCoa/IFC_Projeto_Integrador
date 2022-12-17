<template>
  <div id="container">
        <div id="listaOrcamentos" class="item">Lista de Obras<br>
            <button>+ incluir orçamento</button>
            <ul id="orcamentos" 
            class="list-group" 
            v-for="obra in obras" 
            :key="obra.numeroObra">
                <li>Obra {{obra.numeroObra}} - {{obra.nome}}</li>
            </ul>
        </div>
        <div id="main" class="item">Detalhes da Obra
            <div class="card w-75" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">{{obras[0].cidade}}</h5>
                    <h6 class="card-subtilte mb-2 text-muted">{{obras[0].bairro}}</h6>
                    <p class="card-text">{{obras[0].gastoPrevisto}}</p>
                    <div id="last">
                        <p class="card-link">{{obras[0].gastoRealizado}}</p>
                        <p class="card-link">{{obras[0].gastoPrevisto}}</p>
                    </div>
                    <div id="last">
                        <p class="card-link">{{obras[0].inicioObra}}</p>
                        <p class="card-link">{{obras[0].fimObra}}</p>
                    </div>
                </div>
            </div>
        </div>

    </div>
</template>

<script>
    import { ref } from 'vue';
    import cronogramaAll from '@/data/cronograma';

    export default {
        setup() {
            const obras = ref(cronogramaAll)
            return {obras}
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