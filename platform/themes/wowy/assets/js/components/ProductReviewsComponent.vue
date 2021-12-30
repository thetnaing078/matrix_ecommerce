<template>
    <div>
        <div v-if="isLoading">
            <div class="half-circle-spinner">
                <div class="circle circle-1"></div>
                <div class="circle circle-2"></div>
            </div>
        </div>
        <div class="comment-list">
            <div class="single-comment justify-content-between d-flex" v-if="!isLoading && data.length" v-for="item in data" :key="item.id">
                <div class="user justify-content-between d-flex">
                    <div class="thumb text-center">
                        <img :src="item.user_avatar" :alt="item.user_name" width="70">
                        <h6>{{ item.user_name }}</h6>
                    </div>

                    <div class="desc">
                        <div class="rating_wrap">
                            <div class="rating">
                                <div class="product_rate" :style="{width: item.star * 20 + '%'}"></div>
                            </div>
                        </div>
                        <p>{{ item.comment }}</p>
                        <div class="d-flex justify-content-between">
                            <div class="d-flex align-items-center">
                                <p class="font-xs mr-30">{{ item.created_at }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="pagination-area mt-15 mb-md-5 mb-lg-0" v-if="!isLoading && meta.last_page > 1">
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-start">
                    <li class="page-item"><a class="page-link" @click="getData(meta.current_page > 1 ? meta.current_page - 1 : 1)"><i class="fa fa-angle-left"></i></a></li>
                    <li class="page-item" v-for="n in meta.last_page" v-if="Math.abs(n - meta.current_page) < 3 || n === meta.last_page || n === 1">
                        <span class="page-link first-page" v-if="(n === 1 && Math.abs(n - meta.current_page) > 3)">...</span>
                        <span v-if="n === meta.current_page" class="page-link active">{{ n }}</span>
                        <span class="page-link last-page" v-if="n === meta.last_page && Math.abs(n - meta.current_page) > 3">...</span>
                        <a v-if="n !== meta.current_page && !(n === 1 && Math.abs(n - meta.current_page) > 3) && !(n === meta.last_page && Math.abs(n - meta.current_page) > 3)" @click="getData(n)" class="page-link">{{ n }}</a>
                    </li>
                    <li class="page-item"><a class="page-link" @click="getData(meta.current_page + 1)"><i class="fa fa-angle-right"></i></a></li>
                </ul>
            </nav>
        </div>
    </div>
</template>

<script>
    export default {
        data: function() {
            return {
                isLoading: true,
                data: [],
                meta: {},
            };
        },
        props: {
            url: {
                type: String,
                default: () => null,
                required: true
            },
        },
        mounted() {
          this.getData();
        },
        methods: {
            getData(page = 1) {
                this.data = [];
                this.isLoading = true;
                axios.get(this.url + '?page=' + page)
                    .then(res => {
                        this.data = res.data.data ? res.data.data : [];
                        this.meta = res.data.meta;
                        this.isLoading = false;
                    })
                    .catch(() => {
                        this.isLoading = false;
                    });
            },
        }
    }
</script>
