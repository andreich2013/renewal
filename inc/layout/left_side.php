<?php DOM::$page = $model['page']; ?>
<div class="menu_title">
    <p><?= $ln['menuTitle'] ?></p>
</div>
<div class="menu">
    <ul id="menu" class="accordion dropdown_teg list-show">
        <li class="<?= DOM::isActive('main') ?>">
            <a href="/main"><?= $ln['menu']['main'] ?></a>
        </li>
        <li class="<?= DOM::isActive('news') ?>">
            <a href="/news"><?= $ln['menu']['news'] ?></a>
        </li>
        <li class="<?= DOM::isActive('about') ?>">
            <a href="/about"><?= $ln['menu']['about'] ?></a>
            <ul class="dropdown_teg">
                <li class="<?= DOM::isActive('history') ?>">
                    <a href="/about/history"><?= $ln['menu']['history'] ?></a>
                </li>
                <li class="<?= DOM::isActive('creed') ?>">
                    <a href="/about/creed"><?= $ln['menu']['creed'] ?></a>
                </li>
                <li class="<?= DOM::isActive('structure') ?>">
                    <a href="/about/structure"><?= $ln['menu']['structure'] ?></a>
                </li>
                <li class="<?= DOM::isActive('ministries') ?>">
                    <a href="/about/ministries"><?= $ln['menu']['ministries'] ?></a>
                </li>
                <li class="<?= DOM::isActive('home_groups') ?>">
                    <a href="/about/home_groups"><?= $ln['menu']['home_groups'] ?></a>
                </li>
            </ul>
        </li>
        <li class="<?= DOM::isActive('newspaper') ?>">
            <a href="/media/newspaper">Газета &laquo;Рассвет&raquo;</a>
        </li>
        <li class="<?= DOM::isActive('articles') ?>">
            <a href="/articles"><?= $ln['menu']['articles'] ?></a>
        </li>
        <li class="<?= DOM::isActive('gallery') ?>">
            <a href="/media/gallery?section=ministries"><?= $ln['menu']['gallery'] ?></a>
        </li>
        <li class="<?= DOM::isActive('audio') ?>">
            <a href="/media/audio?section=album_2"><?= $ln['menu']['audio'] ?></a>
        </li>
        <li class="<?= DOM::isActive('video') ?>">
            <a href="/media/video?section=ministries"><?= $ln['menu']['video'] ?></a>
        </li>
        <li class="<?= DOM::isActive('contacts') ?>">
            <a href="/contacts"><?= $ln['menu']['contacts'] ?></a>
        </li>
    </ul>
</div>