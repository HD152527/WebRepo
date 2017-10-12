<%@ page language ="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8" %>

<%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html lang="ko">


  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Seung</title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/myblog.css" rel="stylesheet">
  </head>

  <!--드래그방지-->
  <body>
   <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle">
     <img src="../img/menu.png" width="30" height="30" alt="menu">
      <i class="fa fa-bars"></i>
    </a>
    <nav id="sidebar-wrapper">

      <ul class="sidebar-nav">
<li><a id="menu-close" href="#" class="btn btn-light">
  <img src="../img/arrow.png" width="50" height="50" alt="arrow">
  <i class="fa fa-times"></i>
</a></li>


        <li class="sidebar-brand">
          <a class="js-scroll-trigger" href="#top">Main</a>
        </li>
        <li>
          <a class="js-scroll-trigger" href="#whoami">Who Am I</a>
        </li>
        <li>
          <a class="js-scroll-trigger" href="#favorites">Favorites</a>
        </li>
        <li>
          <a class="js-scroll-trigger" href="#travel">Travel</a>
        </li>


        <li><div class="form-control">
          <form class="form-inline my-2 my-lg-0" id="SigninForm">
            <%
              UserVO user = (UserVO) session.getAttribute("user");
              if(user == null) {
            %>


            <a class="text-bold text-white" style="text-decoration: none" href="/bloglogin">Sign in</a>
            <span class="text-bold text-white">&nbsp; or &nbsp;</span>
            <a class="text-bold text-white" style="text-decoration: none" href="/signup">Sign up</a>
            <%-- 세션이 있는 경우 --%>
            <%
            } else {
            %>
            <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
              <li class="nav-item dropdown">
                <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <%=user.getName()+"님" %>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
                  <form action = "/bloglogout" method="post">
                    <button type="submit" class="dropdown-item">Sign out</button>
                  </form>
                  <div class="dropdown-divider"></div>
                  <button type="button" class="dropdown-item">Action1</button>
                  <button type="button" class="dropdown-item">Action2</button>
                </div>
              </li>
            </ul>
            <% } %>
          </form>
        </div></li>



      </ul>
    </nav>

    <header class="header" id="top">
      <div class="text-vertical-center">
        <h1 style="color: whitesmoke">My Blog</h1><br>
        <a href="#whoami" class="btn btn-dark btn-lg js-scroll-trigger">GO!</a>
      </div>
    </header>

    <!-- whoami -->
    <section id="whoami" class="whoami">
      <div class="container text-center">
        <h2>Who Am I?</h2><br>
        <img src="../img/13526560214396.png" width="100" height="330" alt="human"><br><br>
        <h2>이승규</h2><br>
        <p><strong>출생</strong></p>
          <p>2000년 01월 12일, 광주광역시</p><br>
        <p><strong>학력</strong></p>
        <p>한울초등학교 졸업</p>
        <p>서강중학교 졸업</p>
        <p>한국디지털미디어고등학교 2학년</p><br>
        <p></p>
      </div>
    </section>

    <!-- favorites -->
    <section id="favorites" class="favorites bg-primary text-white">
      <div class="container">
        <div class="row text-center">
          <div class="col-lg-10 mx-auto">
            <h2>Favorite things</h2>
            <hr class="small">
            <div class="row">
              <div class="col-md-3 col-sm-6">
                <div class="service-item">
                  <span class="fa-stack fa-4x">
                    <img src="../img/hs.png" width="120" height="120" alt="hs"><br>
                  </span>
                  <h4>
                    <strong>HearthStone</strong>
                  </h4>
                  <p>A card game developed by Blizzard. I have played since 15 years old.</p>
                  <a href="https://kr.battle.net/hearthstone/" target="_blank" class="btn btn-light">Official Site</a>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="favorites-item">
                  <span class="fa-stack fa-4x">
                        <img src="../img/ow.png" width="128" height="128" alt="ow"><br>

                  </span>
                  <h4>
                    <strong>Overwatch</strong>
                  </h4>
                  <p>A FPS game developed by Blizzard. </p>
                  <a href="http://playoverwatch.com/" target="_blank" class="btn btn-light">Official Site</a>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="favorites-item">
                  <span class="fa-stack fa-4x">
                     <img src="../img/an.png" width="128" height="128" alt="an"><br>
                  </span>
                  <h4>
                    <strong>Android</strong>
                  </h4>
                  <p>I love developing Android Applicatons. So I runs a Android club called #implude.</p>
                  <a href="https://developer.android.com/" target="_blank"  class="btn btn-light">Developer Site</a>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="favorites-item">
                  <span class="fa-stack fa-4x">
                      <img src="../img/fn.png" width="110" height="110" alt="fn"><br>
                  </span>
                  <h4>
                    <strong>Fitness</strong>
                  </h4>
                  <p>Everyday I go fitness before dinner, each have plan.</p>
                  <a href="http://myprotein.com/" target="_blank" class="btn btn-light">MyProtein.com</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br><br><br>
      <div class="container">
        <div class="row text-center">
          <div class="col-lg-10 mx-auto">
            <h2>Favorite singers</h2>
            <hr class="small">
            <div class="row">
              <div class="col-md-3 col-sm-6">
                <div class="service-item">
                  <span class="fa-stack fa-4x">
                     <img src="../img/naul.jpg" width="128" height="128" alt="naul"><br>
                  </span><br>
                  <h4>
                    <strong>Naul</strong>
                  </h4>
                  <a href="https://www.youtube.com/watch?v=cqVa2-qh4y4" target="_blank" class="btn btn-dark">Stone of Zion</a><br>
                  <p>Naul is one member of Brown Eyed Soul. Their main music genre is R&B, Soul, with some Korean Ballad melody.</p>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="favorites-item">
                  <span class="fa-stack fa-4x">
                      <img src="../img/bruno.jpg" width="128" height="128" alt="bruno"><br>
                  </span><br>
                  <h4>
                    <strong>Bruno Mars</strong>
                  </h4>
                  <a href="https://www.youtube.com/watch?v=-FyjEnoIgTM" target="_blank" class="btn btn-dark">Versace on the floor</a><br>
                  <p>Peter Gene Hernandez, known professionally as Bruno Mars, is an American singer-songwriter, multi-instrumentalist, record producer, and choreographer. </p>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="favorites-item">
                  <span class="fa-stack fa-4x">
                     <img src="../img/stevie.jpg" width="128" height="128" alt="stevie"><br>
                  </span><br>
                  <h4>
                    <strong>Stevie Wonder</strong>
                  </h4>
                  <a href="https://www.youtube.com/watch?v=0CFuCYNx-1g" target="_blank" class="btn btn-dark">Superstitution</a>
                  <p>Stevland Hardaway Morris, known by his stage name Stevie Wonder, is an American musician, singer, songwriter, record producer, and multi-instrumentalist.b</p>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="favorites-item">
                  <span class="fa-stack fa-4x">
                      <img src="../img/legend.jpg" width="128" height="128" alt="legend"><br>
                  </span><br>
                  <h4>
                    <strong>John Legend</strong>
                  </h4>
                  <a href="https://www.youtube.com/watch?v=PIh07c_P4hc" target="_blank" class="btn btn-dark">Ordinary People</a>
                  <p>John Roger Stephens, known professionally as John Legend, is an American singer, songwriter. Prior to Legend's debut album, he collaborated with already established artists.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
   <div id="travel" class="travel">
    <aside class="callout">
      <div class="text-vertical-center">
        <h2>My Travel</h2>
      </div>
    </aside>

    <!-- travel -->
      <div class="container">
        <br>
        <br>
        <div class="row">
          <div class="col-lg-10 mx-auto text-center">

            <div class="row">
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t1.jpg" alt="t1">
                  </a>
                  Churaumi Aquarium (Okinawam, Japan)
                </div>
              </div>
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t2.jpg" alt="t2">
                  </a>
                  Big Ben (London, England)
                </div>
              </div>
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t4.JPG" alt="t3">
                  </a>
                  Eiffel Tower (Paris, France)
                </div>
              </div>
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t7.jpg" alt="t4">
                  </a>
                  Eiffel Tower at Night (Paris, France)
                </div>
              </div>
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t5.jpg" alt="t">
                  </a>
                  Arc de triomphe (Paris, France)
                </div>
              </div>
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t6.jpg" alt="">
                  </a>
                  Louvre Museum (Paris, France)
                </div>
              </div>
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t3.JPG" alt="">
                  </a>
                  Tower Bridge (London, England)
                </div>
              </div>
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t10.JPG" alt="">
                  </a>
                  Towns in the Alps (Interaken, Switzerland)
                </div>
              </div>
              <div class="col-md-6">
              <div class="travel-item">
                <a href="#">
                  <img class="img-travel img-fluid" src="../img/t8.JPG" alt="">
                </a>
                Jungfrau (Interaken, Switzerland)
              </div>
            </div>
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t9.JPG" alt="">
                  </a>
                  The Top of Jungfrau (Interaken, Switzerland)
                </div>
              </div>
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t11.jpg" alt="">
                  </a>
                  Milano Duomo (Milano, Italy)
                </div>
              </div>
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t12.JPG" alt="">
                  </a>
                  Venice (Italy)
                </div>
              </div>
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t13.jpg" alt="">
                  </a>
                  Caffé Florian<br>
                  the oldest continuously-operated coffee house in the world.
                  (Venice, Italy)
                </div>
              </div>
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t14.JPG" alt="">
                  </a>
                  Pantheon (Rome, Italy)
                </div>
              </div>
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t15.JPG" alt="">
                  </a>
                  Basilica Scanti Petri (Vatican City)
                </div>
              </div>
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t16.JPG" alt="">
                  </a>
                  Colosseum (Rome, Italy)
                </div>
              </div>
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t17.jpg" alt="">
                  </a>
                  Shinjuku Gyoen National Park (Tokyo, Japan)
                </div>
              </div>
              <div class="col-md-6">
                <div class="travel-item">
                  <a href="#">
                    <img class="img-travel img-fluid" src="../img/t18.jpg" alt="">
                  </a>
                  Sensoji (Tokyo, Japan)
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-10 mx-auto text-center">

            <ul class="list-unstyled">
              <li>
                <img src="../img/phone.png" width="15" height="15" alt=""/>
                +82 10-9221-0812</li>
              <li>
                <img src="../img/email.png" width="15" height="15" alt=""/>
                <a href="mailto:name@example.com">lsg000112@gmail.com</a>
              </li>
            </ul>
            <br>
            <ul class="list-inline">
              <li class="list-inline-item">
                <a href="https://www.facebook.com/seunggyu.lee.94/" target="_blank">
                  <img src="../img/fb.png" width="50" height="50" alt="">
                </a>
              </li>
            </ul>
            <hr class="small">
            <p class="text-muted">Copyright &copy; Seung 2017</p>
          </div>
        </div>
      </div>
      <a id="to-top" href="#top" class="btn btn-dark btn-lg js-scroll-trigger">
        <img src="../img/top.png" width="30" height="30" alt="">
      </a>
    </footer>

    <div class="modal" id="inModal">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Result</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <p></p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>

    <div class="modal" id="upModalresult">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Result</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <p></p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>

    <div class="modal" id="upModal">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Register</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <form id="register">

            <div class="modal-body">
              <div class="btn-group" data-toggle="buttons">
                <label class="btn btn-primary active">
                  <input type="radio" name="grade" id="1" >1학년
                </label>
                <label class="btn btn-primary">
                  <input type="radio" name="grade" id="2" >2학년
                </label>
                <label class="btn btn-primary">
                  <input type="radio" name="grade" id="3" >3학년
                </label>
              </div>
              <select class="custom-select">
                <option value="1">1반</option>
                <option value="2">2반</option>
                <option value="3">3반</option>
                <option value="4">4반</option>
                <option value="5">5반</option>
                <option value="6">6반</option>
              </select>
              <br><br>
              <div class="form-control mr-sm-2">
                번호<input type="text" id="number" class="input-id" placeholder="번호를 입력하세요." required=""><br>
                이름<input type="text" id="name" class="input-pwd" placeholder="이름을 입력하세요." required="">
              </div>
              <br>
              <div class="form-control mr-sm-2">
                아이디<input type="text" id="id2" class="input-id" placeholder="ID" required=""><br>
                비밀번호<input type="password" id="pwd2" class="input-pwd" placeholder="PWD" required="">
              </div>

            </div>

                 <div class="modal-footer">
                 <button type="submit" class="btn btn-secondary" >Register</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                 </div>

              </form>

        </div>
      </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="../js/menu.js"></script>
    <script src="login.jsp"></script>


  </body>

</html>
