Chart.elements.Rectangle.prototype.draw = function () {

  var ctx = this._chart.ctx; // 차트의 컨텍스트 가져오기
  var vm = this._view; // 차트의 뷰 가져오기
  var left, right, top, bottom, signX, signY, borderSkipped, radius;
  var borderWidth = vm.borderWidth; // 경계선 너비 가져오기
  // 여기에서 반지름 설정
  // 반지름이 그리기 오류를 일으킬 만큼 크면 최대 반지름이 적용됨
  var cornerRadius = 6;

  if (!vm.horizontal) {
    // 세로 막대
    left = vm.x - vm.width / 2; // 막대 왼쪽 위치
    right = vm.x + vm.width / 2; // 막대 오른쪽 위치
    top = vm.y; // 막대 상단 위치
    bottom = vm.base; // 막대 하단 위치
    signX = 1;
    signY = bottom > top ? 1 : -1; // 상하 방향 확인
    borderSkipped = vm.borderSkipped || 'bottom'; // 생략된 경계선 설정
  } else {
    // 가로 막대
    left = vm.base; // 막대 왼쪽 위치
    right = vm.x; // 막대 오른쪽 위치
    top = vm.y - vm.height / 2; // 막대 상단 위치
    bottom = vm.y + vm.height / 2; // 막대 하단 위치
    signX = right > left ? 1 : -1; // 좌우 방향 확인
    signY = 1;
    borderSkipped = vm.borderSkipped || 'left'; // 생략된 경계선 설정
  }

  // 캔버스는 내부에 선 너비를 그릴 수 없으므로, 선을 설정하는 경우 크기를 조정하여 맞출 수 있음
  if (borderWidth) {
    // 선 너비는 막대 너비와 막대 높이보다 작아야 함
    var barSize = Math.min(Math.abs(left - right), Math.abs(top - bottom));
    borderWidth = borderWidth > barSize ? barSize : borderWidth;
    var halfStroke = borderWidth / 2;
    // 막대 상단 위치가 vm.base(0)에 가까울 때 선 너비 조정
    var borderLeft = left + (borderSkipped !== 'left' ? halfStroke * signX : 0);
    var borderRight = right + (borderSkipped !== 'right' ? -halfStroke * signX : 0);
    var borderTop = top + (borderSkipped !== 'top' ? halfStroke * signY : 0);
    var borderBottom = bottom + (borderSkipped !== 'bottom' ? -halfStroke * signY : 0);
    // 수직선이 되지 않도록 조정
    if (borderLeft !== borderRight) {
      top = borderTop;
      bottom = borderBottom;
    }
    // 수평선이 되지 않도록 조정
    if (borderTop !== borderBottom) {
      left = borderLeft;
      right = borderRight;
    }
  }

  ctx.beginPath(); // 경로 시작
  ctx.fillStyle = vm.backgroundColor; // 채우기 색상 설정
  ctx.strokeStyle = vm.borderColor; // 경계선 색상 설정
  ctx.lineWidth = borderWidth; // 경계선 너비 설정

  // 모서리 지점, 왼쪽 아래부터 시계 방향
  // | 1 2 |
  // | 0 3 |
  var corners = [
    [left, bottom],
    [left, top],
    [right, top],
    [right, bottom]
  ];

  // 'bottom'을 기본값으로 첫 번째(시작) 모서리 찾기
  var borders = ['bottom', 'left', 'top', 'right'];
  var startCorner = borders.indexOf(borderSkipped, 0);
  if (startCorner === -1) {
    startCorner = 0;
  }

  // 인덱스에 해당하는 모서리 위치 반환
  function cornerAt(index) {
    return corners[(startCorner + index) % 4];
  }

  // 'startCorner'에서부터 사각형 그리기
  var corner = cornerAt(0);
  ctx.moveTo(corner[0], corner[1]); // 시작 위치로 이동

  for (var i = 1; i < 4; i++) {
    corner = cornerAt(i);
    nextCornerId = i + 1; // 다음 모서리 인덱스 설정
    if (nextCornerId == 4) {
      nextCornerId = 0; // 인덱스가 4가 되면 0으로 설정
    }

    nextCorner = cornerAt(nextCornerId);

    width = corners[2][0] - corners[1][0]; // 막대 너비 계산
    height = corners[0][1] - corners[1][1]; // 막대 높이 계산
    x = corners[1][0];
    y = corners[1][1];

    var radius = cornerRadius; // 코너 반지름 설정

    // 반지름이 너무 큰 경우 수정
    if (radius > height / 2) {
      radius = height / 2;
    }
    if (radius > width / 2) {
      radius = width / 2;
    }

    ctx.moveTo(x + radius, y); // 반지름을 고려한 시작 위치로 이동
    ctx.lineTo(x + width - radius, y); // 상단 직선 그리기
    ctx.quadraticCurveTo(x + width, y, x + width, y + radius); // 오른쪽 상단 코너
    ctx.lineTo(x + width, y + height - radius); // 오른쪽 직선 그리기
    ctx.quadraticCurveTo(x + width, y + height, x + width - radius, y + height); // 오른쪽 하단 코너
    ctx.lineTo(x + radius, y + height); // 하단 직선 그리기
    ctx.quadraticCurveTo(x, y + height, x, y + height - radius); // 왼쪽 하단 코너
    ctx.lineTo(x, y + radius); // 왼쪽 직선 그리기
    ctx.quadraticCurveTo(x, y, x + radius, y); // 왼쪽 상단 코너
  }

  ctx.fill(); // 채우기
  if (borderWidth) {
    ctx.stroke(); // 경계선 그리기
  }
};