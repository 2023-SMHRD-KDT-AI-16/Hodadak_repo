const Sakura = function(selector, options) {
	if (typeof selector === 'undefined') {
		throw new Error('선택자가 정의되지 않았습니다. 요소를 정의하세요.');
	}

	this.el = document.querySelector(selector);

	// 옵션 객체의 기본값. 아래에서 확장됩니다.
	const defaults = {
		className: 'sakura', // 꽃잎의 클래스 이름. 이는 CSS와 일치합니다.
		fallSpeed: 0.5, // 꽃잎이 떨어지는 속도 인자 (값이 클수록 느려집니다).
		maxSize: 14, // 꽃잎의 최대 크기.
		minSize: 10, // 꽃잎의 최소 크기.
		delay: 1200, // 꽃잎 사이의 지연 시간 (기본값: 300).
		colors: [
			{
				// 여러 색상을 추가할 수 있습니다 (무작위로 선택됨).
				gradientColorStart: 'rgba(255, 183, 197, 0.9)', // 그라디언트 시작 색상 (rgba).
				gradientColorEnd: 'rgba(255, 197, 208, 0.9)', // 그라디언트 종료 색상 (rgba).
				gradientColorDegree: 120, // 그라디언트 각도.
			},
		],
	};

	// 기본값과 사용자 옵션을 병합합니다.
	const extend = function(originalObj, newObj) {
		Object.keys(originalObj).forEach(key => {
			if (newObj && Object.prototype.hasOwnProperty.call(newObj, key)) {
				const origin = originalObj;
				origin[key] = newObj[key];
			}
		});

		return originalObj;
	};

	this.settings = extend(defaults, options);

	// 대상 요소에서 수평 스크롤바를 숨깁니다.
	this.el.style.overflowX = 'hidden';

	// 무작위 배열 요소
	function randomArrayElem(arr) {
		return arr[Math.floor(Math.random() * arr.length)];
	}

	// 무작위 정수
	function randomInt(min, max) {
		return Math.floor(Math.random() * (max - min + 1)) + min;
	}

	// 애니메이션 이벤트를 확인합니다.
	const prefixes = ['webkit', 'moz', 'MS', 'o', ''];
	function PrefixedEvent(element, type, callback) {
		for (let p = 0; p < prefixes.length; p += 1) {
			let animType = type;

			if (!prefixes[p]) {
				animType = type.toLowerCase();
			}

			element.addEventListener(prefixes[p] + animType, callback, false);
		}
	}

	// 요소가 뷰포트에 있는지 확인합니다.
	function elementInViewport(el) {
		const rect = el.getBoundingClientRect();

		return (
			rect.top >= 0 &&
			rect.left >= 0 &&
			rect.bottom <=
			(window.innerHeight || document.documentElement.clientHeight) &&
			rect.right <= (window.innerWidth || document.documentElement.clientWidth)
		);
	}

	this.createPetal = () => {
		if (this.el.dataset.sakuraAnimId) {
			setTimeout(() => {
				window.requestAnimationFrame(this.createPetal);
			}, this.settings.delay);
		}

		// 애니메이션 이름. 이는 CSS 파일의 애니메이션과 일치해야 합니다.
		const animationNames = {
			blowAnimations: [
				'blow-soft-left',
				'blow-medium-left',
				'blow-soft-right',
				'blow-medium-right',
			],
			swayAnimations: [
				'sway-0',
				'sway-1',
				'sway-2',
				'sway-3',
				'sway-4',
				'sway-5',
				'sway-6',
				'sway-7',
				'sway-8',
			],
		};

		// 각 종류의 무작위 애니메이션을 하나 가져오고 꽃잎의 낙하 시간을 무작위로 설정합니다.
		const blowAnimation = randomArrayElem(animationNames.blowAnimations);
		const swayAnimation = randomArrayElem(animationNames.swayAnimations);
		const fallTime =
			(document.documentElement.clientHeight * 0.007 +
				Math.round(Math.random() * 5)) *
			this.settings.fallSpeed;

		// 애니메이션 생성
		const animationsArr = [
			`fall ${fallTime}s linear 0s 1`,
			`${blowAnimation} ${(fallTime > 30 ? fallTime : 30) -
			20 +
			randomInt(0, 20)}s linear 0s infinite`,
			`${swayAnimation} ${randomInt(2, 4)}s linear 0s infinite`,
		];
		const animations = animationsArr.join(', ');

		// 꽃잎을 생성하고 무작위 크기를 부여합니다.
		const petal = document.createElement('div');
		petal.classList.add(this.settings.className);
		const height = randomInt(this.settings.minSize, this.settings.maxSize);
		const width = height - Math.floor(randomInt(0, this.settings.minSize) / 3);

		// 무작위 색상을 가져옵니다.
		const color = randomArrayElem(this.settings.colors);

		petal.style.background = `linear-gradient(${color.gradientColorDegree}deg, ${color.gradientColorStart}, ${color.gradientColorEnd})`;
		petal.style.webkitAnimation = animations;
		petal.style.animation = animations;
		petal.style.borderRadius = `${randomInt(
			this.settings.maxSize,
			this.settings.maxSize + Math.floor(Math.random() * 10),
		)}px ${randomInt(1, Math.floor(width / 4))}px`;
		petal.style.height = `${height}px`;
		petal.style.left = `${Math.random() * document.documentElement.clientWidth -
			100}px`;
		petal.style.marginTop = `${-(Math.floor(Math.random() * 20) + 15)}px`;
		petal.style.width = `${width}px`;

		// 애니메이션이 끝난 꽃잎을 제거합니다.
		PrefixedEvent(petal, 'AnimationEnd', () => {
			if (!elementInViewport(petal)) {
				petal.remove();
			}
		});

		// 뷰포트 밖으로 떠내려간 꽃잎을 제거합니다.
		PrefixedEvent(petal, 'AnimationIteration', () => {
			if (!elementInViewport(petal)) {
				petal.remove();
			}
		});

		// 꽃잎을 대상 요소에 추가합니다.
		this.el.appendChild(petal);
	};

	this.el.setAttribute(
		'data-sakura-anim-id',
		window.requestAnimationFrame(this.createPetal),
	);
};

// Sakura 애니메이션을 시작합니다.
Sakura.prototype.start = function() {
	const animId = this.el.dataset.sakuraAnimId;
	if (!animId) {
		this.el.setAttribute(
			'data-sakura-anim-id',
			window.requestAnimationFrame(this.createPetal),
		);
	} else {
		throw new Error('Sakura가 이미 실행 중입니다.');
	}
};

// Sakura 애니메이션을 중지합니다.
Sakura.prototype.stop = function(graceful = false) {
	const animId = this.el.dataset.sakuraAnimId;
	if (animId) {
		window.cancelAnimationFrame(animId);
		this.el.setAttribute('data-sakura-anim-id', '');
	}

	// 현재 모든 꽃잎을 한 번에 제거합니다.
	// 'graceful'을 true로 설정하면 새 꽃잎이 생성되지 않도록 할 수 있습니다.
	// 이렇게 하면 꽃잎이 갑자기 제거되지 않습니다.
	if (!graceful) {
		setTimeout(() => {
			const petals = document.getElementsByClassName(this.settings.className);
			while (petals.length > 0) {
				petals[0].parentNode.removeChild(petals[0]);
			}
		}, this.settings.delay + 50);
	}
};

const pkg = require('../package.json');

const date = {
	day: new Date().getDate(),
	month: ('January February March April May June July August September October November December').split(' ')[new Date().getMonth()],
	year: new Date().getFullYear(),
};

module.exports = `${`
/*!
 * Sakura.js ${pkg.version}
 * ${pkg.description}
 * ${pkg.homepage}
 *
 * Copyright 2019-${date.year} ${pkg.author}
 *
 * Released under the ${pkg.license} License
 *
 * Released on: ${date.month} ${date.day}, ${date.year}
 */
`.trim()}\n`;

