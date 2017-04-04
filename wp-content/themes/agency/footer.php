<div class="clearfix"></div>

<section class="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="ah-logobox">
					<a href="/"><span class="ah-logobox-span">Агентство воздушных сообщений<br><span>ООО"Транссервисавиа"</span></span></a>
					<div class="ah-soc ah-socfoot">
						<a href="#" class="facebook">
	                        <i class="fa fa-facebook bo-social-facebook"></i>
	                    </a>
						<a href="#" class="instagram">
	                        <i class="fa fa-instagram"></i>
	                    </a>
	                    <a href="#" class="vk">
	                        <i class="fa fa-vk"></i>
	                    </a>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12">
			<a href="#small-dialog" class="popup-with-zoom-anim ah-footer-span">СВЯЗАТЬСЯ с нами</a>
			<ul class="ah-footer-list">
				<li><i class="fa fa-map-marker" aria-hidden="true"></i><span>Кабардино-Балкарская Республика, г.Нальчик, проспект Ленина, д.43</span></li>
				<li><i class="fa fa-headphones" aria-hidden="true"></i><span>Call Free: +7 (8662) 42-33-26</span></li>
				<li><i class="fa fa-fax" aria-hidden="true"></i><span>FAX: +7 (8662) 42-47-45</span></li>
				<li><i class="fa fa-clock-o" aria-hidden="true"></i><span>Mon - Sat 9.00 - 18.00</span></li>
				<li><i class="fa fa-envelope" aria-hidden="true"></i><a href="#">a_02nck@tch.ru</a></li>
			</ul>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="ah-fotbox1">
					<ul class="ah-footer-list">
						<?php
						$args = array(
						'theme_location'  => '',
						'menu'            => 'Bottom menu',
						'container'       => false, 
						'container_class' => '', 
						'container_id'    => '',
						'menu_class'      => 'menu', 
						'menu_id'         => '',
						'echo'            => true,
						'fallback_cb'     => 'wp_page_menu',
						'before'          => '',
						'after'           => '',
						'link_before'     => '',
						'link_after'      => '',
						'items_wrap'      => '<ul class="ah-footer-list">%3$s</ul>',
						'depth'           => 0
						);
						wp_nav_menu($args ); 
						?>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>

<div class="hidden">
	
	<form id="small-dialog" class="zoom-anim-dialog ah-common-form1">

		<!-- Hidden Required Fields -->
		<input type="hidden" name="project_name" value="Официальный сайт агенства">
		<input type="hidden" name="admin_email" value="admin@mail.com">
		<input type="hidden" name="form_subject" value="Заявка из всплывающего окна">
		<!-- END Hidden Required Fields -->

		<span class="ah-common-form1title">Форма обратной связи для клиентов</span>
		<span class="ah-common-form1text">Введите пожалуйста в соответствующие поля ваши данные, чтобы мы могли с вами связаться</span>
		<input type="text" name="uname" placeholder="Ваше имя">
		<input type="text" name="tel" placeholder="+7 900 000 00 00" class="phone">
		<input type="submit" value="Отправить">
	</form>

</div>

		
<?php wp_footer(); ?>

</body>
</html>