var slider_content = document.getElementsByClassName('slider-content')[0];
var left = document.getElementsByClassName('fa-angle-left')[0];
var right = document.getElementsByClassName('fa-angle-right')[0];
var allDot = document.querySelectorAll("div.slider-dot span");
var currentIndex = 0;
var listImageSlider = [
  "https://theme.hstatic.net/200000637319/1000990988/14/slide_1_img.jpg?v=574",

  "https://theme.hstatic.net/200000637319/1000990988/14/slide_2_img.jpg?v=574",
  "https://theme.hstatic.net/200000637319/1000990988/14/slide_3_img.jpg?v=574",
  "https://theme.hstatic.net/200000637319/1000990988/14/slide_4_img.jpg?v=574",
];
slider_content.style.backgroundImage = 'url('+listImageSlider[currentIndex]+')';
left.addEventListener('click', function(){
    currentIndex--;
    if(currentIndex < 0){
        currentIndex = listImageSlider.length - 1;
    }
    console.log(10);
    slider_content.style.backgroundImage = 'url('+listImageSlider[currentIndex]+')';

})
right.addEventListener('click', function(){
    currentIndex++;
    if(currentIndex == listImageSlider.length){
        currentIndex  = 0;
    }
    console.log(10);
    slider_content.style.backgroundImage = ''rl('+listImageSlider[currentIndex]+')';
})
function changeAuto(){
    currentIndex++;
    if(currentIndex == listImageSlider.length){
        currentIndex = 0;
    }
    slider_content.style.backgroundImage = 'url('+listImageSlider[currentIndex]+')';
    slider_content.classList.add('active');
    setTimeout(()=>{
        slider_content.classList.remove('active');
    },300)
    setTimeout(changeAuto, 5000);
}

// Gọi hàm updateDots với chỉ số của slide hiện tại (ví dụ: currentIndex)
setTimeout(changeAuto, 4000)