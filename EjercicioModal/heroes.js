const videoPlayer = document.getElementById("video-player");
const changeVideoButton = document.getElementById("change-video-button");

changeVideoButton.addEventListener("click", function() {
    console.log("El botón de cambio de video fue presionado");
  // Cambia la URL del video en el reproductor de video
  videoPlayer.src = "echo.mp4";
});

