{% extends 'base-layout.volt' %}
{% block title %}Konfirmasi Pemesanan{% endblock %}
{% block bradcam_area %}
    <div class="bradcam_area breadcam_bg_1">
        <h3>Konfirmasi Pemesanan</h3>
    </div>
{% endblock %}

{% block content %}
<section class="blog_area single-post-area section-padding">
    <div class="container">
       <div class="row">
          <div class="col-lg-8 posts-list">
             <div class="single-post">
                <h3 class="mb-30">Konfirmasi Pemesanan</h3>
                <form method="POST" action="{{url("pemesanan/input/"~ auth['id']~ "/" ~hotel['id_hotel'])}}">
                    <div class="mt-10" style="margin-bottom: 30px;">
                        <label for="nama">Nama Pemesan</label>
                        <input type="text" name="nama" readonly value="{{data['nama_pemesan']}}"  class="single-input">
                    </div>
                    <div class="mt-10" style="margin-bottom: 30px;">
                        <label for="telepon">Telepon</label>
                        <input type="tel" name="telepon" readonly value="{{data['telepon']}}"  class="single-input" >
                    </div>
                    <div class="mt-10" style="margin-bottom: 30px;">
                        <label for="email">Email</label>
                        <input type="email" name="email" readonly value="{{data['email']}}"  class="single-input">
                    </div>
                    <div class="mt-10" style="margin-bottom: 30px;">
                        <label for="tamu">Nama Tamu</label>
                        <input type="text" name="tamu" readonly value="{{data['nama_tamu']}}"  class="single-input">
                    </div>
                    <div>
                        <button type="submit" class="genric-btn primary radius">Konfirmasi Pemesanan dan Lakukan Pembayaran</button>
                    </div>
                </form>
             </div>
            
          </div>
          <div class="col-lg-4">
             <div class="blog_right_sidebar">
                <aside class="single_sidebar_widget post_category_widget">
                   <h4 class="widget_title">Detail Pesanan</h4>
                   <ul class="list cat-list">
                      <li>
                        <p style="font-weight: bold;">Hotel {{hotel['nama']}}</p>
                        <p>{{hotel['alamat']}}</p>
                        <img src="{{url("assets/"~ hotel['foto'])}}" alt="" class="img-fluid" >
                      </li>
                      <li>
                        <p>Tanggal {{pesanan['checkin']}} - {{pesanan['checkout']}}</p>
                        <p>{{pesanan['room']}} kamar , {{pesanan['person']}} orang</p>
                      </li>
                      <li>
                         <table style="width: 100%;">
                             <tbody>
                                 <tr>
                                    <td align="left">
                                        <p>Harga untuk 1 Kamar</p>
                                    </td>
                                    <td align="right">
                                        <p>Rp. {{hotel['harga']}}</p>
                                    </td>
                                   
                                 </tr>
                                 <tr>
                                    <td align="left">
                                        <p>{{data['malam']}} malam X {{pesanan['room']}} kamar</p>
                                    </td>
                                    <td align="right">
                                        <p> Rp. {{data['totalHarga']}}</p>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td align="left">
                                        <p style="font-weight: bold;">TOTAL</p>
                                    </td>
                                    <td align="right">
                                        <p style="font-weight: bold;"> Rp. {{data['totalHarga']}}</p>
                                    </td>
                                 </tr>
                             </tbody>
                         </table>
                      </li>
                   </ul>
                </aside>
             </div>
          </div>
       </div>
    </div>
 </section>
{% endblock %}