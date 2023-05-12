

const cardContainer = document.querySelector('.Carrousel__CardContainer');
const point = document.querySelectorAll('.point');

point.forEach((item, i) => {
    point[i].addEventListener('click', () => {

        let position = i;
        let operation = position * -25;
        if (position == 0) {
            operation = 25;
        }
        cardContainer.style.transform = `translateX(${operation}%)`;

        point.forEach((item, i) => {
            point[i].classList.remove('active');
        })
        point[i].classList.add('active');
        console.log(i);

    })
    
})