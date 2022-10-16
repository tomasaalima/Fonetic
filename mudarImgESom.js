window.onload=function()
{
    nextImage();
    var duration=50;
    var display=document.querySelector("#timer");
    startTime(duration,display)
}

function startTime(duration,display)
{
        var timer=duration,minutes,seconds; 
        setInterval(function()
        {
             minutes=parseInt(timer/60,10);
             seconds=parseInt(timer%60,10);
             minutes=minutes< 10 ? "0"+minutes:minutes;
             seconds=seconds < 10 ? "0"+seconds:seconds;
             display.textContent=minutes+":"+seconds;
             if(--timer<0)
             {
                timer=duration;
                nextImage()
             }
             
        },834)
}

function nextImage()
{
    let numImg=Math.floor(Math.random()*3);
    document.getElementById('palavra').src=numImg+".png";
    const button=document.querySelector('button');
    button.addEventListener('click',function()
    {
        document.getElementById('somPalavra').src="spider.mp3";
        const audio=document.querySelector('audio');
        audio.play()
    })
}