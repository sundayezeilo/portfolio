function myValidation()
{
  if(!document.getElementById('name').value)
  {
    alert("Name field cannot be empty!");
    return false;
  }else if(!document.getElementById('email').value){
    alert("Email field cannot be empty!");
    return false;
  }else if(!document.getElementById('message').value){
    alert("message field cannot be empty!");
    return false;
  }
  return true;
}