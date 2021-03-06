<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html>
 <head>
  <meta charset="UTF-8"> 
  <title>Document</title>

  <style>
    textarea {width:350px; height:300px; float:left}
    .btnGroup {
        float:left ;
        padding: 25px;
    }
  </style>
  <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
  <script>

  
    // 위경도 -> GridXY
    function fnLatLon2XY() {
        var strLatLon = $.trim($("#taLatLon").val());
        if(!strLatLon) { alert("위경도 데이터를 입력하여 주십시오."); return;}
        var lines = strLatLon.split(String.fromCharCode(10)); //줄단위로 분할
        var strXY = "";
        for(var i = 0, len = lines.length; i < len; i++) {
            if(lines[i] == "") continue; //빈줄은 무시하고 통과
            var latlon = lines[i].split(",");
            var lat = latlon[0], lon = latlon[1];
            if(!lat||!lon||isNaN(lat)||isNaN(lon)) {
                alert("숫자 값이 아니거나 데이터 형식이 맞지 않습니다.");
                return;
            }
            var xy = dfs_xy_conv("toXY", lat, lon);
            strXY += xy.x + ", " + xy.y + String.fromCharCode(10);
        }
        
        $('#taXY').val(strXY);

    }
    // 위경도 <- GridXY
    function fnXY2LatLon() {

        var strXY = $.trim($("#taXY").val());
        if (! strXY) { alert ("Grid XY 데이터를 입력하여 주십시오."); return; }
  
        var lines = strXY.split(String.fromCharCode(10));
        var strLatLon = "";
        for(var i = 0, len = lines.length; i < len; i++) {
            if (lines[i] == '')  continue;       
    
            var xy = lines[i].split(",");
            var x = xy[0], y = xy[1];
            if (!x || !y || isNaN(x) || isNaN(y)) {
                alert("숫자 값이 아니거나 데이터 형식이 맞지 않습니다.");
                return;
            }
    
            var ll = dfs_xy_conv("toLL", x, y);
            strLatLon += ll.lat + ", " + ll.lng + String.fromCharCode(10);
    
        }  
        $("#taLatLon").val(strLatLon);
    }

    //----------------------------------------------------------
    // 기상청 홈페이지에서 발췌한 변환 함수
    //
    // LCC DFS 좌표변환을 위한 기초 자료
    //
    var RE = 6371.00877; // 지구 반경(km)
    var GRID = 5.0; // 격자 간격(km)
    var SLAT1 = 30.0; // 투영 위도1(degree)
    var SLAT2 = 60.0; // 투영 위도2(degree)
    var OLON = 126.0; // 기준점 경도(degree)
    var OLAT = 38.0; // 기준점 위도(degree)
    var XO = 43; // 기준점 X좌표(GRID)
    var YO = 136; // 기1준점 Y좌표(GRID)

// LCC DFS 좌표변환 ( code : 
//          "toXY"(위경도->좌표, v1:위도, v2:경도), 
//          "toLL"(좌표->위경도,v1:x, v2:y) )
//

    function dfs_xy_conv(code, v1, v2) {
        var DEGRAD = Math.PI / 180.0;
        var RADDEG = 180.0 / Math.PI;
        
        var re = RE / GRID;
        var slat1 = SLAT1 * DEGRAD;
        var slat2 = SLAT2 * DEGRAD;
        var olon = OLON * DEGRAD;
        var olat = OLAT * DEGRAD;
        
        var sn = Math.tan(Math.PI * 0.25 + slat2 * 0.5) / Math.tan(Math.PI * 0.25 + slat1 * 0.5);
        sn = Math.log(Math.cos(slat1) / Math.cos(slat2)) / Math.log(sn);
        var sf = Math.tan(Math.PI * 0.25 + slat1 * 0.5);
        sf = Math.pow(sf, sn) * Math.cos(slat1) / sn;
        var ro = Math.tan(Math.PI * 0.25 + olat * 0.5);
        ro = re * sf / Math.pow(ro, sn);
        var rs = {};
        if (code == "toXY") {
            rs['lat'] = v1;
            rs['lng'] = v2;
            var ra = Math.tan(Math.PI * 0.25 + (v1) * DEGRAD * 0.5);
            ra = re * sf / Math.pow(ra, sn);
            var theta = v2 * DEGRAD - olon;
            if (theta > Math.PI) theta -= 2.0 * Math.PI;
            if (theta < -Math.PI) theta += 2.0 * Math.PI;
            theta *= sn;
            rs['x'] = Math.floor(ra * Math.sin(theta) + XO + 0.5);
            rs['y'] = Math.floor(ro - ra * Math.cos(theta) + YO + 0.5);
        }
        else {
            rs['x'] = v1;
            rs['y'] = v2;
            var xn = v1 - XO;
            var yn = ro - v2 + YO;
            ra = Math.sqrt(xn * xn + yn * yn);
            if (sn < 0.0) - ra;
            var alat = Math.pow((re * sf / ra), (1.0 / sn));
            alat = 2.0 * Math.atan(alat) - Math.PI * 0.5;
            
            if (Math.abs(xn) <= 0.0) {
                theta = 0.0;
            }
            else {
                if (Math.abs(yn) <= 0.0) {
                    theta = Math.PI * 0.5;
                    if (xn < 0.0) - theta;
                }
                else theta = Math.atan2(xn, yn);
            }
            var alon = theta / sn + olon;
            rs['lat'] = alat * RADDEG;
            rs['lng'] = alon * RADDEG;
        }
        return rs;
    }

  </script>

 </head>
 <body>    
    <textarea id="taLatLon" >37.579871128849334, 126.98935225645432
35.101148844565955, 129.02478725562108
33.500946412305076, 126.54663058817043</textarea>
    <div class="btnGroup">
        <button onclick="fnLatLon2XY()">위경도 -> GridXY</button><br/><br/>
        <button onclick="fnXY2LatLon()">위경도 &lt;- GridXY</button>
    </div>

    <textarea id="taXY"></textarea>
  
 </body>
</html>
