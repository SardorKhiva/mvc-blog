<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <ul class="social-icons">
                    <?php if (!empty($socials)): ?>
                        <?php foreach ($socials as $social): ?> <!-- name ni yopib icon ni o'zini qoldiramiz -->
                            <li><a href="<?= $social['url'] ?>" target="_blank"> <i
                                            class="<?= $social['icon_class'] ?> "></i> <!-- <?= $social['name'] ?> -->
                                </a></li>
                        <?php endforeach; ?>
                    <?php endif; ?>
                </ul>
            </div>
            <div class="col-lg-12">
                <div class="copyright-text">
                    <p>Copyright 2020 Stand Blog Co.

                        | Design: <a rel="nofollow" href="https://templatemo.com" target="_parent">TemplateMo</a></p>
                </div>
            </div>
        </div>
    </div>
</footer>