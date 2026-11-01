$pdfContent = @"
%PDF-1.4
%âãÏÓ
1 0 obj
<<
  /Type /Catalog
  /Pages 2 0 R
>>
endobj

2 0 obj
<<
  /Type /Pages
  /Kids [3 0 R 4 0 R]
  /Count 2
>>
endobj

3 0 obj
<<
  /Type /Page
  /Parent 2 0 R
  /MediaBox [0 0 595.28 841.89]
  /Resources <<
    /Font <<
      /F1 5 0 R
      /F2 6 0 R
    >>
  >>
  /Contents 7 0 R
>>
endobj

4 0 obj
<<
  /Type /Page
  /Parent 2 0 R
  /MediaBox [0 0 595.28 841.89]
  /Resources <<
    /Font <<
      /F1 5 0 R
      /F2 6 0 R
    >>
  >>
  /Contents 8 0 R
>>
endobj

5 0 obj
<<
  /Type /Font
  /Subtype /Type1
  /BaseFont /Helvetica-Bold
>>
endobj

6 0 obj
<<
  /Type /Font
  /Subtype /Type1
  /BaseFont /Helvetica
>>
endobj
"@

# Helper to build page streams
$streamPage1 = @"
BT
/F1 18 Tf
40 800 Td
(FOGZERO LAB PROTO - PRESENTATION SCRIPT) Tj
ET

BT
/F1 10 Tf
40 782 Td
(Chemical Prototyping Project: Anti-Fog Formulation | 100 mL Batch) Tj
ET

BT
/F2 9 Tf
40 766 Td
(Team: Yadnesh Sadavarte [01] | Harshal Bhange [02] | Aditya Bhosale [03]) Tj
ET

% Line divider
0.1 0.3 0.2 RG
2 w
40 755 m 555 755 l S

% SPEAKER 1 BOX
0.95 0.98 0.96 rg
0.17 0.42 0.31 RG
1 w
40 520 515 220 re B

BT
/F1 12 Tf
0.09 0.22 0.17 rg
55 720 Td
(SPEAKER 1: YADNESH SADAVARTE [ROLL 01]) Tj
ET

BT
/F1 8.5 Tf
410 720 Td
(Duration: 1 Min 30 Sec) Tj
ET

BT
/F1 9 Tf
0.18 0.42 0.31 rg
55 702 Td
(Topic: Problem Statement, Surface Tension & Polysorbate 80 Mechanism) Tj
ET

BT
/F2 8.5 Tf
0.6 0.3 0.1 rg
55 686 Td
([Action: Keep portal on top Hero section & point to 3 science cards]) Tj
ET

BT
/F2 9 Tf
0.1 0.1 0.1 rg
55 665 Td
14 TL
(Good morning respected teachers and evaluators. My name is Yadnesh Sadavarte,) T*
(Roll No 01. Together with Harshal and Aditya, we developed FogZero Anti-Fog Spray.) T*
() T*
(THE PROBLEM: Warm water vapor and breath cause glass to fog. When moisture hits cold) T*
(glass, surface tension forces water to bead into millions of microscopic round droplets.) T*
(Each micro-droplet scatters light in all directions, creating an opaque white blur.) T*
() T*
(THE SCIENCE: We formulated Polysorbate 80 (Tween 80), a safe non-ionic surfactant.) T*
(It drastically lowers the surface tension of water. Instead of forming beads, moisture) T*
(spreads instantly into a flat, continuous, invisible sheet. Light passes straight through) T*
(without scattering, keeping the glass 100% transparent.) T*
() T*
(Now, I hand over to Harshal to explain our chemical recipe and preparation steps.) T*
ET

% SPEAKER 2 BOX
0.95 0.98 0.96 rg
0.17 0.42 0.31 RG
1 w
40 250 515 250 re B

BT
/F1 12 Tf
0.09 0.22 0.17 rg
55 480 Td
(SPEAKER 2: HARSHAL BHANGE [ROLL 02]) Tj
ET

BT
/F1 8.5 Tf
410 480 Td
(Duration: 1 Min 30 Sec) Tj
ET

BT
/F1 9 Tf
0.18 0.42 0.31 rg
55 462 Td
(Topic: Chemical Recipe, Batch Scaler & 5-Step SOP Flowchart) Tj
ET

BT
/F2 8.5 Tf
0.6 0.3 0.1 rg
55 446 Td
([Action: Scroll to Batch Calculator, click 50 mL or 250 mL, then scroll to SOP]) Tj
ET

BT
/F2 9 Tf
0.1 0.1 0.1 rg
55 425 Td
14 TL
(Thank you, Yadnesh. My name is Harshal Bhange (Roll No 02). I will explain our recipe) T*
(and our step-by-step laboratory synthesis procedure.) T*
() T*
(OUR 100 mL PROTOTYPE RECIPE:) T*
(- Distilled Water [98.5 mL]: Pure base that spreads ingredients without water spots.) T*
(- Polysorbate 80 [0.5 mL]: The active surfactant that creates the thin water sheet.) T*
(- Glycerin [1.0 mL]: Humectant that holds moisture to prevent streaks or dry-out.) T*
() T*
(On our website, we built a Batch Volume Scaler that automatically calculates exact) T*
(milliliters for 50 mL pocket sprays up to 1-liter bulk with 100% volumetric balance.) T*
() T*
(OUR 5-STEP PROCEDURE:) T*
(Step 1: Clean and dry a 150 mL Borosil beaker and measuring cylinder.) T*
(Step 2: Measure 80 mL distilled water into the beaker as carrier base.) T*
(Step 3: Measure 0.5 mL Polysorbate 80. Add slowly and stir gently (no bubbles).) T*
(Step 4: Add 1.0 mL glycerin and stir gently for 2 to 3 minutes until mixed.) T*
(Step 5: Top up with water to 100 mL, bottle it, and rest 30 mins to verify clarity.) T*
() T*
(Now, Aditya will present our video evidence and steam testing performance.) T*
ET

BT
/F2 8 Tf
0.5 0.5 0.5 rg
200 40 Td
(FogZero Lab Proto - Page 1 of 2 | Continued on Next Page ->) Tj
ET
"@

$streamPage2 = @"
BT
/F1 18 Tf
40 800 Td
(FOGZERO LAB PROTO - PRESENTATION SCRIPT) Tj
ET

BT
/F2 9 Tf
40 782 Td
(Page 2: Speaker 3 Testing Showcase & Evaluator Q&A Reference) Tj
ET

% Line divider
0.1 0.3 0.2 RG
2 w
40 770 m 555 770 l S

% SPEAKER 3 BOX
0.95 0.98 0.96 rg
0.17 0.42 0.31 RG
1 w
40 500 515 250 re B

BT
/F1 12 Tf
0.09 0.22 0.17 rg
55 730 Td
(SPEAKER 3: ADITYA BHOSALE [ROLL 03]) Tj
ET

BT
/F1 8.5 Tf
410 730 Td
(Duration: 1 Min 30 Sec) Tj
ET

BT
/F1 9 Tf
0.18 0.42 0.31 rg
55 712 Td
(Topic: Practical Videos, Steam Exposure Test Results & Conclusion) Tj
ET

BT
/F2 8.5 Tf
0.6 0.3 0.1 rg
55 696 Td
([Action: Scroll to Gallery, play Step 4 Video, show 100% Verified Practical card]) Tj
ET

BT
/F2 9 Tf
0.1 0.1 0.1 rg
55 675 Td
14 TL
(Thank you, Harshal. My name is Aditya Bhosale (Roll No 03). I will present our practical) T*
(video evidence, steam testing, and performance results.) T*
() T*
(LABORATORY VIDEO EVIDENCE:) T*
(On our portal gallery, we have video recordings of all four practical stages: from) T*
(surfactant measurement, to gentle mixing, bottle filling, and testing on glass.) T*
() T*
(STEAM PERFORMANCE TESTING:) T*
(To test FogZero, we conducted a dual-slide comparison over an 85 C steam chamber.) T*
(- Slide 1 [Control]: Left untreated without any coating.) T*
(- Slide 2 [FogZero]: Coated with a very thin wiped film of our formulation.) T*
() T*
(THE RESULTS:) T*
(The untreated glass fogged up in under 2 seconds, becoming completely cloudy.) T*
(In contrast, the FogZero glass stayed 100% crystal-clear! The steam flattened into a) T*
(smooth, transparent continuous sheet with zero blurring or distortion.) T*
(We repeated this test 3 times under identical conditions with 100% success.) T*
() T*
(CONCLUSION: FogZero is safe, non-toxic, alcohol-free, and effective for mirrors,) T*
(spectacles, and vehicle glass. Thank you! We are now open for any questions.) T*
ET

% Q&A QUICK CHEAT SHEET BOX
0.96 0.99 0.97 rg
0.2 0.5 0.3 RG
1 w
40 270 515 210 re B

BT
/F1 11 Tf
0.09 0.22 0.17 rg
55 460 Td
(EVALUATOR & TEACHER Q&A CHEAT SHEET) Tj
ET

BT
/F1 9 Tf
0.15 0.35 0.22 rg
55 440 Td
(Q1: Why use Polysorbate 80 instead of dishwashing liquid or soap?) Tj
ET
BT
/F2 8.5 Tf
0.2 0.2 0.2 rg
55 426 Td
(A: Dish soaps contain harsh ionic detergents and fragrance oils that leave oily streaks.) Tj
55 414 Td
(Polysorbate 80 is a non-ionic cosmetic surfactant that dries water-clear and streak-free.) Tj
ET

BT
/F1 9 Tf
0.15 0.35 0.22 rg
55 394 Td
(Q2: What is the exact role of Glycerin?) Tj
ET
BT
/F2 8.5 Tf
0.2 0.2 0.2 rg
55 380 Td
(A: Glycerin is a humectant. It attracts a tiny moisture buffer, keeping the surfactant layer) Tj
55 368 Td
(hydrated so the anti-fog effect lasts significantly longer without drying out.) Tj
ET

BT
/F1 9 Tf
0.15 0.35 0.22 rg
55 348 Td
(Q3: Why did you stir gently instead of shaking vigorously?) Tj
ET
BT
/F2 8.5 Tf
0.2 0.2 0.2 rg
55 334 Td
(A: Polysorbate 80 is a foaming surfactant. Shaking introduces micro-bubbles that disrupt) Tj
55 322 Td
(optical clarity and make accurate meniscus volumetric measurement impossible.) Tj
ET

BT
/F1 9 Tf
0.15 0.35 0.22 rg
55 302 Td
(Q4: Is this suitable for commercial long-term shelf storage?) Tj
ET
BT
/F2 8.5 Tf
0.2 0.2 0.2 rg
55 288 Td
(A: This is an experimental starting batch without preservatives. For commercial use,) Tj
55 276 Td
(a broad-spectrum preservative like phenoxyethanol would be added for shelf stability.) Tj
ET

% FOOTER
BT
/F2 8 Tf
0.5 0.5 0.5 rg
160 220 Td
(FogZero LAB PROTO - University Chemical Prototyping Practical Evaluation) Tj
ET
"@

$len1 = $streamPage1.Length
$len2 = $streamPage2.Length

$obj7 = @"
7 0 obj
<<
  /Length $len1
>>
stream
$streamPage1
endstream
endobj
"@

$obj8 = @"
8 0 obj
<<
  /Length $len2
>>
stream
$streamPage2
endstream
endobj
"@

$fullPdf = $pdfContent + "`r`n" + $obj7 + "`r`n" + $obj8 + "`r`n" + @"
xref
0 9
0000000000 65535 f 
0000000015 00000 n 
0000000068 00000 n 
0000000139 00000 n 
0000000282 00000 n 
0000000425 00000 n 
0000000504 00000 n 
0000000578 00000 n 
0000003500 00000 n 
trailer
<<
  /Size 9
  /Root 1 0 R
>>
startxref
6000
%%EOF
"@

[System.IO.File]::WriteAllText("C:\Users\adity\.gemini\antigravity\scratch\anti-fog-spray-project\FogZero_Presentation_Script.pdf", $fullPdf)
