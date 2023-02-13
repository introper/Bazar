<?php include("header.php") ?>
<main role="main" class="main">
    <section class="inventory">
        <div class="container">


            <h2>Vaše položky</h2>
            <div class="add">
                <a href="" class="btn full-blue add-item">Přidat položku</a>
            </div>
            <div class="modal modal-add">
                <div class="bg">
                </div>
                <div class="modal-text">
                    <div class="close" id="close">
                        <div></div>
                        <div></div>
                    </div>
                    <h3>Vytvořit položku</h3>
                    <form action="" class="form-review">
                        <div class="upper">
                            <div class="left">
                                <div class="form-holder">
                                    <input type="text" name="name" id="name" />
                                    <label for="name">Název</label>
                                </div>
                                <div class="form-holder">
                                    <input type="number" name="price" id="price" />
                                    <label for="price">cena</label>
                                </div>
                                <div class=" form-holder drop">
                                    <div class="holder">
                                        <h4>Ročník</h4>
                                        <div class="dropdown">
                                            <div class="active-select"><a href="#" id="">4. ročík</a></div>
                                            <div class="select-block">
                                                <div class="select-item">
                                                    <a href="#" id="year-1" data-slug="year-1" class="itme-text">1. ročík</a>
                                                </div>
                                                <div class="select-item">
                                                    <a href="#" id="year-2" data-slug="year-2" class="itme-text">2. ročík</a>
                                                </div>
                                                <div class="select-item">
                                                    <a href="#" id="year-3" data-slug="year-3" class="itme-text">3. ročík</a>
                                                </div>
                                                <div class="select-item">
                                                    <a href="#" id="year-4" data-slug="year-4" class="itme-text">4. ročík</a>
                                                </div>
                                            </div>
                                            <select name="sorting" id="sorting-select">
                                                <option>year-1</option>
                                                <option>year-2</option>
                                                <option>year-3</option>
                                                <option>year-4</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="holder">
                                        <h4>Předmět</h4>
                                        <div class="dropdown service-drop">
                                            <div class="active-select"><a href="#" id="">IT</a></div>
                                            <div class="select-block">
                                                <div class="select-item">
                                                    <a href="#" id="IT" data-slug="IT" class="itme-text">IT</a>
                                                </div>
                                                <div class="select-item">
                                                    <a href="#" id="AJ" data-slug="AJ" class="itme-text">AJ</a>
                                                </div>
                                                <div class="select-item">
                                                    <a href="#" id="zem" data-slug="zem" class="itme-text">Zem</a>
                                                </div>
                                                <div class="select-item">
                                                    <a href="#" id="bio" data-slug="bio" class="itme-text">Bio</a>
                                                </div>
                                            </div>
                                            <select name="sorting" id="sorting-select">
                                                <option>IT</option>
                                                <option>AJ</option>
                                                <option>zem</option>
                                                <option>bio</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class=" right">
                                <div class="form-holder">
                                    <textarea name="description" id="description" cols="30" rows="10" class="service"></textarea>
                                    <label for="description">Popis</label>
                                </div>

                            </div>
                        </div>

                        <div class="form-holder">
                            <div class="file-upload">
                                <div class="upload-field">
                                    <div class="fake-button" id="drop-zone">Vyberte soubor</div>
                                    <input type="file" class="file-upload-field" id="fileInput" multiple />
                                </div>
                                <div id="fileList" class="file-upload-items"></div>
                                <div id="error" class="error"></div>
                            </div>
                        </div>
                        <div class="form-holder button">
                            <button type="submit" class="btn full-blue">Vytvořit</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal modal-edit">
                <div class="bg">
                </div>
                <div class="modal-text">
                    <div class="close" id="close">
                        <div></div>
                        <div></div>
                    </div>
                    <h3>Upravte položku</h3>
                    <form action="" class="form-review">
                        <div class="upper">
                            <div class="left">
                                <div class="form-holder">
                                    <input type="text" name="name" id="name" />
                                    <label for="name">Název</label>
                                </div>
                                <div class="form-holder">
                                    <input type="number" name="price" id="price" />
                                    <label for="price">cena</label>
                                </div>
                                <div class=" form-holder drop">
                                    <div class="holder">
                                        <h4>Ročník</h4>
                                        <div class="dropdown">
                                            <div class="active-select"><a href="#" id="">4. ročík</a></div>
                                            <div class="select-block">
                                                <div class="select-item">
                                                    <a href="#" id="year-1" data-slug="year-1" class="itme-text">1. ročík</a>
                                                </div>
                                                <div class="select-item">
                                                    <a href="#" id="year-2" data-slug="year-2" class="itme-text">2. ročík</a>
                                                </div>
                                                <div class="select-item">
                                                    <a href="#" id="year-3" data-slug="year-3" class="itme-text">3. ročík</a>
                                                </div>
                                                <div class="select-item">
                                                    <a href="#" id="year-4" data-slug="year-4" class="itme-text">4. ročík</a>
                                                </div>
                                            </div>
                                            <select name="sorting" id="sorting-select">
                                                <option>year-1</option>
                                                <option>year-2</option>
                                                <option>year-3</option>
                                                <option>year-4</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="holder">
                                        <h4>Předmět</h4>
                                        <div class="dropdown service-drop">
                                            <div class="active-select"><a href="#" id="">IT</a></div>
                                            <div class="select-block">
                                                <div class="select-item">
                                                    <a href="#" id="IT" data-slug="IT" class="itme-text">IT</a>
                                                </div>
                                                <div class="select-item">
                                                    <a href="#" id="AJ" data-slug="AJ" class="itme-text">AJ</a>
                                                </div>
                                                <div class="select-item">
                                                    <a href="#" id="zem" data-slug="zem" class="itme-text">Zem</a>
                                                </div>
                                                <div class="select-item">
                                                    <a href="#" id="bio" data-slug="bio" class="itme-text">Bio</a>
                                                </div>
                                            </div>
                                            <select name="sorting" id="sorting-select">
                                                <option>IT</option>
                                                <option>AJ</option>
                                                <option>zem</option>
                                                <option>bio</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class=" right">
                                <div class="form-holder">
                                    <textarea name="description" id="description" cols="30" rows="10" class="service"></textarea>
                                    <label for="description">Popis</label>
                                </div>

                            </div>
                        </div>
                        <div class="form-holder button">
                            <button type="submit" class="btn full-blue">Upravit</button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- <div class="modal add">
                <div class="bg-modal">
                </div>
                <div class="parameters">
                    <div class="close" id="close">
                        <div></div>
                        <div></div>
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
            </div> -->
            <!-- <div class="modal edit">
                <div class="bg-modal">

                </div>

                <div class="editables">
                    <h3>Upravte položku</h3>
                    <h4>Vygenerované jméno</h4>
                    <div class="close" id="close">
                        <div></div>
                        <div></div>
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
            </div> -->
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

<?php include("footer.php") ?>