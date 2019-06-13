import Vue from 'vue'
import Router from 'vue-router'
import videobox from './components/video.vue'
import friend from './components/friends.vue'
import find from './components/find.vue'
import set from './components/UserSet.vue'


Vue.use(Router);

export default new Router({
    routes: [{
            path: '/find/videobox',
            component: videobox
        },
        {
            path: '/',
            component: find,
            name: "find",
        },
        {
            path: '/friend',
            component: friend,
            name: "friend",
        }, {
            path: '/set',
            component: set
        }

    ]
})