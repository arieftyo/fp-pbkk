{% extends 'base-layout.volt' %}
{% block title %}Edit Pesanan{% endblock %}
{% block bradcam_area %}
    <div class="bradcam_area breadcam_bg_1">
        <h3>Edit Pemesanan</h3>
    </div>
{% endblock %}

{% block content %}
<section class="blog_area single-post-area section-padding">
    <div class="container">
       <div class="row">
          <div class="col-lg-8 posts-list">
             <div class="single-post">
                <h3 class="mb-30">Edit Pesanan</h3>
                <form method="POST" action="{{url("updatePemesanan/"~ auth['id']~ "/" ~pesanan['id_pemesanan'])}}">
                    <div class="mt-10" style="margin-bottom: 30px;">
                        <label for="nama">Nama Pemesan</label>
                        <input type="text" name="nama" placeholder="Nama Pemesan"
                            onfocus="this.placeholder = ''" onblur="this.placeholder = 'Nama Pemesan'" required
                            class="single-input" value="{{pesanan['nama_pemesan']}}">
                    </div>
                    <div class="mt-10" style="margin-bottom: 30px;">
                        <label for="telepon">Telepon</label>
                        <input type="tel" name="telepon" placeholder="Telepon"
                            onfocus="this.placeholder = ''" onblur="this.placeholder = 'Telepon'" required
                            class="single-input" value="{{pesanan['telepon']}}">
                    </div>
                    <div class="mt-10" style="margin-bottom: 30px;">
                        <label for="email">Email</label>
                        <input type="email" name="email" placeholder="Email"
                            onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email'" required
                            class="single-input" value="{{pesanan['email']}}">
                    </div>
                    <div class="mt-10" style="margin-bottom: 30px;">
                        <label for="tamu">Nama Tamu</label>
                        <input type="text" name="tamu" placeholder="Nama Tamu"
                            onfocus="this.placeholder = ''" onblur="this.placeholder = 'Nama Tamu'" required
                            class="single-input" value="{{pesanan['nama_tamu']}}">
                    </div>
                    <div>
                        <button type="submit" class="genric-btn primary radius">Simpan </button>
                    </div>
                </form>
             </div>
            
          </div>
       </div>
    </div>
 </section>
{% endblock %}