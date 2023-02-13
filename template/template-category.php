<?php include("header.php") ?>
<main role="main" class="main">
    <section class="category">
        <div class="container">

        <div class="filtering">
                <div class="close" id="close">
                    <div></div>
                    <div></div>
                </div>
                <div class="bg">
                </div>
                <div class="yes"></div>
                <form action="" class="filter-form">
                    <div class="part">
                        <h3>Ročník</h3>
                        <ul class="checkbox-block">
                            <li>
                                <input value="main-cat" type="checkbox" name="Subcategory" id="Subcategory-1">
                                <label for="Subcategory-1"><span>Podkategória</span><span class="arrow-fil"></span></label>
                                <ul class="children">
                                    <li class="checkbox-holder">
                                        <input value="subcategory-1" type="checkbox" name="Subcategory" id="Subcategory-1.1">
                                        <label for="Subcategory-1.1"><span>Podkategória</span></label>
                                    </li>
                                    <li class="checkbox-holder">
                                        <input value="subcategory-2" type="checkbox" name="Subcategory" id="Subcategory-1.2">
                                        <label for="Subcategory-1.2"><span>Podkategória</span></label>
                                    </li>
                                    <li class="checkbox-holder">
                                        <input value="subcategory-3" type="checkbox" name="Subcategory" id="Subcategory-1.3">
                                        <label for="Subcategory-1.3"><span>Podkategória</span></label>
                                    </li>
                                </ul>

                            </li>
                        </ul>
                        <ul class="checkbox-block">
                            <li>
                                <input value="main-cat" type="checkbox" name="Subcategory" id="Subcategory-1">
                                <label for="Subcategory-1"><span>Podkategória</span><span class="arrow-fil"></span></label>
                                <ul class="children">
                                    <li class="checkbox-holder">
                                        <input value="subcategory-1" type="checkbox" name="Subcategory" id="Subcategory-1.1">
                                        <label for="Subcategory-1.1"><span>Podkategória</span></label>
                                    </li>
                                    <li class="checkbox-holder">
                                        <input value="subcategory-2" type="checkbox" name="Subcategory" id="Subcategory-1.2">
                                        <label for="Subcategory-1.2"><span>Podkategória</span></label>
                                    </li>
                                    <li class="checkbox-holder">
                                        <input value="subcategory-3" type="checkbox" name="Subcategory" id="Subcategory-1.3">
                                        <label for="Subcategory-1.3"><span>Podkategória</span></label>
                                    </li>
                                </ul>

                            </li>
                        </ul>
                        <ul class="checkbox-block">
                            <li>
                                <input value="main-cat" type="checkbox" name="Subcategory" id="Subcategory-2">
                                <label for="Subcategory-2"><span>Podkategória</span><span class="arrow-fil"></span></label>
                                <ul class="children">
                                    <li class="checkbox-holder">
                                        <input value="subcategory-1" type="checkbox" name="Subcategory" id="Subcategory-2.1">
                                        <label for="Subcategory-2.1"><span>Podkategória</span></label>
                                    </li>
                                    <li class="checkbox-holder">
                                        <input value="subcategory-2" type="checkbox" name="Subcategory" id="Subcategory-2.2">
                                        <label for="Subcategory-2.2"><span>Podkategória</span></label>
                                    </li>
                                    <li class="checkbox-holder">
                                        <input value="subcategory-3" type="checkbox" name="Subcategory" id="Subcategory-2.3">
                                        <label for="Subcategory-2.3"><span>Podkategória</span></label>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="checkbox-block">
                            <li>
                                <input value="main-cat" type="checkbox" name="Subcategory" id="Subcategory-3">
                                <label for="Subcategory-3"><span>Podkategória</span><span class="arrow-fil"></span></label>
                                <ul class="children">
                                    <li class="checkbox-holder">
                                        <input value="subcategory-1" type="checkbox" name="Subcategory" id="Subcategory-3.1">
                                        <label for="Subcategory-3.1"><span>Podkategória</span></label>
                                    </li>
                                    <li class="checkbox-holder">
                                        <input value="subcategory-2" type="checkbox" name="Subcategory" id="Subcategory-3.2">
                                        <label for="Subcategory-3.2"><span>Podkategória</span></label>
                                    </li>
                                    <li class="checkbox-holder">
                                        <input value="subcategory-3" type="checkbox" name="Subcategory" id="Subcategory-3.3">
                                        <label for="Subcategory-3.3"><span>Podkategória</span></label>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="part">
                        <h3>Cena od do</h3>
                        <div class="slide-part">
                            <div id="slider-range" class="price-filter-range" name="rangeInput"></div>
                            <!-- <label for="min_price" class="slider-label">Od:</label> -->
                            <div class="wrapper">
                                <input type="number" min=0 id="min_price" name="min_price" class="price-range-field" />
                                <input type="hidden" min=0 id="min_price_hidden" name="min_price" class="price-range-field" />

                                <span>Kč</span>
                            </div>
                            <!-- <label for="max_price" class="slider-label">Do:</label> -->
                            <div class="wrapper">
                                <input type="number" min=0 id="max_price" name="max_price" class="price-range-field" />
                                <input type="hidden" min=0 id="max_price_hidden" name="max_price" class="price-range-field" />

                                <span>Kč</span>
                            </div>
                        </div>
                    </div>
                    <div class="part">
                        <button href="" class="btn full-blue">Vyhledat</button>
                    </div>
                </form>
            </div>
            <div class="sorting">
                <a href="" class="btn full-blue " id="filter">Filtrace</a>
                <div class="sort">
                    <div class="holder">
                        <span>Seřadit podle:</span>
                    </div>
                    <div class="dropdown">
                        <div class="active-select"><a href="#">Nejnovější</a></div>
                        <div class="select-block">
                            <div class="select-item">
                                <a href="#" id="newest" data-slug="newest" class="itme-text">Nejnovější</a>
                            </div>
                            <div class="select-item">
                                <a href="#" id="oldest" data-slug="oldest" class="itme-text">Nejstarší</a>
                            </div>
                        </div>
                        <select name="sorting" id="sorting-select">
                            <option>newest</option>
                            <option>oldest</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="content">
                <a href="" class="item">
                    <div class="img">
                        <img src="data/images/cz-jazyk.jpg" alt="" />
                        <div class="bg"></div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae?</p>
                    </div>

                    <div class="text">
                        <h3>Český jazyk 1. ročník dadwad</h3>
                        <span>123 kč</span>
                    </div>
                </a>
                <a href="" class="item">
                    <div class="img">
                        <img src="data/images/cz-jazyk.jpg" alt="" />
                        <div class="bg"></div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae?</p>
                    </div>

                    <div class="text">
                        <h3>Český jazyk 1. ročník dadwad</h3>
                        <span>123 kč</span>
                    </div>
                </a>
                <a href="" class="item">
                    <div class="img">
                        <img src="data/images/cz-jazyk.jpg" alt="" />
                        <div class="bg"></div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae?</p>
                    </div>

                    <div class="text">
                        <h3>Český jazyk 1. ročník dadwad</h3>
                        <span>123 kč</span>
                    </div>
                </a>
                <a href="" class="item">
                    <div class="img">
                        <img src="data/images/cz-jazyk.jpg" alt="" />
                        <div class="bg"></div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae?</p>
                    </div>

                    <div class="text">
                        <h3>Český jazyk 1. ročník dadwad</h3>
                        <span>123 kč</span>
                    </div>
                </a>
                <a href="" class="item">
                    <div class="img">
                        <img src="data/images/cz-jazyk.jpg" alt="" />
                        <div class="bg"></div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae?</p>
                    </div>

                    <div class="text">
                        <h3>Český jazyk 1. ročník dadwad</h3>
                        <span>123 kč</span>
                    </div>
                </a>
                <a href="" class="item">
                    <div class="img">
                        <img src="data/images/cz-jazyk.jpg" alt="" />
                        <div class="bg"></div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae?</p>
                    </div>

                    <div class="text">
                        <h3>Český jazyk 1. ročník dadwad</h3>
                        <span>123 kč</span>
                    </div>
                </a>
                <a href="" class="item">
                    <div class="img">
                        <img src="data/images/cz-jazyk.jpg" alt="" />
                        <div class="bg"></div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae?</p>
                    </div>

                    <div class="text">
                        <h3>Český jazyk 1. ročník dadwad</h3>
                        <span>123 kč</span>
                    </div>
                </a>
                <a href="" class="item">
                    <div class="img">
                        <img src="data/images/cz-jazyk.jpg" alt="" />
                        <div class="bg"></div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae?</p>
                    </div>

                    <div class="text">
                        <h3>Český jazyk 1. ročník dadwad</h3>
                        <span>123 kč</span>
                    </div>
                </a>
                <a href="" class="item">
                    <div class="img">
                        <img src="data/images/cz-jazyk.jpg" alt="" />
                        <div class="bg"></div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae?</p>
                    </div>

                    <div class="text">
                        <h3>Český jazyk 1. ročník dadwad</h3>
                        <span>123 kč</span>
                    </div>
                </a>

            </div>
        </div>
        </div>
    </section>
</main>

<?php include("footer.php") ?>