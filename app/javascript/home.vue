<template>
    <div class="row">

        <div v-for="item in data"  class="col-12  col-md-6 ">
            <div class="card">
                <div class="card-body">
                    <h2 >{{item.advertiser_name}} <span v-if="item.premium" class="badge badge-danger">Premium</span></h2>
                    <a :href="item.url" target="_blank" class="btn btn-primary align-center">Shop Now</a>
                </div>
            </div>
        </div>
    
    </div>

</template>

<script>

let data = gon.offers;
export default {
  data: function () {
    return {
      data: data
    }
  }
}
</script>

<style scoped>
.row{
    margin: 20px 0;
}
.col-12{
    margin:20px 0;
}
h2 {
  font-size: 1.7em;
  margin-bottom: 20px;
  text-align: center;
}
a{
    display: block;
}
</style>
