# Clarivue LAB PROTO • Anti-Fog Project Website

A professional chemical prototyping portal and interactive laboratory report website for the **Anti-Fog Spray formulation** (Distilled Water, Polysorbate 80, and Glycerin).

---

## 🚀 How to View the Website
Simply double-click **`index.html`** or paste this path into Google Chrome, Microsoft Edge, or any web browser:
```text
file:///C:/Users/adity/.gemini/antigravity/scratch/anti-fog-spray-project/index.html
```

---

## 📂 Project Structure
```text
anti-fog-spray-project/
├── index.html                  # Semantic, accessible HTML5 structure
├── styles.css                  # Modern laboratory-grade responsive design system
├── app.js                      # Dynamic Batch Scaler, Fog Comparison Slider, Lightbox
├── README.md                   # Quick guide & customization notes
└── assets/
    ├── img/                    # High-resolution vector diagrams & laboratory schematics
    │   ├── surfactant-measurement.svg
    │   ├── homogenization-stirring.svg
    │   ├── steam-test-comparison.svg
    │   ├── final-solution.svg
    │   ├── optical-contact-angle.svg
    │   └── lab-notebook-scan.svg
    ├── photos/                 # Place your practical photos here
    └── videos/                 # Place your glass steam demo video here (e.g. steam-demo.mp4)
```

---

## 🎥 How to Add Your Videos & Photos from Google Drive
The website is currently pre-loaded with high-resolution laboratory graphics so there are **zero blank spaces**. When you download your files from Google Drive:

1. **For your video demonstration:**
   - Rename your steam demonstration video to `steam-demo.mp4`.
   - Copy it into `anti-fog-spray-project/assets/videos/steam-demo.mp4`.
   - The website will automatically detect and play it in full resolution with player controls!

2. **For laboratory photos:**
   - Copy your photos into `anti-fog-spray-project/assets/photos/` (e.g., `team-photo.jpg`, `lab-beaker.jpg`).
   - Open `index.html` and replace any `src="assets/img/..."` with `src="assets/photos/team-photo.jpg"`.

---

## 🧪 Interactive Features Included
1. **Interactive Before/After Steam Wipe Slider**:
   - Compare untreated fogged glass against treated clear glass with live contact angle metrology.
2. **Batch Volume Scaler & Recipe Calculator**:
   - Matches the friend's site design exactly, allowing scaling from 20 mL to 1000 mL with dynamic ingredient cards, progress bars, and "Copy Recipe" clipboard support.
3. **SOP Flowchart & Lab Notebook Viewer**:
   - Step-by-step numbered laboratory cards with click-to-enlarge original handwritten protocol sheet.
4. **Formulation Sensitivity Matrix**:
   - Visual guidance for Polysorbate 80 and Glycerin concentration dynamics.
5. **Print Report Engine**:
   - One-click print button formatted for academic paper submission or PDF archiving.
