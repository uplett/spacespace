//주소 검색 api

function postcode() {
	console.log("주소찾기");
	new daum.Postcode({
		oncomplete : function(data) {

			var roadAddr = data.roadAddress; // 도로명주소 변수
			var extraRoadAddr = '';
			var zoneCode = data.zonecode;// 참고변수

			// 법정동명 있을경우 추가
			if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
				extraRoadAddr += data.bname;
			}

			// 건물명이 있고 공동주택일 경우 추가
			if (data.buildingName !== '' && data.apartment === 'Y') {
				extraRoadAddr += (extraRoadAddr !== '' ? ', '
						+ data.buildingName : data.buildingName);
			}

			// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열.
			if (extraRoadAddr !== '') {
				extraRoadAddr = ' (' + extraRoadAddr + ')';
			}

			console.log(roadAddr);
			console.log(extraRoadAddr);
			console.log(zoneCode);

			var add1 = $("#address1");
			var add2 = $("#address2");
			add1.val(roadAddr + " / " + zoneCode);
			add2.val(extraRoadAddr);
		}

	}).open();

	setTimeout(function() {
		$("#address2").focus();
	}, 1); // 상세주소로 포커스
};

// 유효성검사

function check_item(item) {
	console.log(item+"체크");
}

function check() {
	if (check_item($("#id").val()) != "") {
		return false;
	} else if ($("#pw").val() != "") {
		return false;
	} else if ($("#name").val() != "") {
		return false;
	} else if ($("#email_id").val() != "") {
		return false;
	} else if ($("#phone1").val() != "") {
		return false;
	}else{
		console.log("유효성 검사 종료");
		return false;
		
	}
	
}

$(document).ready(
				function() {

					// 이용약관 동의

					var icon1 = $("#condition_1");
					var icon2 = $("#condition_2");

					icon1.click(function() {
						icon1.find("i").toggleClass('pink');
					});

					icon2.click(function() {
						icon2.find("i").toggleClass('pink');
					});

					// 이메일 포커스

					var select = $("#select_email");

					select.change(function() {
						select.each(function() {
							if (select.val() == "input") {
								console.log("직접입력");
								setTimeout(function() {
									$("#email_ad").focus(); // 크롬 버그로 수정
								}, 1);
								$("#email_ad").val('');
								console.log($("	#email_ad").text());
								$("#email_ad").attr("disabled", false);
							} else {
								console.log("이외");
								$("#email_ad").val(select.val());
								console.log($("#email_ad").val());
								$("#email_ad").attr("disabled", true);
							}
						});
					});

					// 유효성 검사

					var id = $("#id"), pw = $("#pw"), name = $("#name"), regi_1 = $("#reginum1"), regi_2 = $("#reginum2"), email_id = $("#email_id"), email_ad = $("#email_ad"), phone1 = $("#phone1"), phone2 = $("#phone2");

					var submit = $("#submit");

					var id_val, pw_val, val, val2;

					//

					var regul_ID = /^[a-zA-Z0-9]{4,12}$/, regul_PW = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,}$/, regul_NAME = /^[가-힝a-zA-Z]{2,}$/, regul_MAIL = /^([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/, regul_PHONE = /^[0-9]{4,}$/;

					id.on("propertychange change keyup paste input",
									function() {
										val = $(this).val();

										if (val == "") {
											$("#idInfo").text(
													"아이디는 비워둘 수 없습니다.");
										} else {
											if (regul_ID.test(val)) {
												$("#idInfo").text("");
											} else {
												$("#idInfo")
														.text(
																"아이디는 4 ~ 12자의 영문 대소문자와 숫자로만 구성해 주세요.");
											}
											;
										}
									});

					pw.on("propertychange change keyup paste input",
									function() {
										val = $(this).val();
										id_val = id.val();

										if (val == "") {
											$("#pwInfo").text(
													"비밀번호는 비워둘 수 없습니다.");
										} else {
											if (id_val == val) {
												$("#pwInfo")
														.text(
																"아이디와 비밀번호는 일치할 수 없습니다.");
											} else {
												if (regul_PW.test(val)) {
													$("#pwInfo").text("");
												} else {
													$("#pwInfo")
															.text(
																	"패스워드는 영문, 숫자, 특수문자를 포함해 6자 이상으로 구성해 주세요.");
												}
											}
											;
										}
									});

					name.on("propertychange change keyup paste input",
							function() {
								val = $(this).val();

								if (val == "") {
									$("#nameInfo").text("이름은 비워둘 수 없습니다.");
								} else {
									if (regul_NAME.test(val)) {
										$("#nameInfo").text("");
									} else {
										$("#nameInfo").text("올바르지 않은 이름입니다.");
									}
									;
								}
							});

					email_id.on("propertychange change keyup paste input",
							function() {
								val = $(this).val();
								val2 = email_ad.val();

								if (val == "" && val2 == "") {
									$("#emailInfo").text("이메일은 비워둘 수 없습니다.");
								} else {
									if (regul_ID.test(val)) {
										$("#emailInfo").text("");
									} else {
										$("#emailInfo").text(
												"이메일 형식이 올바르지 않습니다.");
									}
								}

							});

					email_ad.on("propertychange change keyup paste input",
							function() {
								val = $(this).val();
								val2 = email_id.val();

								if (val == "" && val2 == "") {
									$("#emailInfo").text("이메일은 비워둘 수 없습니다.");
								} else {
									if (regul_MAIL.test(val)) {
										$("#emailInfo").text("");
									} else {
										$("#emailInfo").text(
												"이메일 형식이 올바르지 않습니다.");
									}
								}

							});

					phone1.on("propertychange change keyup paste input",
							function() {
								val = $(this).val();
								val2 = $("#phone2").val();

								if (val == "" && val2 == "") {
									$("#phoneInfo").text("휴대폰번호는 비워둘 수 없습니다.");
								} else {
									if (regul_PHONE.test(val)) {
										$("#phoneInfo").text("");
									} else {
										$("#phoneInfo").text(
												"휴대폰번호의 형식이 올바르지 않습니다.");
									}
								}

							});

					phone2.on("propertychange change keyup paste input",
							function() {
								val = $(this).val();
								val2 = $("#phone1").val();

								if (val == "" && val2 == "") {
									$("#phoneInfo").text("휴대폰번호는 비워둘 수 없습니다.");
								} else {
									if (regul_PHONE.test(val)) {
										$("#phoneInfo").text("");
									} else {
										$("#phoneInfo").text(
												"휴대폰번호의 형식이 올바르지 않습니다.");
									}
								}

							});
				});
