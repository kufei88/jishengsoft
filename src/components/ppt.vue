<template>
  <div class="pdf">
    <pdf ref="pdf" src="../source/images/ppt.pdf"> </pdf>
  </div>
</template>

<script>
import pdf from "vue-pdf";
export default {
  components: {
    pdf
  },
  data() {
    return {
      pdfUrl: "http://www.jishengsoft.com/UploadFiles/ppt.pdf"
    };
  }
};
</script>

<style></style>
