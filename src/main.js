import Vue from 'vue'
import SarpDatatable from './components/SarpDatatable.vue'
import SarpForm from './components/SarpForm.vue'
import SarpLayout from './components/SarpLayout.vue'
import SarpPanel from './components/SarpPanel.vue'

var events = new Vue()
Vue.prototype.$events = events

new Vue({
    el: '#app',
    components: {
        SarpDatatable, SarpForm, SarpLayout, SarpPanel
    }
})
