<%-- 
    Document   : viewdetails1
    Created on : Apr 5, 2024, 9:46:27 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <title>viewdetails</title>
        <style>
        header{
        background-image:url("image/classifieds.png");
        background-position: center;
        background-size: cover;
        min-height: 500px;
        }
        .sub-menu{
               display: none;
               top:6%;
               position: relative;     
           }
           .sub-menu ul{
               position: absolute;
           }
        li:hover .sub-menu{
               display: block;
               position: absolute;
               background-color: rgb(0, 45, 117);
               margin-top: 0px;
               margin-left: -8px;
           }
          li:hover .sub-menu ul{
           
           }
          .main ul li:hover .sub-menu ul li{
              width:75px;
              padding: 10px;
               
          }

        .section{
            padding-bottom: 4vw;
            padding-top: 4vw;
        }
        .tabs .indicator{
           background-color: black;
        }
        .tabs .tab a:hover, .tabs .tab a:focus.active {
        background-color: transparent;
        
        }
        @media screen and(max-width:650px){
            header{
                min-height:500px;
            }
        }
      
        </style>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
   
   <script>
       $(document).ready(function(){
           $('.sidenav').sidenav();
           $('.materialboxed').materialbox();
           $('.parallax').parallax();
           $('.tabs').tabs();
           $('.datepicker').datepicker();
       })
   </script>
   <body>
        <header>
            <nav class="nav-wrapper transparent">
                <div class="container">
                
                    <a href="" class="brand-logo">E-classifieds</a>
                    <a href="" class="sidenav-trigger" data-target="mobile"><i class="material-icons">menu</i></a>
                    
                    <ul class="right hide-on-med-and-down">
                   <li><a href="viewdetails1.jsp"> <i class='bx bxs-home'></i>Home</a></li>
                     <li>Education <i class='bx bx-caret-down'></i><div class="sub-menu">
                <ul>
                   
                      <li>  <a href="universityresponse1.jsp">university</a>
                        <li><a href="collegeresponse1.jsp">college</a>
                        <li><a href="courseresponse1.jsp">course</a>
                   
                </ul>
            </div>
        </li>
                     
                     <li><a href="rentalresponse1.jsp">Rental</a></li>
                     <li><a href="realestateresponse1.jsp">Realestate</a></li>
                     <li><a href="cinemaresponse1.jsp">Cinema Halls</a></li>
                     <li><a href="carsresponse1.jsp">Cars</a></li>
                      <li><a href="jobsresponse1.jsp">Jobs</a></li>
                     <li><a href="index.jsp">Logout</a></li>
                </ul>
                  
                    
                    
                    
                    
                  <ul class="sidenav grey darken-4 center" id="mobile">
                      <h3 class="white-text center">E-classifieds</h3>
                      <li> <i class='bx bxs-home'></i> <a href="adminlogin.jsp"class="waves-effect waves-light white-text">Home</a></li>
                      <li> Education<div class="sub-menu">
                <ul>
                   
                     <li><a href="universityresponse1.jsp" class="waves-effect waves-light white-text">university</a></li> 
                       <li><a href="collegeresponse1.jsp" class="waves-effect waves-light white-text">college</a>
                       <li> <a href="courseresponse1.jsp" class="waves-effect waves-light white-text">course</a>
                   
                </ul>
                
            </div>
           </li> 
                      
                       <li><a href="rentalresponse1.jsp" class="waves-effect waves-light white-text">Renatl</a></li>
                      <li><a href="realestateresponse1.jsp" class="waves-effect waves-light white-text">Realeste</a></li> 
                       <li><a href="cinemaresponse1.jsp" class="waves-effect waves-light white-text">Cinema Halls</a></li>
                      <li><a href="carsresponse1.jsp" class="waves-effect waves-light white-text">Cars</a></li> 
                       <li><a href="jobsresponse1.jsp" class="waves-effect waves-light white-text">Jobs</a></li>
                      <li><a href="index.jsp" class="waves-effect waves-light white-text">Logout</a></li> 
                      
                      
                      
                      
                      
                      
                      
                      
                  </ul>  
                    
                </div>
                    </nav>
            </header>
       
   
        <p>A classified ad website is a site that allows people to buy, sell, and trade items online. It's like your very own Craigslist, Kijiji, or Gumtree. It's like an online marketplace, and it can be used to find almost any type of item you're looking for.</p>
        <p>Conciseness: Classified ads are brief and to the point. They typically consist of a headline, a concise description, contact information, and sometimes pricing details. Contact Information: Classified ads provide contact details, allowing interested parties to get in touch with the advertiser.</p>
       <p>By utilizing tactics such as search engine optimization, social media marketing, email marketing, content marketing, and paid advertising, you can increase the visibility of your classified ads website and attract more users to your platform.</p>
       <p>Classified ads generally fall into two types: individuals advertising sales of their personal goods, and advertisements by local businesses. Some businesses use classified ads to hire new employees.</p> 
          
                   
                   
       
       
       
       
       
       
       
       
       
       <section class="container section">
           <div class="row">
               <div class="col s12 16">
                   <img src="image/job.jpg" class="responsive-img materialboxed">
               </div>
                 <div class="col s12 16">
                   <h2 class="black-text" >Jobs</h2>
                   <p>A job can also mean: work that a person does to earn money. The word "job" may be used when a person works for someone else "an employer" who pays them for the work. For example, a teacher's job is to teach children or adults. A taxi driver's job is to drive people in a taxi. A firefighter rescues people from burning buildings and puts out fires. A dermatologist's job is to diagnose and treat skin diseases. Some jobs pay very littl</p>
               </div>
            </div>
               
             <div class="row">
               <div class="col s12 16">
                   <img src="image/car.jpg" class="responsive-img materialboxed">
               </div>
                <div class="col s12 16">
                   <h2 class="black-text" >Cars</h2>
                   <p>A car, or an automobile, is a motor vehicle with wheels. Most definitions of cars state that they run primarily on roads, seat one to eight people, have four wheels, and mainly transport people, not cargo. The Toyota Corolla has been in production since 1966 and is recognized as the world's best-selling automobile.</p>
               </div>
            </div>
           
           <div class="row">
               <div class="col s7 9">
                   <img src="image/home.jpg" class="responsive-img materialboxed">
               </div>
                <div class="col s12 9">
                   <h2 class="black-text" >Rent</h2>
                  <p>a usually fixed periodical return made by a tenant or occupant of property to the owner for the possession and use thereof. especially : an agreed sum paid at fixed intervals by a tenant to the landlord.</p>
                  <p>Rent is beneficial for the tenant because it pays for housing/shelter. Rent income is beneficial for the landlord because it pays for the expenses in owning and maintaining the property. In time, the value of the property can increase in value and the landlord can sell the property and have a capital gain from it.</p>
               </div>
           </section>
       
       
       
       
           <div class="parallax-container">
               <div class="parallax">
                   <img src="image/education.jpg" class="responsive-img">
               </div>  
           </div>  
       <p>Education is a systematic process through which a child or an adult acquires knowledge, experience, skill and sound attitude. It makes an individual civilized, refined, cultured and educated. For a civilized and socialized society, education is the only means. Its goal is to make an individual perfect.</p>
       <p>The function of education is to think better and critically and help develop a perspective and opinions towards life. It can help you gain respect from others and sharpen your mind. Education helps to change society for the better: Society consists of various kinds of people with different mindsets.</p>
        
          
         
         
       <section class="container section">
           <div class="row">
           <div class="col s12 15">
                   <h2 class="black-text" >Education</h2>
                   <p>Education refers to the discipline that is concerned with methods of teaching and learning in schools or school-like environments, as opposed to various nonformal and informal means of socialization</p>
                     
               </div>
           </div>
             
       
            <div class="col s12 16 offset-11">
                   <ul class="tabs">
                       <li class="tab col s6">
                       <a href="#dg" class="black-text">University Details</a>    
                       </li>
                       <li class="tab col s6">
                       <a href="#dh" class="black-text">College Details</a>    
                       </li>
                        <li class="tab col s6">
                       <a href="#di" class="black-text">Course Details</a>    
                       </li>
                   </ul>
                <div class="col s12" id="dg">
                    <p class="flow-text black-text">University</p>
                    <p>The university is both a cultural institution with unique functions and an institution of higher education that inherits, studies, integrates, and innovates the profound academic knowledge, and that is correlated with but independent of the social economic and political institutions.</p>
                    
                </div>
                 <div class="col s12" id="dh">
                    <p class="flow-text black-text">College</p>
                    <p> an educational institution or a constituent part of one. A college may be a degree-awarding tertiary educational institution, a part of a collegiate or federal university, an institution offering vocational education, a further education institution, or a secondary school.</p>
                   
                </div>
                 <div class="col s12" id="di">
                    <p class="flow-text black-text">Course</p>
                    <p>In higher education, a course is a unit of teaching that typically lasts one academic term, is led by one or more instructors (teachers or professors), and has a fixed roster of students. A course usually covers an individual subject. Courses generally have a fixed program of sessions every week during the term, called lessons or classes. Students may receive a grade and academic credit after completion of the course</p>
                    
                </div>
                </div>
     </section>
       <div class="parallax-container">
               <div class="parallax">
                   <img src="image/college.jpg" class="responsive-img">
               </div>  
           </div> 
         
         
         <section class="container section">
             <div calss="row">
                 <div class=" center col s12 15">
                     <h3 class=" black-text">GET IN TOUCH</h3>
                     <p>This Contact Us page is for a marketing agency that works directly with businesses. Since it knows its audience, Brandaffair encourages visitors to "have a talk" one-on-one rather than providing a one-way communication channel via support resources.</p>
                     
                 </div>
                 <div class="col s12 15 offset-12">
                     <form action="">
                         <div class="input-field">
                             <i class="material-icons prefix">email</i>
                             <input type="email" id="email">
                             <label for="email">Email Here</label>
                         </div>
                         <div class="input-field">
                             <i class="material-icons prefix">message</i>
                             <textarea name="email" id="message" class="materialize-textarea"></textarea>
                             <label for="message">Message Here</label>
                              </div>
                         <div class="input-field">
                             <i class="material-icons prefix">today</i>
                             <input type="text" id="date" class="datepicker"> 
                             <label for="date"> choose your Date</label>
                         </div>
                         <div class="input-field">
                             <p>Rating of this site..</p>
                             <p>
                                 <label>
                                     <input type="checkbox">
                                     <span>Exellent</span>    
                                 </label>
                             </p>
                             
                              <p>
                                 <label>
                                     <input type="checkbox">
                                     <span>Good</span>    
                                 </label>
                             </p>
                             </div>
                         <div class="input-field center">
                          <button class="btn black white-text">submit</button>   
                         </div>
                     </form>   
                 </div>
             </div>
         </section>
         
         <footer class="page-footer grey darken-4">
             
                 <div class="  container">
                     <div class="row">
                         <div class=" col s12 16">
                             <h5 >ABOUT US</h5>
                             <p>About eClassifieds 4U. eClassifieds 4u is an endeavor to help people buy and sell the item or service of their interest without paying any service fees.</p>
                              
                         </div>
                         <div class="col s12 14  offset-12">
                             <h5>CONNECT US</h5>
                             <ul>
                                 <li> <a href="" class="white-text">FACEBOOK</a></li>
                                 <li> <a href=""  class="white-text">YOUTUBE</a></li>
                                 <li> <a href=""  class="white-text">TELEGRAM</a></li>
                             </ul>
                         </div>
                     </div>  
                     <div class="container center cyan-text"><h6>E-classifieds</h6></div>
             </div>
         </footer>
         
    </body>
</html>
 