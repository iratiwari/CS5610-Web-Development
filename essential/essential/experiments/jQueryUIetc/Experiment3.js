function canvas() {
    var ctx = document.getElementById('canvas').getContext('2d');
    ctx.canvas.addEventListener('mousemove', function (event) {
        var cursorX = event.clientX - ctx.canvas.offsetLeft;
        var cursorY = event.clientY - ctx.canvas.offsetTop;
        var status = document.getElementById('CurrentStatus');
        status.innerHTML = "Current cursor Position : (" + cursorX + ", " + cursorY + ")";
    });
    ctx.canvas.addEventListener('click', function (event) {
        var cursorX = event.clientX - ctx.canvas.offsetLeft;
        var cursorY = event.clientY - ctx.canvas.offsetTop;
        ctx.fillStyle = "yellow";
        ctx.fillRect(cursorX - 10, cursorY - 10, 10, 10);
    });
}
window.addEventListener('load', function (event) {
    canvas();
});