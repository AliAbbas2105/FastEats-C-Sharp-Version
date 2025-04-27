const progressSteps = document.querySelectorAll('.tracker-step'); // Select all the steps
const progressBar = document.querySelector('.loading-progress'); // Select the progress bar

function updateProgress(index) {
    const stepWidth = 100 / (progressSteps.length - 1);
    const width = index * stepWidth;
    progressBar.style.width = `${width}%`;

    // Update active step
    progressSteps.forEach((step, i) => {
        if (i === index) {
            step.classList.add('active');
        } else {
            step.classList.remove('active');
        }
    });
}

let currentIndex = 0;
setInterval(() => {
    currentIndex = currentIndex < progressSteps.length - 1 ? currentIndex + 1 : 0;
    updateProgress(currentIndex);
}, 4000); // Update progress every 4 seconds
