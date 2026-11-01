/**
 * FOGZERO LAB PROTO - INTERACTIVE LOGIC
 * Clean & Streamlined Laboratory Portal
 */

document.addEventListener('DOMContentLoaded', () => {
  initBatchCalculator();
  initGalleryModal();
  initSmoothScroll();
  initPrintButton();
});

/* ==========================================================================
   1. BATCH VOLUME SCALER & RECIPE CALCULATOR
   ========================================================================== */
function initBatchCalculator() {
  const batchInput = document.getElementById('batchInput');
  const batchSlider = document.getElementById('batchSlider');
  const presetButtons = document.querySelectorAll('.calc-preset-btn');
  
  // Value text elements
  const valWater = document.getElementById('valWater');
  const valSurfactant = document.getElementById('valSurfactant');
  const valGlycerin = document.getElementById('valGlycerin');
  
  const sumFormula = document.getElementById('sumFormula');
  const copyRecipeBtn = document.getElementById('copyRecipeBtn');
  const toastNotice = document.getElementById('toastNotice');

  if (!batchInput || !batchSlider) return;

  // Exact Ratios based on 100 mL experimental batch
  const RATIO_WATER = 98.5 / 100;     // 98.50% v/v
  const RATIO_SURF = 0.5 / 100;       // 0.50% v/v
  const RATIO_GLYC = 1.0 / 100;       // 1.00% v/v

  function updateCalculator(batchSize) {
    let size = parseFloat(batchSize);
    if (isNaN(size) || size <= 0) size = 100;
    if (size > 5000) size = 5000;

    const water = size * RATIO_WATER;
    const surfactant = size * RATIO_SURF;
    const glycerin = size * RATIO_GLYC;

    // Update numbers
    if (valWater) valWater.textContent = water.toFixed(2);
    if (valSurfactant) valSurfactant.textContent = surfactant.toFixed(2);
    if (valGlycerin) valGlycerin.textContent = glycerin.toFixed(2);

    // Update sum verification formula
    if (sumFormula) {
      sumFormula.textContent = `Sum Verification: ${water.toFixed(2)} + ${surfactant.toFixed(2)} + ${glycerin.toFixed(2)} = ${size.toFixed(2)} mL`;
    }

    // Sync input field and slider
    if (parseFloat(batchInput.value) !== size) {
      batchInput.value = size;
    }
    if (parseFloat(batchSlider.value) !== size) {
      batchSlider.value = Math.min(1000, size);
    }

    // Active button state
    presetButtons.forEach(btn => {
      const btnVal = parseFloat(btn.dataset.batch);
      if (btnVal === size) {
        btn.classList.add('active');
      } else {
        btn.classList.remove('active');
      }
    });
  }

  // Input & Slider listeners
  batchInput.addEventListener('input', (e) => {
    updateCalculator(e.target.value);
  });

  batchSlider.addEventListener('input', (e) => {
    updateCalculator(e.target.value);
  });

  presetButtons.forEach(btn => {
    btn.addEventListener('click', () => {
      const presetVal = parseFloat(btn.dataset.batch);
      updateCalculator(presetVal);
    });
  });

  // Copy Recipe Clipboard
  if (copyRecipeBtn) {
    copyRecipeBtn.addEventListener('click', () => {
      const size = parseFloat(batchInput.value) || 100;
      const water = (size * RATIO_WATER).toFixed(2);
      const surf = (size * RATIO_SURF).toFixed(2);
      const glyc = (size * RATIO_GLYC).toFixed(2);

      const text = `FOGZERO LAB PROTO - Anti-Fog Recipe (${size} mL Batch)
----------------------------------------------------
1. Distilled Water: ${water} mL (98.50%)
2. Polysorbate 80: ${surf} mL (0.50%)
3. Glycerin: ${glyc} mL (1.00%)
Total: ${size.toFixed(2)} mL (100% Volumetric Balance)`;

      navigator.clipboard.writeText(text).then(() => {
        showToast("Recipe copied to clipboard!");
      }).catch(() => {
        showToast("Recipe ready");
      });
    });
  }

  function showToast(msg) {
    if (!toastNotice) return;
    toastNotice.textContent = msg;
    toastNotice.style.display = 'block';
    setTimeout(() => {
      toastNotice.style.display = 'none';
    }, 2800);
  }

  // Run initial calculation
  updateCalculator(100);
}

/* ==========================================================================
   2. GALLERY MODAL LIGHTBOX & VIDEO SUPPORT (WITH AUTOPLAY)
   ========================================================================== */
function initGalleryModal() {
  const modalOverlay = document.getElementById('galleryModal');
  const modalBox = document.querySelector('.modal-body');
  const modalImg = document.getElementById('modalImage');
  const modalTitle = document.getElementById('modalTitle');
  const modalDesc = document.getElementById('modalDesc');
  const modalClose = document.getElementById('modalCloseBtn');
  const triggerLinks = document.querySelectorAll('[data-gallery-target]');

  if (!modalOverlay || !modalBox) return;

  triggerLinks.forEach(trigger => {
    trigger.addEventListener('click', (e) => {
      e.preventDefault();
      const title = trigger.dataset.title || 'Laboratory Documentation';
      const desc = trigger.dataset.desc || '';
      const src = trigger.dataset.src || '';
      const videoSrc = trigger.dataset.video || '';

      if (modalTitle) modalTitle.textContent = title;
      if (modalDesc) modalDesc.textContent = desc;

      // Remove any existing video element
      const activeVideo = modalBox.querySelector('video');
      if (activeVideo) activeVideo.remove();

      if (videoSrc) {
        const videoElem = document.createElement('video');
        videoElem.src = videoSrc;
        videoElem.controls = true;
        videoElem.autoplay = true;
        videoElem.muted = true;
        videoElem.style.maxWidth = '100%';
        videoElem.style.maxHeight = '60vh';
        videoElem.style.borderRadius = '8px';
        videoElem.style.marginBottom = '0.85rem';

        videoElem.onerror = () => {
          // If video file is not placed yet in assets/videos, fall back to high-res SVG
          videoElem.remove();
          if (modalImg) {
            modalImg.src = src;
            modalImg.style.display = 'inline-block';
          }
          if (modalDesc) {
            modalDesc.innerHTML = desc + '<br><span style="display:inline-block; margin-top:8px; padding: 4px 10px; background: #e8f5e9; border: 1px solid #a7d7c5; border-radius: 6px; color: #16382b; font-size: 0.78rem;"><strong>How to add video:</strong> Save your video file as <code>' + videoSrc + '</code></span>';
          }
        };

        if (modalImg) modalImg.style.display = 'none';
        modalBox.insertBefore(videoElem, modalDesc);
      } else {
        if (modalImg) {
          modalImg.src = src;
          modalImg.style.display = 'inline-block';
        }
      }

      modalOverlay.classList.add('active');
    });
  });

  function closeModal() {
    const activeVideo = modalBox.querySelector('video');
    if (activeVideo) {
      activeVideo.pause();
      activeVideo.remove();
    }
    modalOverlay.classList.remove('active');
  }

  if (modalClose) {
    modalClose.addEventListener('click', closeModal);
  }

  modalOverlay.addEventListener('click', (e) => {
    if (e.target === modalOverlay) {
      closeModal();
    }
  });

  window.addEventListener('keydown', (e) => {
    if (e.key === 'Escape' && modalOverlay.classList.contains('active')) {
      closeModal();
    }
  });
}

/* ==========================================================================
   3. SMOOTH NAVIGATION + SCROLL SPY
   ========================================================================== */
function initSmoothScroll() {
  const navLinks = document.querySelectorAll('.nav-link');

  // Click: smooth scroll
  navLinks.forEach(link => {
    link.addEventListener('click', (e) => {
      const targetId = link.getAttribute('href');
      if (targetId && targetId.startsWith('#')) {
        const targetElement = document.querySelector(targetId);
        if (targetElement) {
          e.preventDefault();
          targetElement.scrollIntoView({ behavior: 'smooth', block: 'start' });
        }
      }
    });
  });

  // Scroll spy: highlight whichever section is in view
  const sections = document.querySelectorAll('section[id]');

  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        const id = entry.target.getAttribute('id');
        navLinks.forEach(link => {
          if (link.getAttribute('href') === '#' + id) {
            link.classList.add('active');
          } else {
            link.classList.remove('active');
          }
        });
      }
    });
  }, {
    rootMargin: '-40% 0px -55% 0px',   // triggers when section is ~middle of screen
    threshold: 0
  });

  sections.forEach(section => observer.observe(section));
}

/* ==========================================================================
   4. PRINT LAB REPORT
   ========================================================================== */
function initPrintButton() {
  const printBtn = document.getElementById('printReportBtn');
  if (printBtn) {
    printBtn.addEventListener('click', (e) => {
      e.preventDefault();
      window.print();
    });
  }
}
