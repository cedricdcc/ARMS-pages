<template>
    <div>
        <h2>Hello destination {{$route.params.id}}</h2>
        <h3>{{destination.name}}</h3>
    </div>
</template>

<script>
    import sourceData from '@/data.json'

    export default {
        computed: {
            destinationId(){
                return parseInt(this.$route.params.id)
            },

            destination(){
                return sourceData.destinations.find(destination => destination.id === this.destinationId)
            }
        }
    }
</script>