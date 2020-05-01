{% extends 'base-layout.volt' %}
{% block title %}Hasi Pencarian Hotel{% endblock %}
{% block bradcam_area %}
    <!-- slider_area_start -->
    <div class="bradcam_area breadcam_bg_1">
        <h3>Hasil Pencarian</h3>
    </div>
{% endblock %}

{% block content %}
   <!-- offers_area_start -->
   <div class="offers_area">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section_title text-center mb-100">
                    <h3>Hasil Pencarian</h3>
                </div>
            </div>
        </div>
       
        <div class="row">
            {% if(hotels) %}
            {% for hotel in hotels %}
                <div class="col-xl-4 col-md-4">
                    <div class="single_offers">
                        <div class="about_thumb">
                           
                            <img src="{{url("assets/"~ hotel['foto_hotel'])}}" alt="" style=" width:400px;
                            height:300px;">
                        </div>
                        <h3>Hotel {{hotel['nama_hotel']}}</h3>
                        <ul>
                            <li>Harga : Rp.{{hotel['harga_hotel']}}/kamar</li>
                            <li>Kamar Tersedia : {{hotel['total_kamar']-hotel['kamar_terpakai']}}</li>
                        </ul>
                        <a href="{{ url("/hotel/detailHotel/"~hotel['id_hotel'])}}" class="book_now">Pesan sekarang</a>
                    </div>
                </div>
                {% endfor %}
            {% endif %}
        </div>
    </div>
</div>
{% endblock %}