<style type="text/css">
<!--
.style1 {color: #0033FF}
-->
</style>
<div class="loginWrapper">
    <div class="loginPanel">
        <div class="head"><h5 class="iUser">Log Masuk Pengguna</h5></div>
        <form class="mainForm" id="valid" method="post" action="?page=process_login">
            <fieldset>
                <div class="loginRow noborder">
                    <label for="req1">Pengguna:</label>
                    <div class="loginInput"><input type="text" id="req1" class="validate[required]" name="username"></div>
                    <div class="fix"></div>
                </div>
                
                <div class="loginRow">
                    <label for="req2">Katalaluan:</label>
                    <div class="loginInput"><input type="password" id="req2" class="validate[required]" name="password"></div>
                    <div class="fix"></div>
                </div>
                
                <div class="loginRow">
                    <p>
                      <!-- <div class="rememberMe"><div class="checker" id="uniform-check2"><span><input type="checkbox" name="chbox" id="check2" style="opacity: 0;"></span></div><label for="check2">Remember me</label></div> -->
                      <input type="submit" class="greyishBtn submitForm" value="Daftar Baru" onclick="location.href='?page=daftar'">
                      <input type="submit" class="greyishBtn submitForm" value="Log masuk">
                  </p>
                    <p><a href="user/forgot.php">Lupa Kata laluan? </a></p>
                  <div class="fix"></div>
            </div>
          </fieldset>
        </form>
    </div>
</div>