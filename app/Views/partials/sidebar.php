<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme" data-bg-class="bg-menu-theme">
    <div class="app-brand demo">
        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-xl-none">
            <i class="bx bx-chevron-left bx-sm align-middle"></i>
        </a>
        <img id="logoSideBar" src="img/logo_prueba.jpg" alt="" srcset="">
    </div>

    <div class="menu-inner-shadow"></div>

    <ul class="menu-inner py-1 ps ps--active-y">
        <!-- Dashboard -->
        <li class="menu-item">
            <a href="<?= Helpers\generateUrl("Access","Access","HomeView");?>" class="menu-link">
                <i class="menu-icon tf-icons bx bx-map"></i>
                <div data-i18n="Analytics">Mapa</div>
            </a>
        </li>
        <li class="menu-header small text-uppercase">
            <span class="menu-header-text"></span>
        </li>


        <li class="menu-item" style="">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class='menu-icon tf-icons bx bxs-user-detail'></i>
                <div data-i18n="Layouts">Cuenta</div>
            </a>

            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="<?= Helpers\generateUrl("Clients","Clients","ViewClientPortal");?>" class="menu-link">
                        <div data-i18n="Without menu">Ver</div>
                    </a>
                </li>
            </ul>
        </li>

        <li class="menu-item" style="">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class='menu-icon tf-icons bx bxs-calendar'></i>
                <div data-i18n="Layouts">Reservas</div>
            </a>

            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="<?= Helpers\generateUrl("Clients","Clients","ViewClientPortal");?>" class="menu-link">
                        <div data-i18n="Without menu">Ver </div>
                    </a>
                </li>
            </ul>
        </li>

        <li class="menu-item" style="">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class='menu-icon tf-icons bx bxs-chat'></i>
                <div data-i18n="Layouts">Soporte</div>
            </a>

            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="<?= Helpers\generateUrl("Clients","Clients","ViewClientPortal");?>" class="menu-link">
                        <div data-i18n="Without menu">Ver</div>
                    </a>
                </li>
            </ul>
        </li>

        </li>
        <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
            <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
        </div>
        <div class="ps__rail-y" style="top: 0px; right: 4px; height: 466px;">
            <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 243px;"></div>
        </div>
    </ul>
</aside>