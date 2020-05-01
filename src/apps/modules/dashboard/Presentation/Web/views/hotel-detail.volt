{% extends 'base-layout.volt' %}
{% block title %}Detail Hotel{% endblock %}
{% block bradcam_area %}
    <div class="bradcam_area breadcam_bg_1">
        <h3>Detail Hotel</h3>
    </div>
{% endblock %}

{% block content %}
  <div class="whole-wrap">
		<div class="container box_1170">
			<div class="section-top-border">
				<h3 class="mb-30">Hotel {{hotel['nama_hotel']}}</h3>
				<div class="row">
					<div class="col-md-3">
                        <img src="{{url("assets/"~ hotel['foto_hotel'])}}" alt="" class="img-fluid">
					</div>
					<div class="col-md-9 mt-sm-20">
                        <p>Alamat {{hotel['alamat_hotel']}}</p>
                        <p>{{hotel['deskripsi']}}</p>
                        <h4>Harga Mulai dari Rp.{{hotel['harga_hotel']}}/kamar </h4>
                        <a href="{{ url("/hotel/pesanHotel/"~hotel['id_hotel'])}}" class="genric-btn primary circle">Pesan Sekarang</a>
                    </div>
				</div>
            </div>
        </div>
    </div>
{% endblock %}