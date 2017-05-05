<template>
    
    <div class="card">
        <div class="card-header card-inverse card-primary">
            {{ title }}
        </div>
            <div class="card-block">
                <slot></slot>
            </div>
        </div>
    </div>

</template>

<script>

    export default {
        props: {
            title: { default:'' },
        }
    }

</script>

<style>
</style>
