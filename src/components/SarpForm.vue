<template>
    
    <div>
        <div v-if="fields.length" class="form-group" v-for="field in fields">
            <label for="field">{{ field }}</label>
            <input
                :id="field"
                class="form-control"
                v-model="row[field]"
                @input="onInput"
            >
        </div>
    </div>

</template>

<script>

    import map from 'lodash/map'

    export default {
        data: () => ({
            row: {},
        }),
        computed: {
            fields() {
                return Object.keys(this.row)
            }
        },
        mounted() {
            this.$events.$on('rowSelected', row => {
                this.row = row
            })
        },
        methods: {
            onInput() {
                this.$events.$emit('rowUpdated', this.row)
            }
        },
    }

</script>