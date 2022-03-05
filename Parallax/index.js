var parallaxContainer = document.getElementById('parallaxContainer');

// setup output
var output = {
    blur: {
        start: 0.2,
        range: 20,
    }
}

for (var i = 0; i < 10; i++) {
    // [x] create a new element with parallax-item className
    var item = document.createElement('div');
    item.className = 'parallax-item';

    //  [x] create new leaf for inside element with leaf class name
    var leaf = document.createElement('div');
    leaf.className = 'leaf';
    item.appendChild(leaf);

    // [x] add element to container
    parallaxContainer.appendChild(item);

    // [x] random width, height, depth, rotation, background image
    var randomNum = Math.random();
    var bgImgNum = Math.round(randomNum * 91);
    var rotateNum = (360 * randomNum);
    var depth = randomNum;
    
    item.style.width =  (500 * randomNum) + 200;
    item.style.height = (500 * randomNum) + 200;
    item.dataset.depth = depth;
    item.style.transform = 'rotate('+rotateNum+'deg)';
    leaf.style.backgroundImage = 'url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1158400/parallax-asset-'+bgImgNum+'.png)';

    // adjust blur on depth
    item.style.filter = 'blur(20px)';
}