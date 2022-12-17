<template>
  <div id="container">
        <div id="listaOrcamentos" class="item">Lista de Obras<br>
            <ul id="orcamentos" 
            class="list-group" 
            v-for="obra in obras" 
            :key="obra.numeroObra">
                <li>Obra {{obra.numeroObra}} - {{obra.nome}}</li>
            </ul>
        </div>
        <div id="main" class="item">Detalhes das Obras
            <div class="card w-75" style="width: 18rem;"  v-for="obra in obras" :key="obra.numeroObra">
                <div class="card-body" >
                    <h5 class="card-title">{{obra.cidade}}</h5>
                    <h6 class="card-subtilte mb-2 text-muted">{{obra.bairro}}</h6>
                    
                    <div id="last">
                        <p class="card-link">{{obra.gastoRealizado}}</p>
                        <p class="card-link">{{obra.gastoPrevisto}}</p>
                    </div>
                    <div id="last">
                        <p class="card-link">{{obra.inicioObra}}</p>
                        <p class="card-link">{{obra.fimObra}}</p>
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