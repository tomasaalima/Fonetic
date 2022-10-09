
setInterval(function()
{
    nextImage()
},5000)
function nextImage()
{
    let numImg=Math.floor(Math.random()*3);
    document.getElementById('palavra').src=numImg+".png";
    const button=document.querySelector('button');
    button.addEventListener('click',function()
    {
        document.getElementById('somPalavra').src=numImg+".mp3";
        const audio=document.querySelector('audio');
        audio.play()
    })
}