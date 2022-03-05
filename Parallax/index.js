// setup general
var mouse = {
    x: window.innerWidth * 0.5,
    y: window.innerHeight * 0.5
}

// setup input
var input = {
    mouseX: {
        start: 0,
        end: window.innerWidth,
        current: mouse.x
    },
    mouseY: {
        start: 0,
        end: window.innerWidth,
        current: mouse.y
    },
};
input.mouseX.range = input.mouseX.end - input.mouseX.start;
input.mouseY.range = input.mouseY.end - input.mouseY.start;


// setup output
var output = {
    blur: {
        start: 0.2,
        range: 10,
    },
    x: {
        start: -150,
        end: 150,
        current: 0
    },
    y: {
        start: -150,
        end: 150,
        current: 0
    },
    z: {
        range: 10000,
    }
};
output.x.range = output.x.end - output.x.start;
output.y.range = output.y.end - output.y.start;


// setup html
var parallaxContainer = document.getElementById('parallaxContainer');
var itemsArray = [];
for (var i = 0; i < 130; i++) {
    // [x] create a new element with parallax-item className
    var item = document.createElement('div');
    item.className = 'parallax-item';
    itemsArray.push(item);

    //  [x] create new leaf for inside element with leaf class name
    var leaf = document.createElement('div');
    leaf.className = 'leaf';
    item.appendChild(leaf);

    // [x] add element to container
    parallaxContainer.appendChild(item);

    // [x] random width, height, depth, rotation, background image
    var bgImgNum = Math.round(Math.random() * 91);
    var rotateNum = (360 * Math.random());
    var depth = Math.random();
    var blur = (depth - output.blur.start) * output.blur.range;
    var zIndex = output.z.range - (depth * output.z.range);
    
    item.style.zIndex = zIndex;
    item.style.width =  (500 * Math.random()) + 200;
    item.style.height = (500 * Math.random()) + 200;
    item.dataset.depth = depth;
    item.style.transform = 'rotate('+rotateNum+'deg)';
    leaf.style.backgroundImage = 'url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1158400/parallax-asset-'+bgImgNum+'.png)';

    // adjust blur on depth
    // var blur = (depth - output.blur.start) * output.blur.range;
    // item.style.filter = 'blur(' + blur + 'px)';
    item.style.top =  Math.round(Math.random() * 100 - 20) + '%';
    item.style.left = Math.round(Math.random() * 100 - 20) + '%';
    console.log(i, 'dimensions', item.style.top, item.style.left)
}


var updateInputs = function () {
    // input current, fraction
    input.mouseX.current = mouse.x;
    input.mouseY.current = mouse.y;
    input.mouseX.fraction = (input.mouseX.current - input.mouseX.start) / input.mouseX.range;
    input.mouseY.fraction = (input.mouseY.current - input.mouseY.start) / input.mouseY.range;
}

var updateOutputs = function () {
    // output current. x and y
    output.x.current = output.x.end - (input.mouseX.fraction * output.x.range);
    output.y.current = output.y.end - (input.mouseY.fraction * output.y.range);
}

var updateParallaxItems = function () {
    // apply to html
    itemsArray.forEach(function (item, i) {
        var depth = parseFloat(item.dataset.depth, 10);

        var itemOutput = {
            x: output.x.current * depth,
            y: output.y.current * depth,
        }

        item.style.transform = 'translate('+itemOutput.x+'px, '+itemOutput.y+'px)';
    });
}

var handleMouseMove = function (event) {
    mouse.x = event.clientX;
    mouse.y = event.clientY;

    updateInputs();
    updateOutputs();
    updateParallaxItems();
}

var handleResize = function () {
    // end, range
    input.mouseX.end = window.innerWidth;
    input.mouseY.end = window.innerHeight;
    input.mouseX.range = input.mouseX.end - input.mouseX.start;
    input.mouseY.range = input.mouseY.end - input.mouseY.start;


}

window.addEventListener('mousemove', handleMouseMove);
window.addEventListener('resize', handleResize);