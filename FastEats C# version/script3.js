const progress = [0, 50, 100];
const progressSteps = document.querySelectorAll('.tracker-step');

function updateProgress(index) {
    const progressBar = document.querySelector('.loading-progress');
    const stepWidth = 100 / (progressSteps.length - 1);
    const width = index * stepWidth;
    progressBar.style.width = `${width}%`;

    progressSteps.forEach((step, i) => {
        if (i === index) {
            step.classList.add('active');
        } else {
            step.classList.remove('active');
        }
    });
}

let currentIndex = 0;
const intervalId = setInterval(() => {
    currentIndex = currentIndex < progress.length - 1 ? currentIndex + 1 : 0;
    updateProgress(currentIndex);
    if (currentIndex === 0) {
        clearInterval(intervalId);
        window.location.href = 'thanks.aspx'; // Redirect to thank.html
    }
}, 4000);
