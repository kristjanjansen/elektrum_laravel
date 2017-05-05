<template>

    <div>
    
        <nav class="navbar fixed-top navbar-inverse bg-inverse">
            <a class="navbar-brand" href="#">{{ title }}</a>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-8">

                    <slot name="left"></slot>

                </div>
                <div class="col-4">

                    <slot name="right"></slot>

                </div>
            </div>
        </div>

    </div>

</template>

<script>

    export default {
        props: {
            title: { default: '' },
        }
    }

</script>

<style lang="sass">

    $card-spacer-x: 1rem;
    $card-spacer-y: .5rem;
    $enable-rounded: false;
    $enable-shadows: true;
    $font-family-base: 'Open Sans', sans-serif;
    $spacer-y: .5rem;

    @import "~bootstrap/scss/bootstrap";

</style>

<style>

    body {
        padding-top: 5em;
    }

</style>