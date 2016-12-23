#--------------------------complete form_validation--------------------------------//
#------------------------complete form_validation---on submit---------------------//
$(document).ready ->
  $('#submit').click ->
    firstname = $('#firstname').val()
    lastname = $('#lastname').val()
    email = $('#email').val()
    Retypeemail = $('#Retypeemail').val()
    phone = $('#phone').val()
    state = $('#state').val()
    isChecked = $('input[name=radio1]:checked').val()
    birth = $('#birth').val()
    address = $('#address').val()
    isChecked1 = $('input[name=checkbox]:checked').val()
    name_regex = /^[a-zA-Z]{2,25}$/
    email_regex = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-Z0-9]{2,4}$/
    phone_regex = /^\(?([0-9]{3})\)?([0-9]{3})?([0-9]{4})$/
    birth_regex = /^([0-9]{2})\/([0-9]{2})\/([0-9]{4})$/
    address_regex = /^([a-zA-Z0-9_\.\-\/\:\;])+$/
    #--------------------------firstname_validation--------------------------------//
    if !firstname.match(name_regex) or firstname.length == 0
      $('#errormessage1').text '* Please enter your First Name *'
      $('#firstname').css 'box-shadow', '0px 0px 6px 1px #ff3333'
      $('#firstname').focus()
      $('#wrongfirst').show()
      $('#rightfirst').hide()
      false
    else if !lastname.match(name_regex) or lastname.length == 0
      $('#errormessage2').text '*Please enter your Last Name*'
      $('#lastname').css 'box-shadow', '0px 0px 6px 1px #ff3333'
      $('#lastname').focus()
      $('#wronglast').show()
      $('#rightlast').hide()
      false
    else if !email.match(email_regex) or email.length == 0
      $('#errormessage3').text '* Please enter a email address *'
      $('#email').css 'box-shadow', '0px 0px 6px 1px #ff3333'
      $('#email').focus()
      $('#wrongemail').show()
      $('#rightemail').hide()
      false
    else if Retypeemail != email or Retypeemail.length == 0
      $('#errormessage4').text '* Please enter a Retype email address *'
      $('#Retypeemail').css 'box-shadow', '0px 0px 6px 1px #ff3333'
      $('#Retypeemail').focus()
      $('#wrongRetypeemail').show()
      $('#rightRetypeemail').hide()
      false
    else if !phone.match(phone_regex) or phone.length == 0
      $('#errormessage5').text '* Please enter your Phone Number *'
      $('#phone').css 'box-shadow', '0px 0px 6px 1px #ff3333'
      $('#phone').focus()
      $('#wrongphone').show()
      $('#rightphone').hide()
      false
    else if state == 'Please Choose your state'
      $('#errormessage6').text '* Please Choose your state'
      $('#state').css 'box-shadow', '0px 0px 6px 1px #ff3333'
      $('#state').focus()
      $('#wrongstate').show()
      $('#rightstate').hide()
      false
    else if !isChecked
      $('#errormessage7').text '* Please Choose any one option'
      false
    else if !birth.match(birth_regex) or birth.length == 0
      $('#errormessage8').text '* Please enter your Birth date *'
      $('#birth').css 'box-shadow', '0px 0px 6px 1px #ff3333'
      $('#birth').focus()
      $('#wrongbirth').show()
      $('#rightbirth').hide()
      false
    else if !address.match(address_regex) or address.length == 0
      $('#errormessage9').text '* Please enter your Birth date *'
      #this segment displays the validation rule for selection
      $('#address').css 'box-shadow', '0px 0px 6px 1px #ff3333'
      $('#address').focus()
      $('#wrongaddress').show()
      $('#rightaddress').hide()
      false
    else if !isChecked1
      $('#errormessage10').text '<---Please accept TERMS AND CONDITONS'
      #this segment displays the validation rule for selection
      false
    else
      alert 'Form Submitted successfuly..!!! '
      true
  return
#--------------------------complete form_validation--- on submit------------------------//
#--------------------------events_validation--------------------------------//
#--------------------------firstname onclick_validation--------------------------------//
$(document).ready ->
  $('#firstname').click ->
    firstname = $('#firstname').val()
    name_regex = /^[a-zA-Z]{2,25}$/
    if !firstname.match(name_regex) or firstname == '' or firstname.length == 0
      $('#errormessage1').hide()
      $('#firstname').css
        'background-color': '#ffffff'
        'box-shadow': 'none'
        'border': '1px solid #00a2de'
      $('#rightfirst').hide()
      $('#wrongfirst').hide()
    else
      return false
    return
  return
#--------------------------firstname onblur_validation--------------------------------//
$(document).ready ->
  $('#firstname').blur ->
    firstname = $('#firstname').val()
    name_regex = /^[a-zA-Z]{2,25}$/
    if !firstname.match(name_regex) or firstname == '' or firstname.length == 0
      $('#errormessage1').show()
      $('#errormessage1').text '* Please enter a valid Name *'
      $('#firstname').focus()
      $('#firstname').css 'box-shadow', '0px 0px 6px 1px #ff3333'
      $('#wrongfirst').show()
      $('#rightfirst').hide()
    else
      $('#errormessage1').hide()
      $('#firstname').addClass 'success'
      $('#rightfirst').show()
      $('#wrongfirst').hide()
      return false
    return
  return
#--------------------------lastname onclick_validation--------------------------------//
$(document).ready ->
  $('#lastname').click ->
    lastname = $('#lastname').val()
    name_regex = /^[a-zA-Z]{2,15}$/
    if !lastname.match(name_regex) or lastname.length == 0
      $('#errormessage2').hide()
      $('#lastname').css
        'background-color': '#ffffff'
        'box-shadow': 'none'
        'border': '1px solid #00a2de'
      $('#rightlast').hide()
      $('#wronglast').hide()
    else
      return false
    return
  return
#--------------------------lastname onblur_validation--------------------------------//
$(document).ready ->
  $('#lastname').blur ->
    lastname = $('#lastname').val()
    name_regex = /^[a-zA-Z]{2,15}$/
    if !lastname.match(name_regex) or lastname.length == 0
      $('#errormessage2').show()
      $('#errormessage2').text '* Please enter a valid Name *'
      $('#lastname').focus()
      $('#lastname').css 'box-shadow', '0px 0px 6px 1px #ff3333'
      $('#wronglast').show()
      $('#rightlast').hide()
    else
      $('#errormessage2').hide()
      $('#lastname').addClass 'success'
      $('#rightlast').show()
      $('#wronglast').hide()
      return false
    return
  return
#--------------------------email onclick_validation--------------------------------//
$(document).ready ->
  $('#email').click ->
    email = $('#email').val()
    email_regex = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-Z0-9]{2,4}$/
    if !email.match(email_regex) or email.length == 0
      $('#errormessage3').hide()
      $('#email').css
        'background-color': '#ffffff'
        'box-shadow': 'none'
        'border': '1px solid #00a2de'
      $('#rightemail').hide()
      $('#wrongemail').hide()
    else
      return false
    return
  return
#--------------------------email onblur_validation--------------------------------//
$(document).ready ->
  $('#email').blur ->
    email = $('#email').val()
    email_regex = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-Z0-9]{2,4}$/
    if !email.match(email_regex) or email.length == 0
      $('#errormessage3').show()
      $('#errormessage3').text '* Please enter a valid email *'
      $('#email').focus()
      $('#email').css 'box-shadow', '0px 0px 6px 1px #ff3333'
      $('#wrongemail').show()
      $('#rightemail').hide()
    else
      $('#errormessage3').hide()
      $('#email').addClass 'success'
      $('#rightemail').show()
      $('#wrongemail').hide()
      return false
    return
  return
#--------------------------retypeemail onclick_validation--------------------------------//
$(document).ready ->
  $('#Retypeemail').click ->
    Retypeemail = $('#Retypeemail').val()
    email = $('#email').val()
    email_regex = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-Z0-9]{2,4}$/
    if Retypeemail != email or Retypeemail.length == 0
      $('#errormessage4').hide()
      $('#Retypeemail').css
        'background-color': '#ffffff'
        'box-shadow': 'none'
        'border': '1px solid #00a2de'
      $('#rightRetypeemail').hide()
      $('#wrongRetypeemail').hide()
    else
      return false
    return
  return
#--------------------------retypeemail onblur_validation--------------------------------//
$(document).ready ->
  $('#Retypeemail').blur ->
    Retypeemail = $('#Retypeemail').val()
    email = $('#email').val()
    email_regex = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-Z0-9]{2,4}$/
    if Retypeemail != email or Retypeemail.length == 0
      $('#errormessage4').show()
      $('#errormessage4').text '* Please enter email as you entered above *'
      $('#Retypeemail').focus()
      $('#Retypeemail').css 'box-shadow', '0px 0px 6px 1px #ff3333'
      $('#wrongRetypeemail').show()
      $('#rightRetypeemail').hide()
    else
      $('#errormessage4').hide()
      $('#Retypeemail').addClass 'success'
      $('#rightRetypeemail').show()
      $('#wrongRetypeemail').hide()
      return false
    return
  return
#--------------------------phone onclick_validation--------------------------------//
$(document).ready ->
  $('#phone').click ->
    phone = $('#phone').val()
    phone_regex = /^\(?([0-9]{3})\)?([0-9]{3})?([0-9]{4})$/
    if !phone.match(phone_regex) or phone.length == 0
      $('#errormessage5').hide()
      $('#phone').css
        'background-color': '#ffffff'
        'box-shadow': 'none'
        'border': '1px solid #00a2de'
      $('#rightphone').hide()
      $('#wrongphone').hide()
    else
      return false
    return
  return
#--------------------------phone onblur_validation--------------------------------//
$(document).ready ->
  $('#phone').blur ->
    phone = $('#phone').val()
    phone_regex = /^\(?([0-9]{3})\)?([0-9]{3})?([0-9]{4})$/
    if !phone.match(phone_regex) or phone.length == 0
      $('#errormessage5').show()
      $('#errormessage5').text '* Please enter your 10 digits Mobile Number *'
      $('#phone').focus()
      $('#phone').css 'box-shadow', '0px 0px 6px 1px #ff3333'
      $('#wrongphone').show()
      $('#rightphone').hide()
    else
      $('#errormessage5').hide()
      $('#phone').addClass 'success'
      $('#rightphone').show()
      $('#wrongphone').hide()
      return false
    return
  return
#--------------------------state onclick_validation--------------------------------//
$(document).ready ->
  $('#state').click ->
    state = $('#state').val()
    if state == 'Please Choose your state'
      $('#errormessage6').hide()
      $('#state').css
        'background-color': '#ffffff'
        'box-shadow': 'none'
        'border': '1px solid #00a2de'
      $('#rightstate').hide()
      $('#wrongstate').hide()
    else
      return false
    return
  return
#--------------------------state onblur_validation--------------------------------//
$(document).ready ->
  $('#state').blur ->
    state = $('#state').val()
    if state == 'Please Choose your state'
      $('#errormessage6').show()
      $('#errormessage6').text '* Please select any state *'
      $('#state').focus()
      $('#state').css 'box-shadow', '0px 0px 6px 1px #ff3333'
      $('#wrongstate').show()
      $('#rightstate').hide()
    else
      $('#errormessage6').hide()
      $('#state').addClass 'success'
      $('#rightstate').show()
      $('#wrongstate').hide()
      return false
    return
  return
#--------------------------radio onclick_validation--------------------------------//
$(document).ready ->
  $('.radio').click ->
    isChecked = $('input[name=radio1]:checked').val()
    if isChecked
      $('#errormessage7').hide()
    else
      return false
    return
  return
#--------------------------birth onclick_validation--------------------------------//
$(document).ready ->
  $('#birth').click ->
    birth = $('#birth').val()
    birth_regex = /^([0-9]{2})\/([0-9]{2})\/([0-9]{4})$/
    if !birth.match(birth_regex) or birth.length == 0
      $('#errormessage8').hide()
      $('#birth').css
        'background-color': '#ffffff'
        'box-shadow': 'none'
        'border': '1px solid #00a2de'
      $('#rightbirth').hide()
      $('#wrongbirth').hide()
    else
      return false
    return
  return
#--------------------------birth onblur_validation--------------------------------//
$(document).ready ->
  $('#birth').blur ->
    birth = $('#birth').val()
    birth_regex = /^([0-9]{2})\/([0-9]{2})\/([0-9]{4})$/
    if !birth.match(birth_regex) or birth.length == 0
      $('#errormessage8').show()
      $('#errormessage8').text '* Please enter a valid Date of birth *'
      $('#birth').focus()
      $('#birth').css 'box-shadow', '0px 0px 6px 1px #ff3333'
      $('#wrongbirth').show()
      $('#rightbirth').hide()
    else
      $('#errormessage8').hide()
      $('#birth').addClass 'success'
      $('#rightbirth').show()
      $('#wrongbirth').hide()
      return false
    return
  return
#--------------------------address onclick_validation--------------------------------//
$(document).ready ->
  $('#address').click ->
    address = $('#address').val()
    address_regex = /^([a-zA-Z0-9_\.\-\/\:\;])+$/
    if !address.match(address_regex) or address.length == 0
      $('#errormessage9').hide()
      $('#address').css
        'background-color': '#ffffff'
        'box-shadow': 'none'
        'border': '1px solid #00a2de'
      $('#rightaddress').hide()
      $('#wrongaddress').hide()
    else
      return false
    return
  return
#--------------------------address onblur_validation--------------------------------//
$(document).ready ->
  $('#address').blur ->
    address = $('#address').val()
    address_regex = /^([a-zA-Z0-9_\.\-\/\:\;])+$/
    if !address.match(address_regex) or address.length == 0
      $('#errormessage9').show()
      $('#errormessage9').text '* Please enter your valid address *'
      $('#address').focus()
      $('#address').css 'box-shadow', '0px 0px 6px 1px #ff3333'
      $('#wrongaddress').show()
      $('#rightaddress').hide()
    else
      $('#errormessage9').hide()
      $('#address').addClass 'success'
      $('#rightaddress').show()
      $('#wrongaddress').hide()
      return false
    return
  return
#--------------------------checkbox onclick_validation--------------------------------//
$(document).ready ->
  $('#checkbox').click ->
    isChecked = $('input[name=checkbox]:checked').val()
    if isChecked
      $('#errormessage10').hide()
    else
      return false
    return
  return
#--------------------------events_validations completed--------------------------------//
#--------------------------complete form_validation--------------------------------//