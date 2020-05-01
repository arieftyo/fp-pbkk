{% extends 'base-layout.volt' %}
{% block title %}Pemesanan Saya{% endblock %}
{% block bradcam_area %}
    <div class="bradcam_area breadcam_bg_1">
        <h3>Pemesanan Saya</h3>
    </div>
{% endblock %}

{% block content %}
<section class="blog_area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mb-5 mb-lg-0">
                <div class="blog_left_sidebar">
                    {%for pesanan in pesanans %}
                    <article class="blog_item">
                        <div class="blog_item_img">
                            <img class="card-img rounded-0" src="{{url("assets/"~ pesanan['foto_hotel'])}}" alt="">
                            <a class="blog_item_date">
                                <h3>Booking</h3>
                                <p>{{pesanan['tgl_checkin']}} - {{pesanan['tgl_checkout']}}</p>
                            </a>
                        </div>

                        <div class="blog_details">
                            <a class="d-inline-block" href="single-blog.html">
                                <h2>{{pesanan['nama_hotel']}},{{pesanan['kota_hotel']}}</h2>
                            </a>
                            <p>Nama Tamu : {{pesanan['nama_tamu']}},  Jumlah Kamar : {{pesanan['jumlah_kamar']}},  Total Harga : Rp.{{pesanan['total_harga']}}</p>
                            <ul class="blog-info-link">
                                {% if pesanan['status_bayar'] == 0 %}
                                <li>
                                    <form action="{{url("bayar/"~auth['id']~"/"~pesanan['id_pemesanan'])}}"  style="display: inline-block; ">
                                        <button type="submit" class="genric-btn info radius">Bayar Pemesanan</button> 
                                    </form>
                                </li>
                                <li>
                                    <form action="{{url("batalkan/"~auth['id']~"/"~ pesanan['id_pemesanan'])}}""  style="display: inline-block; ">
                                        <button type="submit" class="genric-btn danger radius">Batalkan Pemesanan</button> 
                                    </form>
                                </li>
                                <li>
                                    <form action="{{url("editPesanan/"~auth['id']~"/"~ pesanan['id_pemesanan'])}}""  style="display: inline-block; ">
                                        <button type="submit" class="genric-btn success radius">Edit Pesanan</button> 
                                    </form>
                                </li>
                                {% else %}
                                <li><a>Sudah Terbayar</a></li>
                                {% endif %}
                            </ul>
                        </div>
                    </article>
                    {% endfor %}
                   
                </div>
            </div>
            
        </div>
    </div>
</section>
{% endblock %}