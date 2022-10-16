const button=document.getElementById("btn")
button.addEventListener('click',function()
{
    document.getElementById('somPalavra').src="assets/sounds/expert/choose.mp3";
    const audio=document.querySelector('audio');
    audio.play()
})