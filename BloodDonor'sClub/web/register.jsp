<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Blood Doner's Registration</title>
        
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
        <!-- Bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- External css -->
        <link rel="stylesheet" href="css/main.css">
        <!-- Bootstrap js -->
        <script src="js/bootstrap.bundle.min.js"></script>
        <!-- fontawesome script -->
        <script src="js/all.js"></script>
        <!-- External js -->
        <script type="text/javascript" src="js/main.js"></script>
        <!-- Shortcut icon -->
        <link rel="shortcut icon" href="images/blood.png">
        <!-- JQuery -->
        <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
        <!-- JQuery Validation -->
        <script type="text/javascript" src="js/jquery.validate.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $("#degree").change(function(){
                   	$(this).find("option:selected").each(function(){
                    	var sel=$(this).attr("value");
                    	if(sel){
                    		$(".box").not("."+sel).hide();
                        		$("."+sel).show();
                    	}else{
                    		$(".box").hide();
                    	}
                	});
            	}).change();        
            });
        </script>
        <style>
            .error{
                color: red;
            }
        </style>
        <script type="text/javascript">
            $(function(){
               var $reg=$("#registerform");
                $.validator.addMethod("noSpaces",function(value,element){
                    return value=='' || value.trim().length!=0
                },"* Spaces not allowed")
                $.validator.addMethod("onlyNumber",function(value,element){
                    if(!/^[0-9\s]+$/.test(value))
                    {
                        return false;
                    }
                    else{
                        return true;
                    }
                },"* Only numbers allowed");
                $.validator.addMethod("onlyAlphabet",function(value,element){
                    if(!/^[a-zA-Z\s]+$/.test(value))
                    {
                        return false;
                    }
                    else{
                        return true;
                    }
                },"* Only Alphabet allowed")
                $.validator.addMethod("minAge", function(value, element, min) {
                    var today = new Date();
                    var birthDate = new Date(value);
                    var age = today.getFullYear() - birthDate.getFullYear();
                    if (age > min+1) {
                        return true;
                    }
                    var m = today.getMonth() - birthDate.getMonth();
                    if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
                        age--;
                    }
                    return age >= min;
                }, "You are not old enough!");
                if($reg.length){
                    $reg.validate({
                        rules:{
                            name:{
                                required: true,
                                noSpaces: true,
                                onlyAlphabet: true
                            },
                            password:{
                                required:true
                            },
                            confirmpassword:{
                                required:true,
                                equalTo:'#password'
                            },
                            dob:{
                                required:true,
                                minAge: 18
                            },
                            degree:{
                                required:true
                            },
                            course:{
                              required:true
                            },
                            hrdradio:{
                                required:true
                            },
                            address1:{
                                required:true
                            },
                            address2:{
                                required:true
                            },
                            address3:{
                                required:true
                            },
                            city:{
                                required:true
                            },
                            phone:{
                                required:true,
                                onlyNumber: true,
                                maxlength:10,
                                minlength:10
                            },
                            email:{
                                required:true,
                                email:true
                            },
                            bloodgroup:{
                                required:true
                            },
                            willing:{
                                required:true
                            }
                        },
                        messages:{
                            name:{
                                required:'* Please enter username'
                            },
                            password:{
                                required:'* Please enter Password',
                            },
                            confirmpassword:{
                                required:'* Please enter Password',
                                equalTo:'* Password doesnot match'
                            },
                            dob:{
                                required:'* Please select date of birth',
                                minAge:'* Your not eligible to donate'
                            },
                            degree:{
                                required:'* Please select degree'
                            },
                            course:{
                                required:'* Please select Course'  
                            },
                            hrdradio:{
                                required:'* Please select hostel or dayscholar'
                            },
                            address1:{
                                required:'* Please enter addressline1'
                            },
                            address2:{
                                required:'* Please enter addressline2'
                            },
                            address3:{
                                required:'* Please enter addressline3'
                            },
                            city:{
                                required:'* Please select city'
                            },
                            phone:{
                                required:'* Please enter phone number',
                                maxlength:'* Enter only 10 numbers',
                                minlength:'* Enter valid mobile number'
                            },
                            email:{
                                required:'* Please enter Email ID',
                                email:'* Please enter valid email'
                            },
                            bloodgroup:{
                                required:'* Please select Blood Group'
                            },
                            willing:{
                                required:'* Please select Willing or not'
                            }
                        },
                        errorPlacement:function(error,element){
                            if(element.is(":radio")){
                                error.appendTo(element.parents(".hrd"));
                                error.appendTo(element.parents(".will"));
                            }else{
                                error.insertAfter(element);
                            }
                        }
                    })
                }
            });
        </script>
    </head>
    <body>
        <section>
            <div class="modal-body">
                <div class="col-sm-8 main-section">
                    <div class="modal-content bg-light pb-5">
                        <div>
                            <div class="text-center my-5 h1">Registration Form</div>
                        </div>
                        <form id="registerform" class="col-12" action="RegisterServlet" method="post">
                            <!-- Username -->
                            <div class="input-group">
                                <label for="Name" class="col-4">Username :</label>
                                <input type="text" class="form-control col-5 mb-3" name="name" id="name" placeholder="Enter Your Name"/>
                            </div>
                            <!-- Password -->
                            <div>
                            	<div class="input-group mb-3">
                                    <label for="Password" class="col-4">Password :</label>
                                    <input type="password" class="form-control col-5" name="password" id="password" placeholder="Enter Your Password"/>
                            	</div>
                            </div>
                            <!-- Confirm Password -->
                            <div>
                            	<div class="input-group mb-3">
                            	<label for="ConfirmPassword" class="col-4">Confirm Password :</label>
                                <input type="password" class="form-control col-5" name="confirmpassword" id="confirmpassword" placeholder="Re-Enter Your Password"/>
                            	</div>
                            </div>
                            <!-- Date of Birth -->
                            <div>
                            	<div class="input-group mb-3">
                                    <label for="dob" class="col-4">Date of Birth</label>
                                    <input type="date" id="dob" name="dob" class="form-control col-5" placeholder="DD/MM/YYYY"/>
                            	</div>
                            </div>
                            <!-- Degree -->
                            <div class="input-group mb-3">
                                <label for="Degree" class="col-4">Degree :</label>
                                <select name="degree" id="degree" class="form-control col-5">
                                        <option value="0" selected="" disabled="">Select Degree</option>
                                        <option id="be" value="1">Bachelor of Engineering</option>
                                        <option id="me" value="2">Master of Engineering</option>
                                        <option id="btech" value="3">Bachelor of Technology</option>
                                        <option id="mca" value="4">Master of Computer Applications</option>
                                        <option id="mba" value="5">Master of Business Administrators</option>
                                </select>
                            </div>
                            <!-- BE Degree --> 	
                            <div id="eng" class="input-group mb-3">
                                <label for="eng" class="col-4">Select Course</label>
                                <select id="course" name="course" class="form-control col-5">
                                    <option value="0" selected="" disabled="">Select Course</option>
                                    <option class="box 1" value="1">Civil</option>
                                    <option class="box 1" value="2">Mech</option>
                                    <option class="box 1" value="3">ECE</option>
                                    <option class="box 1" value="4">EEE</option>
                                    <option class="box 1" value="5">BME</option>
                                    <option class="box 3" value="6">IT</option>
                                    <option class="box 2" value="7">AE</option>
                                    <option class="box 2" value="8">VLSI_Design</option>
                                    <option class="box 2" value="9">Structural Engineering</option>
                                    <option class="box 2" value="10">PED</option>
                                    <option class="box 2" value="11">CSE</option>
                                    <option class="box 2" value="12">Engineer Design</option>
                                    <option class="box 2" value="13">CSE (Network)</option>
                                    <option class="box 4" value="14">MCA</option>
                                    <option class="box 5" value="15">MBA</option>
                                    <option class="box 1" value="16">CSE</option>
                                </select>
                                <label for="erroreng" id="infoeng" class="text-danger pl-3"></label>
                            </div>
                            <!-- Hosteller or Dayschollar radio button -->
                            <div>
                                <div class="input-group mb-3 hrd">
                                    <label for="hrd" class="col-4">Hosteller / Day scholar :</label>
                                    <div class="col-4">
                                         <input type="radio" id="hrd" name="hrdradio" value="1" class="col-1"/>Hosteller<label class="col-2"></label>
                                         <input type="radio" id="hrd" name="hrdradio" value="2" class="col-1"/>Day scholar
                                    </div>
                                </div>
                            </div>
                            <!-- Address Info -->
                            <div>
                                <div>
                                    <div class="input-group mb-3">
                                        <label for="address1" class="col-4">Address line 1 :</label>
                                        <input type="text" id="address1" name="address1" class="form-control col-5" placeholder="Enter address line"/>
                                    </div>
                                    <div class="input-group mb-3">
                                        <label for="address2" class="col-4">Address line 2 :</label>
                                        <input type="text" id="address2" name="address2" class="form-control col-5" placeholder="Enter address line"/>
                                    </div>
                                    <div class="input-group mb-3">
                                        <label for="address3" class="col-4">Address line 3 :</label>
                                        <input type="text" id="address3" name="address3" class="form-control col-5" placeholder="Enter address3" />
                                    </div>
                                    <div class="input-group mb-3">
                                        <label for="city" class="col-4">City :</label>
                                        <select id="city" name="city" class="form-control col-5">
                                            <option value="0" selected="" disabled="">Select City</option>
                                            <option value="Madurai">Madurai</option>
                                            <option value="Dindugul">Dindugul</option>
                                            <option value="Theni">Theni</option>
                                            <option value="Sivagangai">Sivagangai</option>
                                            <option value="Viruthunagar">Viruthunagar</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <!-- Phone Number -->
                            <div>
                                <div class="input-group mb-3">
                                    <label for="phone" class="col-4">Phone Number :</label>
                                    <input type="text" id="phone" name="phone" class="form-control col-5" placeholder="Enter Phone number" />
                                </div>
                            </div>
                            <!-- Email Id info -->
                            <div>
                            	<div class="input-group mb-3">
                            		<label for="Email" class="col-4">Email Id :</label>
                            		<input type="email" id="email" name="email" class="form-control col-5" placeholder="Enter Email Id" />
                            	</div>
                            </div>
                            <!-- Blood Group -->
                            <div>
                                <div class="input-group mb-3">
                                    <label for="bloodgroup" class="col-4">Select Blood Group :</label>
                                    <select class="form-control col-5" id="bloodgroup" name="bloodgroup">
                                        <option value="0" selected="" disabled="">Select Blood group</option>
                                        <option value="1">A Positive</option>
                                        <option value="2">B Positive</option>
                                        <option value="3">O Positive</option>
                                        <option value="4">AB Positive</option>
                                        <option value="5">A Negative</option>
                                        <option value="6">B Negative</option>
                                        <option value="7">O Negative</option>
                                        <option value="8">AB Negative</option>
                                    </select>
                                </div>
                            </div>
                            <!-- Willing to donate Blood -->
                            <div>
                            	<div class="input-group mb-2 will">
                            		<label for="willing" class="col-4">Are you willing to donate blood?</label>
                            		<div class="col-5">
                            			<input type="radio" id="willing" name="willing" class="col-1" value="yes">Yes
                            			<input type="radio" id="willing" name="willing" class="col-1" value="no">No	
                            		</div>
                            	</div>
                            </div>
                            <!-- Submit Button -->
                            <div>
                                <div class="input-group">
                                    <label class="col-4"></label>
                                    <input type="submit" value="Submit" class="btn btn-danger px-4 py-2 mt-3">    
                                    <a href="index.jsp" style="margin-left: 90px;color: white; text-decoration: none; background-color: #95999c;padding: 15px 20px;">Cancel</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>