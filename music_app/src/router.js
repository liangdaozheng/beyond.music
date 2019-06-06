import Vue from 'vue'
import Router from 'vue-router'
import find from './components/find.vue'
import videobox from './components/video.vue'
import friend from './components/friends.vue'

Vue.use(Router)

export default new Router({
    routes: [{
            path: '/friend',
            component: friend
        },
        {
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
            redirect: "/friend"
        }

    ]
})