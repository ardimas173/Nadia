<script src="https://unpkg.com/vue"></script>



<div id="app">

    <input type="text" v-model="message">
    <input type="text" v-model="messagedua">

    <p>{{message}}</p>
</div>


    <todo-item></todo-item>




<script>


    Vue.component('todo-item', {
        // The todo-item component now accepts a
        // "prop", which is like a custom attribute.
        // This prop is called todo.
        props: ['todo'],
        template: '<li>{{ todo.text }}</li>'
    })


    Vue.component('todo-item', {
        template: '<li>This is a todo</li>'
    })

    var app = new Vue({
        el:'#app',
        data:{
            message:'test',
            messagedua:'dua'
        }
    })
</script>