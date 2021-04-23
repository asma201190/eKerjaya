<!-- js calendar-->
<script type="text/javascript" src="../js/plugins/jcal/jscal2.js"></script>
<script type="text/javascript" src="../js/plugins/jcal/lang/en.js"></script>
<!-- end js calendar-->

<!-- php function -->
<?php

?>
<!-- php function -->

<div class="title">
  <h5>Pendaftaran</h5>
</div>
<!-- Form begins -->
<!-- Validation form -->
<form id="usualValidate" class="mainForm" method="post" action="?page=process">
    <input type="hidden" name="type" value="add_pemohon" />
    <fieldset>
        <div class="widget" style="margin-top:5px;">
            <div class="head"><h5 class="iLocked">Borang Daftar Pemohon</h5></div>
            <div class="rowElem">
                <label>Nama Pemohon:<span class="req">*</span></label>
                <div class="formRight"><input type="text" class="required" name="namapemohon" id="namapemohon"/></div><div class="fix"></div>
            </div>
             <div class="rowElem">
                <label>Nama Pengguna:<span class="req">*</span></label>
                <div class="formRight"><input type="text" class="required input-medium" name="username" id="username"/><font size="1"> (Nama Log Masuk)</font></div><div class="fix"></div>
            </div>
            <div class="rowElem">
                <label>Jantina:<span class="req">*</span></label>
                <div class="formRight">
                    <select name="jantina" id="jantina" class="required">
                        <option value="Lelaki">Lelaki</option>
                        <option value="Perempuan">Perempuan</option>
                    </select>
                </div>
                <div class="fix"></div>
            </div>
            <div class="rowElem">
                <label>Tarikh Lahir:<span class="req">*</span></label>
                <div class="formRight">
                    <input type="text" class="required input-small" name="tarikhlahir" id="tarikhlahir"/>
                    <img src='../images/show-calendar.gif' id='imgdate' style="vertical-align: middle;">
                    <script type="text/javascript">//<![CDATA[
                      Calendar.setup({
                        inputField : "tarikhlahir",
                        trigger    : "imgdate",
                        onSelect   : function() {this.hide(); },
                        selection  : Calendar.dateToInt(new Date()),
                        showTime   : 12,
                        dateFormat : "%Y-%m-%d"         
                      });
                    //]]></script>      
                    <font size="1">[dd-mm-yyyy]</font>
                </div>
                <div class="fix"></div>
            </div>
            <div class="rowElem">
                <label>Alamat:<span class="req">*</span></label>
                <div class="formRight">
                    <textarea rows="8" cols="" name="alamat" class="required" id="alamat"></textarea>
                </div>
                <div class="fix"></div>
            </div>
            <div class="rowElem">
                <label>Keturunan:<span class="req">*</span></label>
                <div class="formRight">
                    <select name="keturunan" id="keturunan" class="required">
                        <option value="Melayu">Melayu</option>
                        <option value="Cina">Cina</option>
                        <option value="India">India</option>
                    </select>
                </div>
                <div class="fix"></div>
            </div>
            <div class="rowElem">
                <label>Warganegara:<span class="req">*</span></label>
                <div class="formRight"><input type="text" class="required input-medium" name="warganegara" id="warganegara"/></div><div class="fix"></div>
            </div>
            <div class="rowElem">
                <label>Telefon:<span class="req">*</span></label>
                <div class="formRight"><input type="text" class="required input-medium" name="telefon" id="telefon"/></div><div class="fix"></div>
            </div>
            <div class="rowElem">
                <label>Emel:<span class="req">*</span></label>
                <div class="formRight"><input type="text" class="required input-medium" name="emel" id="emel"/></div><div class="fix"></div>
            </div>   
            <div class="rowElem">
                <label>Kataluan:</label>
                <div class="formRight">123 [Sila tukar selepas log masuk]</div><div class="fix"></div>
            </div>                   
            <div class="submitForm"><input type="submit" value="hantar" class="redBtn" /></div>
            <div class="fix"></div>
        </div>
        
    </fieldset>
</form>