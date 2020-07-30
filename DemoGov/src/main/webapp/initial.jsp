<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
 <link rel = "icon" href = "${pageContext.request.contextPath }/template/images/india.png" type = "image/x-icon"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/agriculture.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/footer.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/style.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/7fc0c7085f.js" crossorigin="anonymous"></script>
    <link rel="icon" href="favicon.ico">
</head>
<body>
<div class="nav-bar">
        <img src="${pageContext.request.contextPath }/template/images/uk.png" alt="uk-logo" class="main-logo" id="mainLogo">
        <p class="navbar-text">DIRECTORATE OF ECONOMICS & STATISTICS | UTTARAKHAND</p>
        <!-- HAMURGER MENU ICON -->
        <div class="hamburger-menu" onclick="hamburgerMenuShowFunction()">
            <a  class="icon" >
                <i class="fas fa-bars"></i>
            </a>
        </div>
        <ul class="navbar-list" id="navbarList">
            <li class="navbar-list-items"><a href="/login" class="navbar-link">Home</a></li>
            <li class="navbar-list-items"><a href="/secondPage2" class="navbar-link">Dashboard</a></li>
            <li class="navbar-list-items"><a href="/userapp" class="navbar-link">User Approval</a></li>
            <li class="navbar-list-items" ><a class="select-language-button" style="text-decoration: none;" href="/">Log Out</a></li>
        </ul>
    </div>
    <div class="midsection">
        <h1 class="department-midsection-text">Welcome!!</h1>
        <div class="side-navigation-section">
            <div class="district">
                <div class="cm-name">					
                    <div>
                            <a href="http://www.governoruk.gov.in/" target="_blank">
                            <img class="longimg" src="${pageContext.request.contextPath }/template/images/Gov.jpg" width="100px" height="104px" alt="Uttarakhand Governer"></a>
                            <p class="txtname">Baby Rani Maurya</p>
                            <p class="txtname"><a href="http://www.governoruk.gov.in/" target="_blank" title="Smt. Baby Rani Maurya">Governor</a></p>
                    </div>
                    <div>
                            <a href="https://cm.uk.gov.in/" target="_blank">
                            <img class="longimg" src="${pageContext.request.contextPath }/template/images/CM.jpg" alt="Uttarakhand CM" width="100px" height="104px"></a>
                            <p class="txtname">Trivendra Singh Rawat</p>
                            <p class="txtname"><a href="http://cm.uk.gov.in/" target="_blank" title="Shri Trivendra Singh Rawat">Chief Minister</a></p>		
                    </div>
                </div>
            </div>
            
            <ul class="side-navigation-list">
                <li class="side-navigation-list-items"><a href="#population">Population</a></li>
                <li class="side-navigation-list-items"><a href="#education">Education</a></li>
                <li class="side-navigation-list-items"><a href="#industry">Industry & mining</a></li>
                <li class="side-navigation-list-items"><a href="#health">Health</a></li>
                <li class="side-navigation-list-items"><a href="#women">Women & Child Development</a></li>
                <li class="side-navigation-list-items"><a href="#others">Others</a></li>
            </ul>

            <div>
                <h3 class="dst">Districts </h3>
                    <div>
                        <img src="${pageContext.request.contextPath }/template/images/map.jpg" class="dst-map" alt="Map" title="Map" usemap="#Map" />
                    </div>
    
                    <map name="Map" id="Map">
                        <area  title="Uttarkashi (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                                return false;" shape="poly" coords="116,28,108,37,106,46,108,49,89,42,83,49,70,54,63,61,57,65,49,60,43,56,35,57,37,50,31,44,33,39,30,34,23,34,21,30,31,23,34,22,52,15,79,18,94,25,90,16,97,4" href="http://uttarkashi.nic.in/" alt="Uttarkashi" />
                        <area title="Dehradun (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="10,70,27,84,42,102,50,94,48,89,48,83,43,80,40,76,45,73,29,70,30,59,36,52,29,47,30,38,19,37,19,57,21,64"  href="http://dehradun.nic.in/" alt="Dehradun" />
                        <area title="Haridwar (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="28,87,16,105,20,119,31,118,34,125,35,128,52,115,47,104,40,102" href="http://haridwar.nic.in/" alt="Haridwar" />
                        <area title="Tehri (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="97,49,92,44,84,53,75,53,67,64,62,64,59,67,36,59,32,65,46,70,45,79,52,79,51,89,56,91,67,97,73,82,89,82,87,74,87,61,87,59" href="http://tehri.nic.in/" alt="Tehri" />
                        <area title="Rudraprayag (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="95,86,88,83,89,59,96,50,107,51,111,57,101,79"  href="http://rudraprayag.nic.in/" alt="rudraprayag" />
                        <area title="Chamoli (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="136,33,157,47,152,52,153,60,149,80,137,86,139,95,123,99,116,104,108,105,99,85,107,67,114,57,108,47,114,31,127,36" href="http://chamoli.nic.in/" alt="chamoli" />
                        <area title="Pauri (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="86,140,65,128,61,119,53,114,46,104,53,93,62,96,65,100,72,85,86,84,94,86,99,87,105,102,95,107,98,116,96,127" href="http://pauri.nic.in/" alt="pauri" />
                        <area title="Bageshwar (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="153,81,157,91,156,97,158,104,151,109,151,114,145,113,142,118,138,121,137,113,127,111,122,103,134,101,141,100,139,89,144,84" href="http://bageshwar.nic.in/" alt="bageshwar" />
                        <area title="Pithoragarh (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;"shape="poly" coords="211,87,204,87,183,109,173,116,176,123,165,138,146,118,153,113,161,107,159,99,156,86,150,81,155,55,160,46,163,59,184,67" href="http://pithoragarh.nic.in/" alt="pithoragarh" />
                        <area title="Almora (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="146,121,154,134,142,138,133,132,122,134,114,127,104,133,97,131,101,122,99,108,106,105,119,106,129,112" href="http://almora.nic.in/" alt="almora" />
                        <area title="Nainital (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="94,133,84,143,99,149,104,149,111,156,129,164,142,167,149,163,144,158,145,155,141,149,144,147,138,140,133,137,123,135,115,131" href="http://nainital.nic.in/" alt="nainital" />
                        <area title="Champawat (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="165,140,172,149,168,157,159,169,159,163,150,161,147,157,144,150,145,145,144,140,158,135" href="http://champawat.nic.in/" alt=" champawat " />
                        <area title="Udham S. Nagar (Opens in a new window)" onclick="openChild(this.href, 'win', '0');
                        return false;" shape="poly" coords="83,144,80,147,84,158,88,161,101,167,116,175,130,180,142,176,142,180,151,185,157,181,158,167,157,163,143,166,122,164,108,154,102,150" href="http://usnagar.nic.in/" alt="usnagar" />
                    </map>
            </div>
        </div>
        
            
        <div style="margin: 50px;">
            <h2>Select Departments</h2>

            <form action= "/sendData" method="post">
<!--             <input list="Year" name="Year" style="padding: 8px;">
 -->            <select id="Year" name="Year" style="padding: 8px;">
                <option selected="selected" disabled="disabled">Select the Department</option>
                <option value="Education">Education</option>
                <option value="Police">Police</option>
                <option value="Consumer">Consumer</option>
                <option value="Transport">Transportation</option>
                <option value="nss">National Small Savings</option>
                
            </select>
            <input type="submit" style="background: rgb(3, 124, 223); color: white; margin-left:2vw ; padding: 8px; border-radius: 5px;">
            </form>
        </div>

    </div>
    <!-- FOOTER SECTION -->
    <footer class="footer-distributed">
 
        <div class="footer-left">   
        
            <h3>About</h3>
            <h3><span style="color:#506AE4">Uttarakhand</span></h3>
            <p class="footer-links">
                <a href="#">Home</a> | <a href="#">Department</a> | <a href="#">Contact</a>
            </p>

            <p class="footer-company-name">© UPES, All rights reserved</p>
        </div>

        <div class="footer-center">
            <div>
                <i class="fa fa-map-marker"></i>
                  <p><span>Dehardun,Uttarakhand (248007)
                     </p>
            </div>

            <div>
                <i class="fa fa-phone"></i>
                <p>+91 123-4567-890</p>
            </div>
            <div>
                <i class="fa fa-envelope"></i>
                <p ><a style="color:#506AE4" href="mailto:support@uk.gov.in">support@uk.gov.in</a></p>
            </div>
        </div>
        <div class="footer-right">
            <p class="footer-company-about">
                <span>About this Website</span>
                Contents published in this website are managed and maintained by the team of UPES. For any queries please refer to the developer in the contact us tab.</p>
            <div class="footer-icons">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-instagram"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
                <a href="#"><i class="fa fa-youtube"></i></a>
            </div>
        </div>
    </footer>
<script>
    
    function hamburgerMenuShowFunction() {
        console.log("called")
        var x = document.getElementById("navbarList");
        if (x.style.display === "block") {
            x.style.display = "none";
        } else {
            x.style.display = "block";
        }
    }

</script>
</body>
</html>