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

// ID 중복확인

function id_overlap() {
	var id = $("#id").val();
	var regul_ID = /^[a-zA-Z0-9]{4,12}$/;

	if (id == "") {
		alert("아이디를 입력해 주세요.");
		$("#id").focus();
	} else if (!(regul_ID.test(id))) {
		alert("아이디 형식이 올바르지 않습니다.");
		$("#id").val("");
		$("#id").focus();

	} else {
		$.ajax({
			type : "post",
			url : "id_overlap",
			async : true,
			data : "id=" + id,
			success : function(data) {
				console.log(data);
				if (data > 0) {
					alert("이미 사용중인 아이디입니다.");

					// 중복확인 재중복
					if ($("#id_check").hasClass("true")) {
						$("#id_check").removeClass("true");
					}

					$("#id").val("");
					$("#id").focus();

				} else {
					alert("사용 가능한 아이디입니다!");
					$("#id_check").addClass("true");
				}
			},
			error : function() {
				alert("예기치 못한 오류가 발생했습니다.");

			}

		});
	}
	;

};

// 이메일 중복확인

function email_overlap() {
	var email_id = $("#email_id").val();
	var email_ad = $("#email_ad").val();

	var email = email_id + "@" + email_ad;
	var regul_ID = /^[a-zA-Z0-9]{4,12}$/, regul_MAIL = /^([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/

	if (email_id == "") {
		alert("이메일을 입력해 주세요.");
		$("#email_id").focus();

	} else if (!(regul_ID.test(email_id)) || !(regul_MAIL.test(email_ad))) {

		alert("이메일 형식이 올바르지 않습니다.");
		$("#email_id").val("");
		$("#email_ad").val("");
		$("#select_email option:eq(0)").prop("selected", true);

	} else {
		$.ajax({
			type : "post",
			url : "email_overlap",
			async : true,
			data : "email=" + email,
			success : function(data) {
				console.log(data);
				if (data > 0) {
					alert("이미 사용중인 이메일입니다.");

					// 중복확인 재중복
					if ($("#email_check").hasClass("true")) {
						$("#email_check").removeClass("true");
					}

					$("#email_id").val("");
					$("#email_ad").val("");
					$("#email_id").focus();

				} else {
					alert("사용 가능한 이메일입니다!");
					$("#email_check").addClass("true");
				}
			},
			error : function() {
				alert("예기치 못한 오류가 발생했습니다.");

			}

		});
	}
	;

};

//휴대폰 인증

function phone_check() {

	var regul_PHONE = /^[0-9]{4,}$/;
	var phone1 = $("#phone1").val(), phone2 = $("#phone2").val();

	if (phone1 == "" && phone2 == "") {
		alert("연락처를 입력해 주세요.");
		$("#phone1").focus();

	} else if (!(regul_PHONE.test(phone1)) || !(regul_PHONE.test(phone2))) {
		alert("연락처 형식이 올바르지 않습니다.");
		$("#phone1").val("");
		$("#phone2").val("");
		$("#phone1").focus();

	} else {
		alert("인증 완료되었습니다.");

		if (!($("#phone_check").hasClass)) {
			$("#phone_check").addClass("true");
		}

	}

};

// 유효성검사

function check() {

	var lan = [ $("#id"), $("#pw"), $("#name"), $("#email_id"), $("#email_ad"),
			$("#address1"), $("#phone1"), $("#phone2") ];

	var icon1 = $("#icon1"), icon2 = $("#icon2");

	var regul_ID = /^[a-zA-Z0-9]{4,12}$/, regul_PW = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,}$/, regul_NAME = /^[가-힝a-zA-Z]{2,}$/, regul_MAIL = /^([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/, regul_PHONE = /^[0-9]{4,}$/;

	if (!icon1.hasClass("pink") || !icon2.hasClass("pink")) {
		alert("이용약관에 동의해주세요.");
		return false;
	} else {

		if ($("#id").val() == "") {
			alert("아이디는 비워둘 수 없습니다.");
			$("#id").focus();
			return false;

		} else if ($("#pw").val() == "") {
			alert("비밀번호는 비워둘 수 없습니다.");
			$("#pw").focus();
			return false;

		} else if ($("#name").val() == "") {
			alert("이름은 비워둘 수 없습니다.");
			$("#name").focus();
			return false;

		} else if ($("#email_id").val() == "") {
			alert("이메일은 비워둘 수 없습니다.");
			$("#email_id").focus();
			return false;

		} else if ($("#address1").val() == "") {
			alert("주소는 비워둘 수 없습니다.");
			$("#address1").focus();
			return false;

		} else if ($("#email_ad").val() == "") {
			alert("이메일 형식이 올바르지 않습니다.");
			$("#email_id").focus();
			return false;

		} else if ($("#phone1").val() == "") {
			alert("연락처는 비워둘 수 없습니다.");
			$("#phone1").focus();
			return false;

		} else if ($("#phone2").val() == "") {
			alert("연락처 형식이 올바르지 않습니다.");
			$("#phone2").focus();
			return false;
		} else {
			if (!(regul_ID.test($("#id").val()))) {
				alert("아이디 형식이 올바르지 않습니다.");
				return false;
			} else if (!(regul_PW.test($("#pw").val()))) {
				alert("비밀번호의 형식이 올바르지 않습니다.");
				return false;
			} else if (!(regul_NAME.test($("#name").val()))) {
				alert("이름의 형식이 올바르지 않습니다.");
				return false;
			} else if (!(regul_ID.test($("#email_id").val()))) {
				alert("이메일의 형식이 올바르지 않습니다.");
				return false;
			} else if (!(regul_MAIL.test($("#email_ad").val()))) {
				alert("이메일의 형식이 올바르지 않습니다.");
				return false;
			} else if (!(regul_PHONE.test($("#phone1").val()))) {
				alert("연락처의 형식이 올바르지 않습니다.");
				return false;
			} else if (!(regul_PHONE.test($("#phone2").val()))) {
				alert("연락처의 형식이 올바르지 않습니다.");
				return false;
			} else {
				var add2 = $("#address2").val();

				if (add2 == "상세주소를 입력해주세요") {
					add2 == "";
				}

				$("#address").val(
						$("#address1").val() + "/" + $("#address2").val());
				$("#email").val(
						$("#email_id").val() + "@" + $("#email_ad").val());
				$("#phone").val(
						$("#select_phone option:selected").val()
								+ $("#phone1").val() + $("#phone2").val());

				// 중복확인 체크

				if (!($("#id_check").hasClass("true"))) {
					alert("아이디 중복확인을 해주세요.");
					return false;

				} else if (!($("#id_check").hasClass("true"))) {
					alert("이메일 중복확인을 해주세요.");
					return false;
				} else if (!($("#phone_check").hasClass("true"))) {
					alert("휴대폰 인증을 해주세요.");
					return false;
				} else {
					console.log("유효성 검사 종료");
					return true;

				}

			}

		}
	}

}

$(document)
		.ready(
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

								setTimeout(function() {
									$("#email_ad").focus(); // 크롬 버그로 수정
								}, 1);
								$("#email_ad").val('');

								$("#email_ad").attr("disabled", false);
							} else {

								$("#email_ad").val(select.val());

								$("#email_ad").attr("disabled", true);
							}
						});
					});

					// 유효성 검사

					var id = $("#id"), pw = $("#pw"), name = $("#name"), regi_1 = $("#reginum1"), regi_2 = $("#reginum2"), email_id = $("#email_id"), email_ad = $("#email_ad"), phone1 = $("#phone1"), phone2 = $("#phone2");
					var submit = $("#submit");
					var id_val, pw_val, val, val2, data;

					//

					var regul_ID = /^[a-zA-Z0-9]{4,12}$/, regul_PW = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,}$/, regul_NAME = /^[가-힝a-zA-Z]{2,}$/, regul_MAIL = /^([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/, regul_PHONE = /^[0-9]{4,}$/;

					id
							.on(
									"propertychange change keyup paste input",
									function() {
										val = $(this).val();
										data = {
											val : val
										};

										if (!val) {
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

					pw
							.on(
									"propertychange change keyup paste input",
									function() {
										val = $(this).val();
										id_val = id.val();

										if (!val) {
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

								if (!val) {
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

								if (!val && !val2) {
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

								if (!val && !val2) {
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

								if (!val && !val2) {
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

								if (!val && !val2) {
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
