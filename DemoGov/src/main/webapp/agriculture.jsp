<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Directorate of Economics & Statistics-DEPARTMENTS</title>
    <link rel = "icon" href = "${pageContext.request.contextPath }/template/images/india.png" type = "image/x-icon"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/agriculture.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/footer.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/template/css/style.css">
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
            <!-- <li class="navbar-list-items" ><a target="_blank" href="/secondpage.html" class="navbar-link">Dasboard</a></li>
            <li class="navbar-list-items" ><a target="_blank" href="/mainPage.html" class="navbar-link">Des Uttarakhand</a></li>-->
            <li class="navbar-list-items" ><a class="select-language-button" style="text-decoration: none;" href="/">Log Out</a></li>
        </ul>
    </div>

    <!-- MIDSECTION -->
    <div class="midsection">
        <h1 class="department-midsection-text">Departments: Agriculture</h1>
        
        <div class="container">
            <h2>Choose from Table:</h2>

            <div class="select-box">
                <div class="options-container">
                    <div class="option">
                        <input type="radio" class="radio" id="id01" name="category" />
                        <label class="lbl" for="id01">Sugarcane in District</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id02" name="category" />
                        <label class="lbl" for="id02">Sugarcane in Year</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id03" name="category" />
                        <label class="lbl" for="id03">District Cereal Crops</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id04" name="category" />
                        <label class="lbl" for="id04">Yearwise cereal Crops</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id05" name="category" />
                        <label class="lbl" for="id05">Districtwise Oilseed Crops</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id06" name="category" />
                        <label class="lbl" for="id06">Yearwise Oilseed Crops</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id07" name="category" />
                        <label class="lbl" for="id07">Districtwise Pulses Crops</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id08" name="category" />
                        <label class="lbl" for="id08">Yearwise Pulses Crops</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id09" name="category" />
                        <label class="lbl" for="id09">Operational Holding District</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id10" name="category" />
                        <label class="lbl" for="id10">Operational Holding Year</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id11" name="category" />
                        <label class="lbl" for="id11">Average Yeild Major Cerial Crops Districtwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id12" name="category" />
                        <label class="lbl" for="id12">Average Yeild Major Cerial Crops Yearwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id13" name="category" />
                        <label class="lbl" for="id13">Average Yeild Major Oilseed Crops Districtwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id14" name="category" />
                        <label class="lbl" for="id14">Average Yeild Major Oilseed Crops Yearwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id15" name="category" />
                        <label class="lbl" for="id15">Average Yeild Major Pulses Crops Districtwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id16" name="category" />
                        <label class="lbl" for="id16">Average Yeild Major Pulses Crops Yearwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id17" name="category" />
                        <label class="lbl" for="id17">Bio Chemical Fertilizers Districtwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id18" name="category" />
                        <label class="lbl" for="id18">Bio Chemical Fertilizers Yearwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id19" name="category" />
                        <label class="lbl" for="id19">Agriculture Irrigation Districtwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id20" name="category" />
                        <label class="lbl" for="id20">Agriculture Irrigation Potential Year</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id21" name="category" />
                        <label class="lbl" for="id21">Agriculture Irrigation Yearwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id22" name="category" />
                        <label class="lbl" for="id22">Agriculture Irrigational Infrastructure Districtwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id23" name="category" />
                        <label class="lbl" for="id23">Agriculture Irrigational Infrastructure Yearwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id24" name="category" />
                        <label class="lbl" for="id24">Agriculture Land Use Districtwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id25" name="category" />
                        <label class="lbl" for="id25">Agriculture Land Use Yearwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id26" name="category" />
                        <label class="lbl" for="id26">Agriculture Major Crop Cereal Master</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id27" name="category" />
                        <label class="lbl" for="id27">Agriculture Major oilseed Master</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id28" name="category" />
                        <label class="lbl" for="id28">Agriculture Major Crop Pulses Master</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id29" name="category" />
                        <label class="lbl" for="id29">Agriculture Minor Irrigation Achievements District</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id30" name="category" />
                        <label class="lbl" for="id30">Agriculture Minor Irrigation Achievements Yearwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id31" name="category" />
                        <label class="lbl" for="id31">Agriculture No Operational Holding District</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id32" name="category" />
                        <label class="lbl" for="id32">Agriculture No Operational Holding Year</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id33" name="category" />
                        <label class="lbl" for="id33">Agriculture Percentage OF Operational Holding District</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id34" name="category" />
                        <label class="lbl" for="id34">Agriculture Percentage OF Operational Holding Year</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id35" name="category" />
                        <label class="lbl" for="id35">Agriculture Percentage OF Operational Holding District</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id36" name="category" />
                        <label class="lbl" for="id36">Agriculture Percentage OF Operational Holdings Year</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id37" name="category" />
                        <label class="lbl" for="id37">Average Production Major Crops Cereal Districtwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id38" name="category" />
                        <label class="lbl" for="id38">Average Production Major Crops Cereal Yearwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id39" name="category" />
                        <label class="lbl" for="id39">Average Yeild Major Oilseed Crops Districtwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id40" name="category" />
                        <label class="lbl" for="id40">Average Production Major Oilseed Crops Yearwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id41" name="category" />
                        <label class="lbl" for="id41">Average Production Major Pulses Crops Districtwise</label>
                    </div>

                    <div class="option">
                        <input type="radio" class="radio" id="id42" name="category" />
                        <label class="lbl" for="id42">Average Production Major Pulses Crops Yearwise</label>
                    </div>


                </div>

                <div class="selected">
                    Select Table
                </div>
            </div>
        </div>

        <!-- Table 1 (Sugarcane in District) -->
        <form action="/sugarcane-in-district" id="sugarcane-in-district" method="POST" class="input-form">
            <h1 class="heading">Sugarcane in District:</h1>
            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields">

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields">

            <label for="area" class="input-labels"><b>Area:</b></label>
            <input type="text" name="area" class="input-fields">

            <label for="production" class="input-labels"><b>Production:</b></label>
            <input type="text" name="production" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>
        </form>

        <!-- Table 2 (Sugarcane in Year) -->
        <form action="/sugarcane-in-year" id="sugar-in-year" class="input-form">
            <h1 class="heading">Sugarcane in Year:</h1>
            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" >

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="area" class="input-labels"><b>Area:</b></label>
            <input type="text" name="area" class="input-fields">

            <label for="production" class="input-labels"><b>Production:</b></label>
            <input type="text" name="production" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 3 (District Cereal Crops) -->
        <form action="/district-cereal-crops" id="district-cereal-crops" class="input-form">
            <h1 class="heading">District Cereal Crops:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" >

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="crop_id" class="input-labels"><b>Crop Name:</b></label>
            <input type="text" name="crop_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- table 4 (Yearwise Cereal Crops) -->
        <form action="/yearwise-cereal-crops" id="yearwise-cereal-crops" class="input-form">
            <h1 class="heading">Yearwise Cereal Crops:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" >

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="crop_id" class="input-labels"><b>Crop Name:</b></label>
            <input type="text" name="crop_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 5 (District Oilseed Crops) -->
        <form action="/district-oilseeds-crops" id="district-oilseed-crops" class="input-form">
            <h1 class="heading">Districtwise Oilseed Crops:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" >

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="oilseed_id" class="input-labels"><b>Oilseed Name:</b></label>
            <input type="text" name="oilseed_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 6 (Yearwise Oilseed Crops) -->
        <form action="/yearwise-oilseed-crops" id="yearwise-oilseed-crops" class="input-form">
            <h1 class="heading">Yearwise Oilseed Crops:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" >

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="oilseed_id" class="input-labels"><b>Oilseed Name:</b></label>
            <input type="text" name="oilseed_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 7 (District Pulses Crops) -->
        <form action="/district-pulses-crops" id="district-pulses-crops" class="input-form">
            <h1 class="heading">Districtwise Pulses Crops:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" >

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="pulses_id" class="input-labels"><b>Pulses Name:</b></label>
            <input type="text" name="pulses_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- table 8 (Pulses Yearwise) -->
        <form action="/yearwise-pulses-crops" id="yearwise-pulses-crops" class="input-form">
            <h1 class="heading">Yearwise Pulses Crops:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" >

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="pulses_id" class="input-labels"><b>Pulses Name:</b></label>
            <input type="text" name="pulses_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- table 9(Operational Holding district) -->
        <form action="/operational-holding-district" id="operational-holding-district" class="input-form">
            <h1 class="heading">Operational Holding District:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" >

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="marginal" class="input-labels"><b>Marginal:</b></label>
            <input type="text" name="marginal" class="input-fields" />

            <label for="small" class="input-labels"><b>Small:</b></label>
            <input type="text" name="small" class="input-fields" />

            <label for="semi-medium" class="input-labels"><b>Semi-medium:</b></label>
            <input type="text" name="semi-medium" class="input-fields" />

            <label for="medium" class="input-labels"><b>Medium:</b></label>
            <input type="text" name="medium" class="input-fields" />

            <label for="large" class="input-labels"><b>Large:</b></label>
            <input type="text" name="large" class="input-fields" />

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- table 10(Operational Holding Year) -->
        <form action="/operational-holding-year" id="operational-holding-year" class="input-form">
            <h1 class="heading">Operational Holding Year:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" >

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="marginal" class="input-labels"><b>Marginal:</b></label>
            <input type="text" name="marginal" class="input-fields" />

            <label for="small" class="input-labels"><b>Small:</b></label>
            <input type="text" name="small" class="input-fields" />

            <label for="semi-medium" class="input-labels"><b>Semi-medium:</b></label>
            <input type="text" name="semi-medium" class="input-fields" />

            <label for="medium" class="input-labels"><b>Medium:</b></label>
            <input type="text" name="medium" class="input-fields" />

            <label for="large" class="input-labels"><b>Large:</b></label>
            <input type="text" name="large" class="input-fields" />

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 11(Average Yeild Major Cerial Crops Districtwise) -->
        <form action="/average-yeild-district-cereal-crops" id="average-yeild-district-cereal-crops" class="input-form">
            <h1 class="heading">Average Yeild Major Cerial Crops Districtwise:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" >

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="crop_id" class="input-labels"><b>Crop Name:</b></label>
            <input type="text" name="crop_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 12(Average Yeild Major Cerial Crops Yearwise) -->
        <form action="/average-yeild-yearwise-cereal-crops" id="average-yeild-yearwise-cereal-crops" class="input-form">
            <h1 class="heading">Average Yeild Major Cerial Crops Yearwise:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields" />

            <label for="crop_id" class="input-labels"><b>Crop Name:</b></label>
            <input type="text" name="crop_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 13(Average Yeild Major Oilseeds Crops Districtwise) -->
        <form action="/average-yeild-district-oilseed-crops" id="average-yeild-district-oilseed-crops"
            class="input-form">
            <h1 class="heading">Average Yeild Major Oilseed Crops Districtwise:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="oilseed_id" class="input-labels"><b>Oilseed Name:</b></label>
            <input type="text" name="oilseed_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 14(Average Yeild Major Oilseed Crops Yearwise) -->
        <form action="/average-yeild-yearwise-oilseed-crops" id="average-yeild-yearwise-oilseed-crops"
            class="input-form">
            <h1 class="heading">Average Yeild Major Oilseed Crops Yearwise:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields" />

            <label for="oilseed_id" class="input-labels"><b>Oilseed Name:</b></label>
            <input type="text" name="oilseed_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 15(Average Yeild Major Pulses Crops Districtwise) -->
        <form action="/average-yeild-district-Pulses-crops" id="average-yeild-district-Pulses-crops" class="input-form">
            <h1 class="heading">Average Yeild Major Pulses Crops Districtwise:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="pulses_id" class="input-labels"><b>Pulses Name:</b></label>
            <input type="text" name="pulses_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 16(Average Yeild Major pulses Crops Yearwise) -->
        <form action="/average-yeild-yearwise-pulses-crops" id="average-yeild-yearwise-pulses-crops" class="input-form">
            <h1 class="heading">Average Yeild Major Pulses Crops Yearwise:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields" />

            <label for="pulses_id" class="input-labels"><b>Pulses Name:</b></label>
            <input type="text" name="pulses_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 17(Bio Chemical Fertilizers Districtwise) -->
        <form action="/bio-chemical-fertilizers-districtwise" id="bio-chemical-fertilizers-districtwise"
            class="input-form">
            <h1 class="heading">Bio Chemical Fertilizers Districtwise</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="nitrogen" class="input-labels"><b>Nitrogen:</b></label>
            <input type="text" name="nitrogen" class="input-fields">

            <label for="phosphorus" class="input-labels"><b>Phosphorus:</b></label>
            <input type="text" name="phosphorus" class="input-fields">

            <label for="potash" class="input-labels"><b>Potash:</b></label>
            <input type="text" name="potash" class="input-fields">

            <label for="production" class="input-labels"><b>Production:</b></label>
            <input type="text" name="production" class="input-fields">

            <label for="area" class="input-labels"><b>Area:</b></label>
            <input type="text" name="area" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 18(Bio Chemical Fertilizers Yearwise) -->
        <form action="/bio-chemical-fertilizers-yearwise" id="bio-chemical-fertilizers-yearwise" class="input-form">
            <h1 class="heading">Bio Chemical Fertilizers Yearwise</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="total" class="input-labels"><b>Total:</b></label>
            <input type="text" name="total" class="input-fields" />

            <label for="nitrogen" class="input-labels"><b>Nitrogen:</b></label>
            <input type="text" name="nitrogen" class="input-fields">

            <label for="phosphorus" class="input-labels"><b>Phosphorus:</b></label>
            <input type="text" name="phosphorus" class="input-fields">

            <label for="potash" class="input-labels"><b>Potash:</b></label>
            <input type="text" name="potash" class="input-fields">

            <label for="production" class="input-labels"><b>Production:</b></label>
            <input type="text" name="production" class="input-fields">

            <label for="area" class="input-labels"><b>Area:</b></label>
            <input type="text" name="area" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 19(Agriculture Irrigation District) -->
        <form action="/agriculture-irrigation-districtwise" id="agriculture-irrigation-districtwise" class="input-form">
            <h1 class="heading">Agriculture Irrigation Districtwise</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="canal" class="input-labels"><b>Canal:</b></label>
            <input type="text" name="canal" class="input-fields">

            <label for="tubewell" class="input-labels"><b>Tubewell:</b></label>
            <input type="text" name="tubewell" class="input-fields">

            <label for="other-well" class="input-labels"><b>Other Well:</b></label>
            <input type="text" name="other-well" class="input-fields">

            <label for="ponds" class="input-labels"><b>Ponds:</b></label>
            <input type="text" name="ponds" class="input-fields">

            <label for="others" class="input-labels"><b>Others:</b></label>
            <input type="text" name="others" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 20(Agriculture Irrigation Potential Year) -->
        <form action="/agriculture-irrigation-potential-year" id="agriculture-irrigation-potential-year"
            class="input-form">
            <h1 class="heading">Agriculture Irrigation Potential Year</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="potential_state-minor" class="input-labels"><b>Potential State Minor:</b></label>
            <input type="text" name="potential_state-minor" class="input-fields">

            <label for="potential_private-minor" class="input-labels"><b>Potential Private Minor:</b></label>
            <input type="text" name="potential_private-minor" class="input-fields">

            <label for="potential_large" class="input-labels"><b>Potential Large:</b></label>
            <input type="text" name="potential_large" class="input-fields">

            <label for="potential_total" class="input-labels"><b>Potential Total:</b></label>
            <input type="text" name="potential_total" class="input-fields">

            <label for="uses_state-minor" class="input-labels"><b>Uses State Minor:</b></label>
            <input type="text" name="uses_state-minor" class="input-fields">

            <label for="uses_private-minor" class="input-labels"><b>Uses Private Minor:</b></label>
            <input type="text" name="uses_private-minor" class="input-fields">

            <label for="uses_large" class="input-labels"><b>Uses Large:</b></label>
            <input type="text" name="uses_large" class="input-fields">

            <label for="uses_total" class="input-labels"><b>Uses Total:</b></label>
            <input type="text" name="uses_total" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 21(Agriculture Irrigation year) -->
        <form action="/agriculture-irrigation-year" id="agriculture-irrigation-year" class="input-form">
            <h1 class="heading">Agriculture Irrigation Yearwise</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">


            <label for="canal" class="input-labels"><b>Canal:</b></label>
            <input type="text" name="canal" class="input-fields">

            <label for="tubewell" class="input-labels"><b>Tubewell:</b></label>
            <input type="text" name="tubewell" class="input-fields">

            <label for="other-well" class="input-labels"><b>Other Well:</b></label>
            <input type="text" name="other-well" class="input-fields">

            <label for="ponds" class="input-labels"><b>Ponds:</b></label>
            <input type="text" name="ponds" class="input-fields">

            <label for="others" class="input-labels"><b>Others:</b></label>
            <input type="text" name="others" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 22 (Agriculture Irrigational Infrastructure Districtwise) -->
        <form action="/agri_irrigational_infrastructure_district" id="agri_irrigational_infrastructure_district"
            class="input-form">
            <h1 class="heading">Agriculture Irrigational Infrastructure Districtwise</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="length_of_canals_km" class="input-labels"><b>Length Of Canals in km:</b></label>
            <input type="text" name="length_of_canals_km" class="input-fields">

            <label for="length_of_lift_canals_km" class="input-labels"><b>Length Of Lift Canals in km:</b></label>
            <input type="text" name="length_of_lift_canals_km" class="input-fields">

            <label for="tubewells_no" class="input-labels"><b>Tubewells No:</b></label>
            <input type="text" name="tubewells_no" class="input-fields">

            <label for="revenue_collection_by_irrigation_lakhs" class="input-labels"><b>Revenue Collection By Irrigation
                    Lakhs:</b></label>
            <input type="text" name="revenue_collection_by_irrigation_lakhs" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 23 (Agriculture Irrigational Infrastructure Yearwise) -->
        <form action="/agri_irrigational_infrastructure_year" id="agri_irrigational_infrastructure_year"
            class="input-form">
            <h1 class="heading">Agriculture Irrigational Infrastructure Yearwise</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="length_of_canals_km" class="input-labels"><b>Length Of Canals in km:</b></label>
            <input type="text" name="length_of_canals_km" class="input-fields">

            <label for="length_of_lift_canals_km" class="input-labels"><b>Length Of Lift Canals in km:</b></label>
            <input type="text" name="length_of_lift_canals_km" class="input-fields">

            <label for="tubewells_no" class="input-labels"><b>Tubewells No:</b></label>
            <input type="text" name="tubewells_no" class="input-fields">

            <label for="revenue_collection_by_irrigation_lakhs" class="input-labels"><b>Revenue Collection By Irrigation
                    Lakhs:</b></label>
            <input type="text" name="revenue_collection_by_irrigation_lakhs" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 24 (Agriculture Land Use Districtwise) -->
        <form action="/agri_land_use_district" id="agri_land_use_district" class="input-form">
            <h1 class="heading">Agriculture Land Use Districtwise</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="geogrophical_area" class="input-labels"><b>Geogrophical Area:</b></label>
            <input type="text" name="geogrophical_area" class="input-fields">

            <label for="reported_area" class="input-labels"><b>Reported Area:</b></label>
            <input type="text" name="reported_area" class="input-fields">

            <label for="area_under_forest" class="input-labels"><b>Area Under Forest:</b></label>
            <input type="text" name="area_under_forest" class="input-fields">

            <label for="barren_land" class="input-labels"><b>Barren Land:</b></label>
            <input type="text" name="barren_land" class="input-fields">

            <label for="other_land" class="input-labels"><b>Other Land:</b></label>
            <input type="text" name="other_land" class="input-fields">

            <label for="culturable_waste_land" class="input-labels"><b>Culturable Waste Land:</b></label>
            <input type="text" name="culturable_waste_land" class="input-fields">

            <label for="pastures_grazing_land" class="input-labels"><b>Pastures Grazing Land:</b></label>
            <input type="text" name="pastures_grazing_land" class="input-fields">

            <label for="trees_occupied_land" class="input-labels"><b>Trees Occupied Land:</b></label>
            <input type="text" name="trees_occupied_land" class="input-fields">

            <label for="fallow_land" class="input-labels"><b>Fallow Land:</b></label>
            <input type="text" name="fallow_land" class="input-fields">

            <label for="other_fallow_land" class="input-labels"><b>Other Fallow Land:</b></label>
            <input type="text" name="other_fallow_land" class="input-fields">

            <label for="net_sown_area" class="input-labels"><b>Net Sown Area:</b></label>
            <input type="text" name="net_sown_area" class="input-fields">

            <label for="gross_cropped_area" class="input-labels"><b>Gross Cropped Area:</b></label>
            <input type="text" name="gross_cropped_area" class="input-fields">

            <label for="net_irrigated_area" class="input-labels"><b>Net Irrigated Area:</b></label>
            <input type="text" name="net_irrigated_area" class="input-fields">

            <label for="gross_irrigated_area" class="input-labels"><b>Gross Irrigated Area:</b></label>
            <input type="text" name="gross_irrigated_area" class="input-fields">

            <label for="net_irrigated-to-cropped_area" class="input-labels"><b>Net Irrigated To Cropped
                    Area:</b></label>
            <input type="text" name="net_irrigated-to-cropped_area" class="input-fields">

            <label for="gross_irrigated-to-cropped_area" class="input-labels"><b>Gross Irrigated To Cropped
                    Area:</b></label>
            <input type="text" name="gross_irrigated-to-cropped_area" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 24 (Agriculture Land Use Yearwise) -->
        <form action="/agri_land_use_year" id="agri_land_use_year" class="input-form">
            <h1 class="heading">Agriculture Land Use Yearwise</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="geogrophical_area" class="input-labels"><b>Geogrophical Area:</b></label>
            <input type="text" name="geogrophical_area" class="input-fields">

            <label for="reported_area" class="input-labels"><b>Reported Area:</b></label>
            <input type="text" name="reported_area" class="input-fields">

            <label for="area_under_forest" class="input-labels"><b>Area Under Forest:</b></label>
            <input type="text" name="area_under_forest" class="input-fields">

            <label for="barren_land" class="input-labels"><b>Barren Land:</b></label>
            <input type="text" name="barren_land" class="input-fields">

            <label for="other_land" class="input-labels"><b>Other Land:</b></label>
            <input type="text" name="other_land" class="input-fields">

            <label for="culturable_waste_land" class="input-labels"><b>Culturable Waste Land:</b></label>
            <input type="text" name="culturable_waste_land" class="input-fields">

            <label for="pastures_grazing_land" class="input-labels"><b>Pastures Grazing Land:</b></label>
            <input type="text" name="pastures_grazing_land" class="input-fields">

            <label for="trees_occupied_land" class="input-labels"><b>Trees Occupied Land:</b></label>
            <input type="text" name="trees_occupied_land" class="input-fields">

            <label for="fallow_land" class="input-labels"><b>Fallow Land:</b></label>
            <input type="text" name="fallow_land" class="input-fields">

            <label for="other_fallow_land" class="input-labels"><b>Other Fallow Land:</b></label>
            <input type="text" name="other_fallow_land" class="input-fields">

            <label for="net_sown_area" class="input-labels"><b>Net Sown Area:</b></label>
            <input type="text" name="net_sown_area" class="input-fields">

            <label for="gross_cropped_area" class="input-labels"><b>Gross Cropped Area:</b></label>
            <input type="text" name="gross_cropped_area" class="input-fields">

            <label for="net_irrigated_area" class="input-labels"><b>Net Irrigated Area:</b></label>
            <input type="text" name="net_irrigated_area" class="input-fields">

            <label for="gross_irrigated_area" class="input-labels"><b>Gross Irrigated Area:</b></label>
            <input type="text" name="gross_irrigated_area" class="input-fields">

            <label for="net_irrigated-to-cropped_area" class="input-labels"><b>Net Irrigated To Cropped
                    Area:</b></label>
            <input type="text" name="net_irrigated-to-cropped_area" class="input-fields">

            <label for="gross_irrigated-to-cropped_area" class="input-labels"><b>Gross Irrigated To Cropped
                    Area:</b></label>
            <input type="text" name="gross_irrigated-to-cropped_area" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 26 (Agriculture Major Crop Cereal Master) -->
        <form action="/agri_major_crops_cereal_master" id="agri_major_crops_cereal_master" class="input-form">
            <h1 class="heading">Agriculture Major Crop Cereal Master</h1>
            <label for="crop_name" class="input-labels"><b>Crop Name:</b></label>
            <input type="text" name="crop_name" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 27 (Agriculture Major oilseed  Master) -->
        <form action="/agri_major_crops_oilseeds_master" id="agri_major_crops_oilseeds_master" class="input-form">
            <h1 class="heading">Agriculture Major oilseed Master</h1>
            <label for="oilseeds_name" class="input-labels"><b>Oilseed Name:</b></label>
            <input type="text" name="oilseeds_name" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 28 (Agriculture Major Crop Pulses Master) -->
        <form action="/agri_major_crops_pulses_master" id="agri_major_crops_pulses_master" class="input-form">
            <h1 class="heading">Agriculture Major Crop Pulses Master</h1>
            <label for="pulses_name" class="input-labels"><b>Pulses Name:</b></label>
            <input type="text" name="pulses_name" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 29 (Agriculture Minor Irrigation Achievements District) -->
        <form action="/agri_minor_irrigation_achievements_district" id="agri_minor_irrigation_achievements_district"
            class="input-form">
            <h1 class="heading">Agriculture Minor Irrigation Achievements District</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="boring_pump_sets_free_boring_no" class="input-labels"><b>Boring Pump Sets Free Boring
                    No:</b></label>
            <input type="text" name="boring_pump_sets_free_boring_no" class="input-fields">

            <label for="electric_tubewells_no" class="input-labels"><b>Electric Tubewells No:</b></label>
            <input type="text" name="electric_tubewells_no" class="input-fields">

            <label for="hydrums_no" class="input-labels"><b>Hydrums No:</b></label>
            <input type="text" name="hydrums_no" class="input-fields">

            <label for="water_tanks_no" class="input-labels"><b>Water Tanks No:</b></label>
            <input type="text" name="water_tanks_no" class="input-fields">

            <label for="gool_counstruction_km" class="input-labels"><b>Gool Counstruction km:</b></label>
            <input type="text" name="gool_counstruction_km" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 30 (Agriculture Minor Irrigation Achievements Yearwise) -->
        <form action="/agri_minor_irrigation_achievements_year" id="agri_minor_irrigation_achievements_year"
            class="input-form">
            <h1 class="heading">Agriculture Minor Irrigation Achievements Yearwise</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="boring_pump_sets_free_boring_no" class="input-labels"><b>Boring Pump Sets Free Boring
                    No:</b></label>
            <input type="text" name="boring_pump_sets_free_boring_no" class="input-fields">

            <label for="electric_tubewells_no" class="input-labels"><b>Electric Tubewells No:</b></label>
            <input type="text" name="electric_tubewells_no" class="input-fields">

            <label for="hydrums_no" class="input-labels"><b>Hydrums No:</b></label>
            <input type="text" name="hydrums_no" class="input-fields">

            <label for="water_tanks_no" class="input-labels"><b>Water Tanks No:</b></label>
            <input type="text" name="water_tanks_no" class="input-fields">

            <label for="gool_counstruction_km" class="input-labels"><b>Gool Counstruction km:</b></label>
            <input type="text" name="gool_counstruction_km" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 31(Agriculture No Operational Holding District) -->
        <form action="/agri_no_operational_holdings_district" id="agri_no_operational_holdings_district"
            class="input-form">
            <h1 class="heading">Agriculture No Operational Holding District:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="marginal" class="input-labels"><b>Marginal:</b></label>
            <input type="text" name="marginal" class="input-fields" />

            <label for="small" class="input-labels"><b>Small:</b></label>
            <input type="text" name="small" class="input-fields" />

            <label for="semi-medium" class="input-labels"><b>Semi-medium:</b></label>
            <input type="text" name="semi-medium" class="input-fields" />

            <label for="medium" class="input-labels"><b>Medium:</b></label>
            <input type="text" name="medium" class="input-fields" />

            <label for="large" class="input-labels"><b>Large:</b></label>
            <input type="text" name="large" class="input-fields" />

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- table 32(Agriculture No Operational Holding Year) -->
        <form action="/agri_no_operational_holdings_year" id="agri_no_operational_holdings_year" class="input-form">
            <h1 class="heading">Agriculture No Operational Holding Year:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="marginal" class="input-labels"><b>Marginal:</b></label>
            <input type="text" name="marginal" class="input-fields" />

            <label for="small" class="input-labels"><b>Small:</b></label>
            <input type="text" name="small" class="input-fields" />

            <label for="semi-medium" class="input-labels"><b>Semi-medium:</b></label>
            <input type="text" name="semi-medium" class="input-fields" />

            <label for="medium" class="input-labels"><b>Medium:</b></label>
            <input type="text" name="medium" class="input-fields" />

            <label for="large" class="input-labels"><b>Large:</b></label>
            <input type="text" name="large" class="input-fields" />

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 33(Agriculture Percentage OF Area Operational Holding District) -->
        <form action="/agri_percentage_of_area_operational_holdings_district"
            id="agri_percentage_of_area_operational_holdings_district" class="input-form">
            <h1 class="heading">Agriculture Percentage OF Operational Holding District:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="marginal" class="input-labels"><b>Marginal:</b></label>
            <input type="text" name="marginal" class="input-fields" />

            <label for="small" class="input-labels"><b>Small:</b></label>
            <input type="text" name="small" class="input-fields" />

            <label for="semi-medium" class="input-labels"><b>Semi-medium:</b></label>
            <input type="text" name="semi-medium" class="input-fields" />

            <label for="medium" class="input-labels"><b>Medium:</b></label>
            <input type="text" name="medium" class="input-fields" />

            <label for="large" class="input-labels"><b>Large:</b></label>
            <input type="text" name="large" class="input-fields" />

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 34(Agriculture Percentage OF Area Operational Holding Year) -->
        <form action="/agri_percentage_of_area_operational_holdings_year"
            id="agri_percentage_of_area_operational_holdings_year" class="input-form">
            <h1 class="heading">Agriculture Percentage OF Operational Holding Year:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="marginal" class="input-labels"><b>Marginal:</b></label>
            <input type="text" name="marginal" class="input-fields" />

            <label for="small" class="input-labels"><b>Small:</b></label>
            <input type="text" name="small" class="input-fields" />

            <label for="semi-medium" class="input-labels"><b>Semi-medium:</b></label>
            <input type="text" name="semi-medium" class="input-fields" />

            <label for="medium" class="input-labels"><b>Medium:</b></label>
            <input type="text" name="medium" class="input-fields" />

            <label for="large" class="input-labels"><b>Large:</b></label>
            <input type="text" name="large" class="input-fields" />

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 35(Agriculture Percentage Operational Holding District) -->
        <form action="/agri_percentage_operational_holdings_district" id="agri_percentage_operational_holdings_district"
            class="input-form">
            <h1 class="heading">Agriculture Percentage OF Operational Holding District:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="marginal" class="input-labels"><b>Marginal:</b></label>
            <input type="text" name="marginal" class="input-fields" />

            <label for="small" class="input-labels"><b>Small:</b></label>
            <input type="text" name="small" class="input-fields" />

            <label for="semi-medium" class="input-labels"><b>Semi-medium:</b></label>
            <input type="text" name="semi-medium" class="input-fields" />

            <label for="medium" class="input-labels"><b>Medium:</b></label>
            <input type="text" name="medium" class="input-fields" />

            <label for="large" class="input-labels"><b>Large:</b></label>
            <input type="text" name="large" class="input-fields" />

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 36(Agriculture Percentage Operational Holdings Year) -->
        <form action="/agri_percentage_operational_holdings_year" id="agri_percentage_operational_holdings_year"
            class="input-form">
            <h1 class="heading">Agriculture Percentage OF Operational Holdings Year:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="marginal" class="input-labels"><b>Marginal:</b></label>
            <input type="text" name="marginal" class="input-fields" />

            <label for="small" class="input-labels"><b>Small:</b></label>
            <input type="text" name="small" class="input-fields" />

            <label for="semi-medium" class="input-labels"><b>Semi-medium:</b></label>
            <input type="text" name="semi-medium" class="input-fields" />

            <label for="medium" class="input-labels"><b>Medium:</b></label>
            <input type="text" name="medium" class="input-fields" />

            <label for="large" class="input-labels"><b>Large:</b></label>
            <input type="text" name="large" class="input-fields" />

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 37(Average Production Major Crops Cereal Districtwise) -->
        <form action="/agri_production_major_crops_cereal_district" id="agri_production_major_crops_cereal_district"
            class="input-form">
            <h1 class="heading">Average Production Major Crops Cereal Districtwise</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="crop_id" class="input-labels"><b>Crop Name:</b></label>
            <input type="text" name="crop_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 38(Average Production Major Crops Cereal Yearwise) -->
        <form action="/agri_production_major_crops_cereal_year" id="agri_production_major_crops_cereal_year"
            class="input-form">
            <h1 class="heading">Average Production Major Crops Cereal Yearwise:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields" />

            <label for="crop_id" class="input-labels"><b>Crop Name:</b></label>
            <input type="text" name="crop_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 39(Average Production Major Oilseeds Crops Districtwise) -->
        <form action="/agri_production_major_crops_oilseeds_district" id="agri_production_major_crops_oilseeds_district"
            class="input-form">
            <h1 class="heading">Average Yeild Major Oilseed Crops Districtwise:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="oilseed_id" class="input-labels"><b>Oilseed Name:</b></label>
            <input type="text" name="oilseed_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 40(Average Production Major Oilseed Crops Yearwise) -->
        <form action="/agri_production_major_crops_oilseeds_year" id="agri_production_major_crops_oilseeds_year"
            class="input-form">
            <h1 class="heading">Average Production Major Oilseed Crops Yearwise:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields" />

            <label for="oilseed_id" class="input-labels"><b>Oilseed Name:</b></label>
            <input type="text" name="oilseed_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 41(Average Production Major Pulses Crops Districtwise) -->
        <form action="/agri_production_major_crops_pulses_district" id="agri_production_major_crops_pulses_district"
            class="input-form">
            <h1 class="heading">Average Production Major Pulses Crops Districtwise:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields">

            <label for="district" class="input-labels"><b>District:</b></label>
            <input type="text" name="district" class="input-fields" />

            <label for="pulses_id" class="input-labels"><b>Pulses Name:</b></label>
            <input type="text" name="pulses_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>

        <!-- Table 42(Average Production Major pulses Crops Yearwise) -->
        <form action="/agri_production_major_crops_pulses_year" id="agri_production_major_crops_pulses_year"
            class="input-form">
            <h1 class="heading">Average Production Major Pulses Crops Yearwise:</h1>

            <label for="loc_category" class="input-labels"><b>Location Category:</b></label>
            <input type="number" name="loc_category" class="input-fields" readonly>

            <label for="loc_id" class="input-labels"><b>Location Id:</b></label>
            <input type="text" name="loc_id" class="input-fields">

            <label for="year" class="input-labels"><b>Year:</b></label>
            <input type="number" name="year" class="input-fields" />

            <label for="pulses_id" class="input-labels"><b>Pulses Name:</b></label>
            <input type="text" name="pulses_id" class="input-fields">

            <label for="amount" class="input-labels"><b>Amount:</b></label>
            <input type="text" name="amount" class="input-fields">

            <button type="submit" class="submit-button">Submit</button>

        </form>
    </div>

    <!-- FOOTER SECTION -->
    <footer class="footer-distributed">
 
        <div class="footer-left">   
        
            <h3>About</h3>
            <h3><span style="color:#506AE4">Uttarakhand</span></h3>
            <p class="footer-links">
                <a href="#">Home</a> | <a href="#">Department</a> | <a href="#">Contact</a>
            </p>

            <p class="footer-company-name">� Government of Uttarakhand, All rights reserved</p>
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
        const selected = document.querySelector(".selected");
        const optionsContainer = document.querySelector(".options-container");

        const optionsList = document.querySelectorAll(".option");

        selected.addEventListener("click", () => {
            optionsContainer.classList.toggle("active");
        });

        optionsList.forEach(o => {
            o.addEventListener("click", () => {
                selected.innerHTML = o.querySelector("label").innerHTML;
                optionsContainer.classList.remove("active");
            });
        });

        function hamburgerMenuShowFunction() {
            console.log("called")
            var x = document.getElementById("navbarList");
            if (x.style.display === "block") {
                x.style.display = "none";
            } else {
                x.style.display = "block";
            }
        }

        function myFunction() {
            var x = document.querySelectorAll(".input-form");
            x.forEach(val => {
                val.style.display = "none";
            })
        }

        document.getElementById("id01").addEventListener("click", () => {
            myFunction();
            document.getElementById("sugarcane-in-district").style.display = "block"
        });

        document.getElementById("id02").addEventListener("click", () => {
            myFunction();
            document.getElementById("sugar-in-year").style.display = "block"
        });

        document.getElementById("id03").addEventListener("click", () => {
            myFunction();
            document.getElementById("district-cereal-crops").style.display = "block"
        });

        document.getElementById("id04").addEventListener("click", () => {
            myFunction();
            document.getElementById("yearwise-cereal-crops").style.display = "block"
        });

        document.getElementById("id05").addEventListener("click", () => {
            myFunction();
            document.getElementById("district-oilseed-crops").style.display = "block"
        });

        document.getElementById("id06").addEventListener("click", () => {
            myFunction();
            document.getElementById("yearwise-oilseed-crops").style.display = "block"
        });

        document.getElementById("id07").addEventListener("click", () => {
            myFunction();
            document.getElementById("district-pulses-crops").style.display = "block"
        });

        document.getElementById("id08").addEventListener("click", () => {
            myFunction();
            document.getElementById("yearwise-pulses-crops").style.display = "block"
        });

        document.getElementById("id09").addEventListener("click", () => {
            myFunction();
            document.getElementById("operational-holding-district").style.display = "block"
        });

        document.getElementById("id10").addEventListener("click", () => {
            myFunction();
            document.getElementById("operational-holding-year").style.display = "block"
        });

        document.getElementById("id11").addEventListener("click", () => {
            myFunction();
            document.getElementById("average-yeild-district-cereal-crops").style.display = "block"
        });

        document.getElementById("id12").addEventListener("click", () => {
            myFunction();
            document.getElementById("average-yeild-yearwise-cereal-crops").style.display = "block"
        });


        document.getElementById("id13").addEventListener("click", () => {
            myFunction();
            document.getElementById("average-yeild-district-oilseed-crops").style.display = "block"
        });

        document.getElementById("id14").addEventListener("click", () => {
            myFunction();
            document.getElementById("average-yeild-yearwise-oilseed-crops").style.display = "block"
        });


        document.getElementById("id15").addEventListener("click", () => {
            myFunction();
            document.getElementById("average-yeild-district-Pulses-crops").style.display = "block"
        });


        document.getElementById("id16").addEventListener("click", () => {
            myFunction();
            document.getElementById("average-yeild-yearwise-pulses-crops").style.display = "block"
        });


        document.getElementById("id17").addEventListener("click", () => {
            myFunction();
            document.getElementById("bio-chemical-fertilizers-districtwise").style.display = "block"
        });


        document.getElementById("id18").addEventListener("click", () => {
            myFunction();
            document.getElementById("bio-chemical-fertilizers-yearwise").style.display = "block"
        });


        document.getElementById("id19").addEventListener("click", () => {
            myFunction();
            document.getElementById("agriculture-irrigation-districtwise").style.display = "block"
        });


        document.getElementById("id20").addEventListener("click", () => {
            myFunction();
            document.getElementById("agriculture-irrigation-potential-year").style.display = "block"
        });


        document.getElementById("id21").addEventListener("click", () => {
            myFunction();
            document.getElementById("agriculture-irrigation-year").style.display = "block"
        });


        document.getElementById("id22").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_irrigational_infrastructure_district").style.display = "block"
        });


        document.getElementById("id23").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_irrigational_infrastructure_year").style.display = "block"
        });


        document.getElementById("id24").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_land_use_district").style.display = "block"
        });


        document.getElementById("id25").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_land_use_year").style.display = "block"
        });


        document.getElementById("id26").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_major_crops_cereal_master").style.display = "block"
        });


        document.getElementById("id27").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_major_crops_oilseeds_master").style.display = "block"
        });


        document.getElementById("id28").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_major_crops_pulses_master").style.display = "block"
        });


        document.getElementById("id29").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_minor_irrigation_achievements_district").style.display = "block"
        });

        document.getElementById("id30").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_minor_irrigation_achievements_year").style.display = "block"
        });


        document.getElementById("id31").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_no_operational_holdings_district").style.display = "block"
        });


        document.getElementById("id32").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_no_operational_holdings_year").style.display = "block"
        });

        document.getElementById("id33").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_percentage_of_area_operational_holdings_district").style.display = "block"
        });

        document.getElementById("id34").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_percentage_of_area_operational_holdings_year").style.display = "block"
        });

        document.getElementById("id35").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_percentage_operational_holdings_district").style.display = "block"
        });

        document.getElementById("id36").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_percentage_operational_holdings_year").style.display = "block"
        });

        document.getElementById("id37").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_production_major_crops_cereal_district").style.display = "block"
        });

        document.getElementById("id38").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_production_major_crops_cereal_year").style.display = "block"
        });

        document.getElementById("id39").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_production_major_crops_oilseeds_district").style.display = "block"
        });

        document.getElementById("id40").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_production_major_crops_oilseeds_year").style.display = "block"
        });

        document.getElementById("id41").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_production_major_crops_pulses_district").style.display = "block"
        });

        document.getElementById("id42").addEventListener("click", () => {
            myFunction();
            document.getElementById("agri_production_major_crops_pulses_year").style.display = "block"
        });

    </script>

</body>

</html>