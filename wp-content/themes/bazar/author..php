<?php
/*Template name: inventory */

get_header();


?>
<main role="main" class="main">
    <section class="inventory">
        <div class="container">


            <h2>Vaše položky</h2>
            <div class="add">
                <a href="" class="add-item">Přidat položku</a>
            </div>
            <div class="modal add">
                <div class="bg-modal">

                </div>

                <div class="parameters">

                    <div class="exit-block">
                        <div class="exit">

                        </div>
                    </div>

                    <form action="" class="form-add">
                        <h3>Vytvořit položku</h3>
                        <div class="holder"><label for="new-name">Zadejte název</label>
                            <input type="text" name="new-name" id="new-name" />
                        </div>
                        <div class="holder"><label for="price">Zadejte cenu</label>
                            <input type="number" name="price" id="price" />
                        </div>
                        <div class="holder"> <label for="description">Zadejte popisek</label>
                            <textarea name="" id="" cols="30" rows="10"></textarea>
                        </div>



                        <div class="file-upload">
                            <div class="upload-field">
                                <div class="fake-button" id="drop-zone">Vyberte soubor</div>
                                <input type="file" class="file-upload-field" id="fileInput" multiple />
                            </div>
                            <div id="fileList" class="file-upload-items"></div>
                            <div id="error" class="error"></div>
                        </div>
                        <button class="btn normal-tran">
                            Vytvořit
                        </button>
                    </form>
                </div>
            </div>
            <div class="modal edit">
                <div class="bg-modal">

                </div>

                <div class="editables">
                    <h3>Upravte položku</h3>
                    <h4>Vygenerované jméno</h4>
                    <div class="exit-block">
                        <div class="exit">

                        </div>
                    </div>

                    <form action="" class="form-edit">
                        <label for="name">Upravit název</label>
                        <input type="text" name="name" />
                        <label for="price">Upravit cenu</label>
                        <input type="number" name="price" />
                        <label for="description">Upravit popisek</label>
                        <textarea name="description" id="" cols="30" rows="10"></textarea>
                        <button type="submit" class="btn normal-tran">Upravit</button>

                    </form>
                </div>
            </div>
            <div class="content">
                <div href="" class="item">
                    <div class="img">
                        <img src="data/images/cz-jazyk.jpg" alt="" />
                        <div class="bg"></div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae?</p>
                    </div>

                    <div class="text">
                        <h3>Český jazyk 1. ročník dadwad</h3>
                        <span>123 kč</span>

                        <a href="" class="delete">Smazat</a>
                        <a href="" class="edit-btn">Upravit</a>
                    </div>
                </div>
                <div href="" class="item">
                    <div class="img">
                        <img src="data/images/cz-jazyk.jpg" alt="" />
                        <div class="bg"></div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae?</p>
                    </div>

                    <div class="text">
                        <h3>Český jazyk 1. ročník dadwad</h3>
                        <span>123 kč</span>

                        <a href="" class="delete">Smazat</a>
                        <a href="" class="edit-btn">Upravit</a>
                    </div>
                </div>
                <div href="" class="item">
                    <div class="img">
                        <img src="data/images/cz-jazyk.jpg" alt="" />
                        <div class="bg"></div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae?</p>
                    </div>

                    <div class="text">
                        <h3>Český jazyk 1. ročník dadwad</h3>
                        <span>123 kč</span>

                        <a href="" class="delete">Smazat</a>
                        <a href="" class="edit-btn">Upravit</a>
                    </div>
                </div>
                <div href="" class="item">
                    <div class="img">
                        <img src="data/images/cz-jazyk.jpg" alt="" />
                        <div class="bg"></div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae?</p>
                    </div>

                    <div class="text">
                        <h3>Český jazyk 1. ročník dadwad</h3>
                        <span>123 kč</span>

                        <a href="" class="delete">Smazat</a>
                        <a href="" class="edit-btn">Upravit</a>
                    </div>
                </div>
                <div href="" class="item">
                    <div class="img">
                        <img src="data/images/cz-jazyk.jpg" alt="" />
                        <div class="bg"></div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae?</p>
                    </div>

                    <div class="text">
                        <h3>Český jazyk 1. ročník dadwad</h3>
                        <span>123 kč</span>

                        <a href="" class="delete">Smazat</a>
                        <a href="" class="edit-btn">Upravit</a>
                    </div>
                </div>
                <div href="" class="item">
                    <div class="img">
                        <img src="data/images/cz-jazyk.jpg" alt="" />
                        <div class="bg"></div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime est ut qui, possimus aut laudantium tenetur animi eius libero voluptatem repellat? Maiores, soluta? Quam sequi nesciunt consectetur numquam autem molestiae?</p>
                    </div>

                    <div class="text">
                        <h3>Český jazyk 1. ročník dadwad</h3>
                        <span>123 kč</span>

                        <a href="" class="delete">Smazat</a>
                        <a href="" class="edit-btn">Upravit</a>
                    </div>
                </div>

            </div>
        </div>
    </section>

</main>

<?php

get_footer();


?>