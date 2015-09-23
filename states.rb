$anambra = Array.new
$enugu = Array.new
$akwa_ibom = Array.new
$adamawa = Array.new
$abia = Array.new
$bauchi = Array.new
$bayelsa = Array.new
$benue = Array.new
$borno = Array.new
$cross_river =Array.new
$delta = Array.new
$ebonyi = Array.new
$edo = Array.new
$ekiti = Array.new
$gombe = Array.new
$imo = Array.new
$jigawa = Array.new
$kaduna = Array.new
$kano = Array.new
$katsina = Array.new
$kebbi = Array.new
$kogi = Array.new
$kwara = Array.new
$lagos = Array.new
$nasarawa = Array.new
$niger = Array.new
$ogun = Array.new
$ondo = Array.new
$osun = Array.new
$oyo = Array.new
$plateau = Array.new
$rivers = Array.new
$sokoto = Array.new
$araba = Array.new
yobe = Array.new
$zamfara = Array.new
$abuja = Array.new

def setstate state
	case  state.downcase
	   	when 'anambra' ; $anambra.push(@bizhash) 
        when 'enugu'; $enugu.push(@bizhash) 
        when "akwa ibomn"; $akwa_ibom.push(@bizhash) 
        when "adamawa"; $adamawa.push(@bizhash) 
        when "abia"; $abia.push(@bizhash) 
        when "bauchi"; $bauchi.push(@bizhash) 
        when "bayelsa" ; $bayelsa.push(@bizhash) 
        when "benue"; $benue.push(@bizhash) 
        when "borno"; $borno.push(@bizhash) 
        when "croos river"; $cross_river.push(@bizhash) 
        when "delta"; $delta.push(@bizhash) 
        when "ebonyi"; $ebonyi.push(@bizhash) 
        when "edo"; $edo.push(@bizhash) 
        when "ekiti"; $ekiti.push(@bizhash) 
        when "gombe"; $gombe.push(@bizhash) 
        when "imo" ; $imo.push(@bizhash) 
        when "jigawa" ; $jigawa.push(@bizhash) 
        when "kaduna" ;  $kaduna.push(@bizhash) 
        when "kano"; $kano.push(@bizhash) 
        when "katsina"; $katsina.push(@bizhash) 
        when "kebbi"; $kebbi.push(@bizhash) 
        when "kogi"; $kogi.push(@bizhash) 
        when "kwara"; $kwara.push(@bizhash) 
        when "lagos"; $lagos.push(@bizhash) 
        when "nasarawa"; $nasarawa.push(@bizhash) 
        when "niger"; $niger.push(@bizhash) 
        when "ogun"; $ogun.push(@bizhash) 
        when "ondo"; $ondo.push(@bizhash) 
        when "osun"; $osun.push(@bizhash) 
        when "oyo" ;$oyo.push(@bizhash) 
        when "plateau"; $plateau.push(@bizhash) 
        when "rivers"; $rivers.push(@bizhash) 
        when "sokoto"; $sokoto.push(@bizhash) 
        when "taraba" ;$taraba.push(@bizhash) 
        when "yobe"; $yobe.push(@bizhash) 
        when "zamfara"; $zamfara.push(@bizhash) 
        when "abuja"; $abuja.push(@bizhash) 
   	 	else
   	 		puts state
	end
end