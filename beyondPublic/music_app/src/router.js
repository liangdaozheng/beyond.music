import Vue from 'vue'
import Router from 'vue-router'
import find from './components/find.vue'
import videobox from './components/video.vue'
import friend from './components/friends.vue'
import MySelf from './components/MySelf.vue'
import UserSet from './components/UserSet.vue'
import PlayList from './components/PlayList.vue'

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
        },
        {path:"/MySelf",component:MySelf},
        {path:"/UserSet",component:UserSet},
        {path:"/PlayList",component:PlayList},
    ]
})