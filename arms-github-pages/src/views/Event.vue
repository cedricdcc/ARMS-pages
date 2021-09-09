
<template>
  <div class="about">
    <h1>This is the event page</h1>
    <div>
        <table class='table table-striped'>
            <tbody>
                <tr v-for="item in allevents" :key="item">
                    <td>
                        {{item.id}}
                    </td>
                    <td>
                        {{item.description}}
                    </td>
                    <td>
                        {{item.begin}}
                    </td>
                    <td>
                        {{item.end}}
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
  </div>
</template>

<script>
    import store from '@/store/index'

    export default {
        computed: {
            alldata() {
                return store.state.alldata
            },
            allevents() {
                return store.state.allevents
            },
        },
        beforeMount() {
            this.getallevents()
        },
        methods: {
            getallevents () {
            store.commit('allEvents')
        },
        },
    }
</script>