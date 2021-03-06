<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css"
	href="resources/css/maincss.css?a">
<link rel="stylesheet" type="text/css" href="resources/css/join.css?a">
<link rel="stylesheet" type="text/css" href="resources/css/reset.css?a">
<link rel="shortcut icon" href="resources/icon/favicon.ico">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/c945c12587.js"
	crossorigin="anonymous"></script>
<!-- 카카오 주소 api -->
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<!-- 헤더 스크립트 -->
<script src="resources/js/main.js"></script>
<script src="resources/js/join.js"></script>
<head>
<meta charset="UTF-8">
<title>SPACESPACE</title>
</head>
<body>
	<div id="allwrap">
		<%@ include file="/../header.jsp"%>
		<div id="mainwrap">
			<div id="mainbox">
				<div id="tablebox">
					<div>
						<i class="fas fa-check" style="font-size: 50px"></i> <span>JOIN</span>
					</div>
					<div id="conditionbox">
						<div id="box">
							<div>
								<div></div>
								<div class="title">이용약관</div>
								<div style="margin-right: 30px;">
									제1조 (목적)<br> <br> 이 약관은 윤주현, 박예림(전자상거래 사업자)가 운영하는
									스페이스스페이스(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어
									사이버 몰과 이용자의 권리․의무 및 책임사항을 규정함을 목적으로 합니다.<br> ※ PC통신, 무선 등을
									이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준 용합니다.<br> <br>
									제2조 (정의)<br> <br> ① “몰”이란 스페이스스페이스가 재화 또는 용역(이하 “재화
									등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한
									가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.<br> ② “이용자”란
									“몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원 을 말합니다.<br>
									③ “회원”이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용 할 수 있는 자를
									말합니다.<br> ④ “비회원”이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를
									말합니 다.<br> <br> 제3조 (약관 등의 명시와 설명 및 개정)<br> <br>
									① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의
									주소를 포함), 전화번호․모사전송번호․전자우편주소, 사업자등록번호, 통신판 매업 신고번호, 개인정보관리책임자등을
									이용자가 쉽게 알 수 있도록 스페이스스페이스의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가
									연결화면을 통하여 볼 수 있 도록 할 수 있습니다.<br> ② “몰”은 이용자가 약관에 동의하기에 앞서
									약관에 정하여져 있는 내용 중 청약철회․배송책 임․환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록
									별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.<br> ③ “몰”은
									「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」,
									「전자금융거래법」, 「전자서명법」, 「정보통신망 이용 촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한
									법률」, 「소비자기본법」 등 관 련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br>
									④ “몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초 기화면에 그 적용일자
									7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리 하게 약관내용을 변경하는 경우에는 최소한
									30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 “몰”은 개정 전 내용과 개정 후 내용을 명확하게
									비교하여 이용자가 알기 쉽도록 표시합니다.<br> ⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은 그
									적용일자 이후에 체결되는 계약에만 적용 되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로
									적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의
									공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.<br> ⑥ 이
									약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 「전자상거래 등에서의 소비 자보호에 관한 법률」,
									「약관의 규제에 관한 법률」, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는
									상관례에 따릅니다<br>
								</div>
								<div class="condition_check" id="condition_1">
									<span><i id = "icon1" class="far fa-check-circle"></i></span> <span>이용약관에
										동의합니다.</span>
								</div>
							</div>
							<div>
								<div></div>
								<div class="title">개인정보 수집 및 이용</div>
								<div>
									스페이스스페이스는 (이하 "회사"는) 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한
									법률을 준수하고 있습니다. 회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로
									이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. <br> <br>
									■ 수집하는 개인정보 항목 및 수집방법<br> <br> 가. 수집하는 개인정보의 항목<br>
									<br> o 회사는 회원가입, 상담, 서비스 신청 등을 위해 아래와 같은 개인정보를 수집하고 있습니다.<br>
									<br> - 회원가입시 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 휴대전화번호 ,
									이메일<br> - 서비스 신청시 : 주소, 결제 정보<br> <br> o 서비스 이용
									과정이나 사업 처리 과정에서 서비스이용기록, 접속로그, 쿠키, 접속 IP, 결제 기록, 불량이용 기록이 생성되어
									수집될 수 있습니다.<br> <br> 나. 수집방법<br> <br> -
									홈페이지, 서면양식, 게시판, 이메일, 이벤트 응모, 배송요청, 생성 정보 수집 툴을 통한 수집 <br>
									<br> ■ 개인정보의 수집 및 이용목적<br> <br> 회사는 수집한 개인정보를
									다음의 목적을 위해 활용합니다.<br> o 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산<br>
									콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융 서비스<br>
									o 회원 관리<br> 회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와
									비인가 사용 방지 , 가입 의사 확인 , 연령확인 , 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부
									확인, 불만처리 등 민원처리 , 고지사항 전달<br> o 마케팅 및 광고에 활용<br> 이벤트
									등 광고성 정보 전달 , 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계<br> <br>
									■ 개인정보의 보유 및 이용기간<br> <br> 원칙적으로, 개인정보 수집 및 이용목적이 달성된
									후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안
									보존합니다. <br> <br> 가. 회사 내부방침에 의한 정보보유 사유<br> 회원이
									탈퇴한 경우에도 불량회원의 부정한 이용의 재발을 방지, 분쟁해결 및 수사기관의 요청에 따른 협조를 위하여,
									이용계약 해지일로부터 3년간 회원의 정보를 보유할 수 있습니다. <br> <br> 나. 관련
									법령에 의한 정보 보유 사유<br> 전자상거래등에서의소비자보호에관한법률 등 관계법령의 규정에 의하여
									보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.<br>
									o 계약 또는 청약철회 등에 관한 기록<br> -보존이유 : 전자상거래등에서의소비자보호에관한법률<br>
									-보존기간 : 5년<br> o 대금 결제 및 재화 등의 공급에 관한 기록<br> -보존이유:
									전자상거래등에서의소비자보호에관한법률<br> -보존기간 : 5년<br> o 소비자 불만 또는
									분쟁처리에 관한 기록<br> -보존이유 : 전자상거래등에서의소비자보호에관한법률<br> -보존기간
									: 3년<br> o 로그 기록<br> -보존이유: 통신비밀보호법<br> -보존기간 :
									3개월<br> <br> ■ 개인정보의 파기절차 및 방법<br> 회사는 원칙적으로
									개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.<br>
									<br> o 파기절차<br> 회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후
									별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유
									및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다.<br> 별도 DB로 옮겨진 개인정보는 법률에
									의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다. o 파기방법<br> 전자적
									파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.<br> <br>
									■ 개인정보 제공<br> 회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의
									경우에는 예외로 합니다.<br> o 이용자들이 사전에 동의한 경우<br> o 법령의 규정에
									의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우<br> <br>
									■ 수집한 개인정보의 위탁<br> <br> 회사는 서비스 이행을 위해 아래와 같이 외부
									전문업체에 위탁하여 운영하고 있습니다.<br> o 위탁 대상자 : CG택배<br> o 위탁업무
									내용 : 상품 배송업무<br> <br> ■ 이용자 및 법정대리인의 권리와 그 행사방법<br>
									o 이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도
									있습니다.<br> o 이용자들의 개인정보 조회,수정을 위해서는 "개인정보변경"(또는 "회원정보수정"
									등)을 가입해지(동의철회)를 위해서는 "회원탈퇴"를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는
									탈퇴가 가능합니다.<br> o 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이
									조치하겠습니다.<br> o 귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지
									당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정
									처리결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다.<br> o 회사는 이용자의 요청에
									의해 해지 또는 삭제된 개인정보는 "회사가 수집하는 개인정보의 보유 및 이용기간"에 명시된 바에 따라 처리하고 그
									외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.<br>
								</div>
								<div class="condition_check" id="condition_2">
									<span><i id = "icon2" class="far fa-check-circle"></i></span> <span>정보
										수집 및 이용에 동의합니다.</span>
								</div>
							</div>
						</div>
					</div>
					<form name="join_info" method="post" onsubmit="return check()">
						<table>
							<tr>
								<td>ID
								<td><input id="id" name="id" type="text">
									<div class="forminfo">
										<button id="id_check" class="button" type="button" onclick="id_overlap()">중복확인</button>
										<span id="idInfo"></span>
									</div></td>
							</tr>
							<tr>
								<td>PASSWORD</td>
								<td><input id="pw" name="pw" type="password">
									<div class="forminfo">
										<span id="pwInfo"></span>
									</div></td>
							</tr>
							<tr>
								<td>이름</td>
								<td><input id="name" name="name" type="text">
									<div class="forminfo">
										<span id="nameInfo"></span>
									</div></td>
							</tr>
							<tr>
								<td>주소</td>
								<td><input id="address1" name="address1" type="text" class="address" disabled="disabled">
								<button class="button" type="button" onclick="postcode()" >주소찾기</button>
								<input id="address2" name="address2" type="text" class="address" 
							 style="font-size: 13px; margin-left:4px"value="상세주소를 입력해주세요">
							 <input id="address" name="address" type="text" class="hidden"></td>
							</tr>
							<tr>
								<td>이메일</td>
								<td><input id="email_id" name="email_id" type="text">
									<span style="margin: 2px;">@</span>
									<input id="email_ad" name="email_ad" type="text">
										<select id="select_email" style="font-size: 13px; margin-left: 3px;">
												<option value="input" selected>직접입력 ▼</option>
												<option value="naver.com">naver.com</option>
												<option value="hanmail.net">daum.net</option>
												<option value="gmail.com">gmail.com</option>
										</select>
									<input id="email" class="hidden" name= "email" type="text">
										<div class="forminfo">
											<button id="email_check" class="button" type="button" onclick="email_overlap()">중복확인</button>
											<span id="emailInfo"></span>
										</div>
									
									</td>
							</tr>
							<tr>
								<td>휴대전화</td>
								<td><select id="select_phone" class="phone">
												<option value="010" selected>010 ▼</option>
												<option value="011">011</option>
												<option value="018">018</option>
												<option value="016">016</option>
										</select>-<input id="phone1" name="phone1" class="phone" style="margin-left: 3px;" type="tel" maxlength="4">
									-<input id="phone2" name="phone2" class="phone"  style="margin-left: 3px;" type="tel" maxlength="4">
									<input id="phone" class="hidden" name= "phone" type="text">
									<div class="forminfo">		
										<div class="forminfo">
										<button id="phone_check" name="phone_check" type="button" class="button" onclick="phone_check()">인증하기</button>
										<span id="phoneInfo"></span>
									</div>
									</div></td>
							</tr>
						</table>
					<input id="submit" type="submit" value="SUBMIT"> 	
					</form>
				</div>
			</div>
		</div>
		<%@ include file="/../footer.jsp"%>

	</div>


</body>
</html>