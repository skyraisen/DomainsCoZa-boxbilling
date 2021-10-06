<div class="contentpadded">
<div class="page-header">
  <div class="styled_title">
    <h1>Host Management</h1>
  </div>
</div>
<div class="alert-message block-message info">
  <p>Domain Name: <strong>{$sld}.{$tld} </strong></p>
</div>
{if $error != ''}
<div class="alert alert-warning error">
  <p>{$error}</p>
</div>
{/if}
{if $success != ''}
<div class="alert alert-success success">
  <p>{$success}</p>
</div>
{/if}
<strong>
<p>From here you can create and manage nameserver records for your domain.</p>
<br>
<div style="clear:both"></div>
<form method="post" id="nsForm" action="/clientarea.php?action=domaindetails" onSubmit="return validateNSForm();">
  <input type="hidden" name="modop" value="custom">
  <input type="hidden" name="a" value="hostmanagement">
  <input type="hidden" name="id" value="{$domainid}">
  <input type="hidden" name="key" value="{$key}">
  
  <fieldset class="twocol">
  	<div id="actionBar" style="float:left;z-index:1;">
      <div class="input" style="float:left;">
        <input style="width:275px;" type="text" name="host" id="host" class="small" />
        . {$sld}.{$tld} 
      </div>
      <div class="input" style="float: left;margin-left: 0px;clear: left;margin-top: 20px;">
        <input style="width:100px;" type="button" name="addNs" id="addNs" value="Add New" class="btn btn-success" />
      </div>
      <div class="input" style="float:left;margin-left:15px;margin-top: 20px;">
        <input style="width:100px;" type="button" name="modNs" id="modNs" value="Modify" class="btn btn-warning" />
      </div>
      <div class="input" style="float:left;margin-left:15px;margin-top: 20px;">
        <input style="width:100px;" type="button" name="delNs" id="delNs" value="Delete" class="btn btn-danger" />
      </div>
      <div class="input" style="float:left;margin-left:15px;margin-top: 20px;">
        <input style="width:100px;" type="button" id="backBttnFakey" value="« Back" class="btn btn-inverse" />
      </div>
    </div>
    
    <div style="clear:both; height:10px;"></div>
    
    <div id="errDiv" class="opDiv" style="display:none;color: #E12C2D;">
    	Please enter a valid nameserver name
    </div>
    
<!-- addDiv -->
		<div id="addDiv" class="opDiv" style="display:none;">
      <div class="styled_title">
        <h2>Add New Nameserver</h2>
      </div>
      <div style="float:left;border:1px solid lightgrey; padding:15px; border-radius:6px; -webkit-border-radius:6px; -moz-border-radius:6px; width:95%;">
      <!-- IPV 4 -->
        <div style="float:left;margin-right:22px;">
          <label for="ip1">IPV4 Address</label>
          <div class="input">
            <input style="width:185px;" type="text" name="strNs1_ip4[add]" id="strNs1_ip4_add" />
          </div>
        </div>
        <div style="float:left;margin-right:22px;">
          <label for="ip1">IPV4 Address</label>
          <div class="input">
            <input style="width:185px;" type="text" name="strNs2_ip4[add]" id="strNs2_ip4_add" />
          </div>
        </div>
        <div style="float:left;margin-right:22px;">
          <label for="ip1">IPV4 Address</label>
          <div class="input">
            <input style="width:185px;" type="text" name="strNs3_ip4[add]" id="strNs3_ip4_add" />
          </div>
        </div>
        <div style="float:left;margin-right:22px;">
          <label for="ip1">IPV4 Address</label>
          <div class="input">
            <input style="width:185px;" type="text" name="strNs4_ip4[add]" id="strNs4_ip4_add" />
          </div>
        </div>
        
        <div style="clear:both; height:15px;"></div>
        
        <!-- IPV 6 -->
        <div style="float:left;margin-right:22px;">
          <label for="ip1">IPV6 Address</label>
          <div class="input">
            <input style="width:185px;" type="text" name="strNs1_ip6[add]" id="strNs1_ip6_add" />
          </div>
        </div>
        <div style="float:left;margin-right:22px;">
          <label for="ip1">IPV6 Address</label>
          <div class="input">
            <input style="width:185px;" type="text" name="strNs2_ip6[add]" id="strNs2_ip6_add" />
          </div>
        </div>
        <div style="float:left;margin-right:22px;">
          <label for="ip1">IPV6 Address</label>
          <div class="input">
            <input style="width:185px;" type="text" name="strNs3_ip6[add]" id="strNs3_ip6_add" />
          </div>
        </div>
        <div style="float:left;margin-right:22px;">
          <label for="ip1">IPV6 Address</label>
          <div class="input">
            <input style="width:185px;" type="text" name="strNs4_ip6[add]" id="strNs4_ip6_add" />
          </div>
        </div>
        
        <div style="clear:both; height:20px;"></div>
          
        <div align="center" style="margin-bottom:10px;">
          <input type="submit" value="Save Changes" class="btn btn-primary">
        </div>
      </div>
    </div>
    
<!-- modDiv -->
		<div id="modDiv" class="opDiv" style="display:none;">
      <div class="styled_title">
        <h2>Modify Nameserver</h2>
      </div>
      <div style="float:left;border:1px solid lightgrey; padding:15px; border-radius:6px; -webkit-border-radius:6px; -moz-border-radius:6px; width:95%;">
      <!-- IPV 4 -->
        <div style="float:left;margin-right:22px;">
          <label for="ip1">IPV4 Address</label>
          <div class="input">
            <input style="width:185px;" type="text" name="strNs1_ip4[mod]" id="strNs1_ip4_mod" value="{$strNs1_ip4}" />
          </div>
        </div>
        <div style="float:left;margin-right:22px;">
          <label for="ip1">IPV4 Address</label>
          <div class="input">
            <input style="width:185px;" type="text" name="strNs2_ip4[mod]" id="strNs2_ip4_mod" value="{$strNs2_ip4}" />
          </div>
        </div>
        <div style="float:left;margin-right:22px;">
          <label for="ip1">IPV4 Address</label>
          <div class="input">
            <input style="width:185px;" type="text" name="strNs3_ip4[mod]" id="strNs3_ip4_mod" value="{$strNs3_ip4}" />
          </div>
        </div>
        <div style="float:left;margin-right:22px;">
          <label for="ip1">IPV4 Address</label>
          <div class="input">
            <input style="width:185px;" type="text" name="strNs4_ip4[mod]" id="strNs4_ip4_mod" value="{$strNs4_ip4}" />
          </div>
        </div>
        
        <div style="clear:both; height:15px;"></div>
        
        <!-- IPV 6 -->
        <div style="float:left;margin-right:22px;">
          <label for="ip1">IPV6 Address</label>
          <div class="input">
            <input style="width:185px;" type="text" name="strNs1_ip6[mod]" id="strNs1_ip6_mod" value="{$strNs1_ip6}" />
          </div>
        </div>
        <div style="float:left;margin-right:22px;">
          <label for="ip1">IPV6 Address</label>
          <div class="input">
            <input style="width:185px;" type="text" name="strNs2_ip6[mod]" id="strNs2_ip6_mod" value="{$strNs2_ip6}" />
          </div>
        </div>
        <div style="float:left;margin-right:22px;">
          <label for="ip1">IPV6 Address</label>
          <div class="input">
            <input style="width:185px;" type="text" name="strNs3_ip6[mod]" id="strNs3_ip6_mod" value="{$strNs3_ip6}" />
          </div>
        </div>
        <div style="float:left;margin-right:22px;">
          <label for="ip1">IPV6 Address</label>
          <div class="input">
            <input style="width:185px;" type="text" name="strNs4_ip6[mod]" id="strNs4_ip6_mod" value="{$strNs4_ip6}" />
          </div>
        </div>
        
        <div style="clear:both; height:20px;"></div>
          
        <div align="center" style="margin-bottom:10px;">
          <input type="submit" value="Save Changes" class="btn btn-primary">
        </div>
      </div>
		</div>
        
<!-- delDiv -->
		<div id="delDiv" class="opDiv" style="display:none;">
      <div class="styled_title">
        <h2>Delete Nameserver</h2>
      </div>
      <div style="float:left;border:1px solid lightgrey; padding:15px; border-radius:6px; -webkit-border-radius:6px; -moz-border-radius:6px; width:95%;">
      <!-- IPV 4 -->
        <div style="float:left;margin-right:22px;">
          <div class="input">
            Are you sure you would like to remove this nameserver?
          </div>
        </div>
        
        <div style="clear:both; height:20px;"></div>
          
        <div align="center" style="margin-bottom:10px;">
          <input type="submit" value="Confirmed" class="btn btn-primary">
        </div>
      </div>
    </div>
    
    <div style="clear:both; height:20px;"></div>
  	<input type="hidden" name="formAction" id="formAction" />
  </fieldset>
</form>
<form method="post" action="/clientarea.php?action=domaindetails" style="display:none;">
  <input type="hidden" name="id" value="{$domainid}">
  <p style="margin-left:24px;">
    <input id="backBttn" type="submit" value="« Back" class="btn">
  </p>
</form>
</div>
</strong>
{literal}
<script type="text/javascript">
	$(document).ready(function(){		
		$('#addNs').click(function(){
			if (validNameServer($('#host').val())) {
				$.post('modules/registrars/domainsDotCOZA/domainsDotCOZA.php', { action : 'gethostinformation', host : $('#host').val(), tld : '{/literal}{$tld}{literal}', sld : '{/literal}{$sld}{literal}', key : '{/literal}{$key}{literal}'}, function(data){
					var res = $.parseJSON(data);
					
					if (res.intReturnCode == '1') {
						populate(res);
						if (!$('#alreadyThere').is('*')) {
							if ($.browser.msie) {
    						$('#actionBar').after('<div id="alreadyThere" class="btn-info" style="padding-top:20px;top:-20px;position: relative;width: 110px;padding-left: 10px;border-radius: 5px;-webkit-border-radius: 5px;-moz-border-radius: 5px;z-index:0; margin-bottom: -35px;height: 15px;line-height: 8px;">Already Exists</div>');
							} else {
								$('#actionBar').after('<div id="alreadyThere" class="btn-info" style="position: relative;width: 110px;padding-left: 10px;border-radius: 5px;-webkit-border-radius: 5px;-moz-border-radius: 5px;z-index:0; display:none; margin-bottom: -20px;height: 58px;line-height: 8px;">Already Exists</div>');
							}
						}
						
						$('#alreadyThere').fadeIn('fast');
						setTimeout("$('#alreadyThere').fadeOut('fast')", 2000);
					} else {
						$('#formAction').val('add');
						
						if ($('#addDiv').css('display') == 'none') {
							$('.opDiv').slideUp('slow');
						}

						$('#addDiv').slideDown('slow');	
					}
				});				
			}
		});
		
		$('#modNs').click(function(){
			if (validNameServer($('#host').val())) {
				$.post('modules/registrars/domainsDotCOZA/domainsDotCOZA.php', { action : 'gethostinformation', host : $('#host').val(), tld : '{/literal}{$tld}{literal}', sld : '{/literal}{$sld}{literal}', key : '{/literal}{$key}{literal}'}, function(data){
					var res = $.parseJSON(data);
					
					if (res.intReturnCode == '11') {
						showError(res.strMessage);
						if ($('#modDiv').css('display') != 'none') {
							$('.opDiv').slideUp('slow');
							$('#addDiv').slideDown('slow');
						} else {
							$('#host').select();
						}
					} else {
						populate(res);
					}
				});
			}
		});
		
		$('#delNs').click(function(){
			if (validNameServer($('#host').val())) {
				$.post('modules/registrars/domainsDotCOZA/domainsDotCOZA.php', { action : 'gethostinformation', host : $('#host').val(), tld : '{/literal}{$tld}{literal}', sld : '{/literal}{$sld}{literal}', key : '{/literal}{$key}{literal}'}, function(data){
					var res = $.parseJSON(data);
					
					if (res.intReturnCode == '11') {
						showError(res.strMessage);	
						if ($('#modDiv').css('display') != 'none') {
							$('.opDiv').slideUp('slow');
							$('#addDiv').slideDown('slow');
						} else {
							$('#host').select();
						}
					} else {
						$('#formAction').val('del');
						
						if ($('#delDiv').css('display') == 'none') {
							$('.opDiv').slideUp('slow');
						}
						
						$('#delDiv').slideDown('slow');	
					}
				});
			}
		});
		
		$('#backBttnFakey').click(function(){
			$('#backBttn').click();
		});
	});
	
	function populate(seed) {
		var count = new Array();
		count[4] = 1;
		count[6] = 1;
		var type = '';
		$(seed.arrIPs).each(function(index, value) {
			type = value.type.replace('v', '');
			
			$('#strNs'+count[type]+'_ip'+type+'_mod').val(value.ip);
			
			count[type]++;
		});
		
		$('#formAction').val('mod');
		
		if ($('#modDiv').css('display') == 'none') {
			$('.opDiv').slideUp('slow');
		}
		
		$('#modDiv').slideDown('slow');	
	}
	
	function validNameServer(host) {
		if ($.trim(host) == '') {
			$('#host').focus();
			showError('');
			return false;
		} else {
			regExp = /^(?=.{1,255}$)[0-9A-Za-z](?:(?:[0-9A-Za-z]|\b-){0,61}[0-9A-Za-z])?(?:\.[0-9A-Za-z](?:(?:[0-9A-Za-z]|\b-){0,61}[0-9A-Za-z])?)*\.?$/;
			if ($.trim(host).match(regExp) == null) {
				$('#host').select();
				showError('');
				return false;
			}
			return true;
		}
	}
	
	function showError(str) {
		if (str != '') {
			$('#errDiv').html(str);
		}
		$('#errDiv').slideDown('slow');
		setTimeout("$('#errDiv').slideUp('slow')", 2000);
	}
	
	function validateNSForm() {
		var action = $('#formAction').val();
		if (action == 'add' || action == 'mod') {
			// at least one ipv4 address validation
			var clear = false;
			
			for (k=4; k<=6; k+=2) {
				for (i=1; i<=4; i++) {
					if ($.trim($('#strNs'+i+'_ip'+k+'_'+action).val()) != '') {
						clear = true;
					}
				}
			}
			
			if (!clear) {
				showError('Please enter at least one IPV4 or one IPV6 Address');
				$('#strNs1_ip4_'+action).focus();
				return false;
			}
			
			// set vars
			var regExp = '';
			var strNS_ip = new Array();
			var clear = new Array();
			clear[4] = true;
			clear[6] = true;
			
			// reset borders
			for (i=1;i<=4;i++) {
				for (k=4;k<=6;k+=2) {
					$('#strNs'+i+'_ip'+k+'_'+action).css('border', '1px solid lightgrey');
				}
			}
			
			// validate
			for (i=1;i<=4;i++) {
				for (k=4;k<=6;k+=2) {
					strNS_ip[k] = $.trim($('#strNs'+i+'_ip'+k+'_'+action).val());
					if (strNS_ip[k] != '') {
						if (k == 4) {
							regExp = /^(?:25[0-5]|2[0-4]\d|1\d\d|[1-9]\d|\d)(?:[.](?:25[0-5]|2[0-4]\d|1\d\d|[1-9]\d|\d)){3}$/;
						} else {
							regExp = /^\s*((([0-9A-Fa-f]{1,4}:){7}([0-9A-Fa-f]{1,4}|:))|(([0-9A-Fa-f]{1,4}:){6}(:[0-9A-Fa-f]{1,4}|((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3})|:))|(([0-9A-Fa-f]{1,4}:){5}(((:[0-9A-Fa-f]{1,4}){1,2})|:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3})|:))|(([0-9A-Fa-f]{1,4}:){4}(((:[0-9A-Fa-f]{1,4}){1,3})|((:[0-9A-Fa-f]{1,4})?:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){3}(((:[0-9A-Fa-f]{1,4}){1,4})|((:[0-9A-Fa-f]{1,4}){0,2}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){2}(((:[0-9A-Fa-f]{1,4}){1,5})|((:[0-9A-Fa-f]{1,4}){0,3}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){1}(((:[0-9A-Fa-f]{1,4}){1,6})|((:[0-9A-Fa-f]{1,4}){0,4}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(:(((:[0-9A-Fa-f]{1,4}){1,7})|((:[0-9A-Fa-f]{1,4}){0,5}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:)))(%.+)?\s*$/;
						}
						
						if (strNS_ip[k].match(regExp) == null) {
							$('#strNs'+i+'_ip'+k+'_'+action).css('border', '1px solid red');
							clear[k] = false;
						}
					}
				}
			}
			
			if (!clear[4] && !clear[6]) {
				showError('Invalid IPV4 and IPV6 address');
				return false;
			} else if (!clear[4]) {
				showError('Invalid IPV4 address');
				return false;
			} else if (!clear[6]) {
				showError('Invalid IPV6 address');
				return false;
			}
		}
	}
</script>
{/literal}
