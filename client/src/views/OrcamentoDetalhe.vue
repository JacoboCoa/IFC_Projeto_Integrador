<template>
    <div>
        <p>{{orcamento.valorTotal}}</p>
    </div>
</template>

<script>
import orcamentos from '@/data/orcamentos';
import { useRoute } from 'vue-router';
import { computed } from '@vue/reactivity';
export default{
    setup(){
        const route = useRoute()
        const orcamento = computed(() => {
            return orcamentos.filter(a => a.numeroOrcamento === route.params.code.toUpperCase())[0]
        })
        return {orcamento}
    }
}
</script>              