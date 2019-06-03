import Vue from 'vue'
import Router from 'vue-router'
import find from './components/find.vue'
import videobox from './components/video.vue'

Vue.use(Router)

export default new Router({
    routes: [{
            path: '/videobox',
            component: videobox
        },
        {
            path: '/find',
            component: find
        },
        {
            // 重定向
            path: '/',
            redirect: "/videobox"
        }

    ]
})