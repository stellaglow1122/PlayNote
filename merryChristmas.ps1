#"Console.Beep's frequency must be between 37 and 32767.
#There are totally 108 notes. A stands for La, B stands for Si, and so on. s means sharp and f means flat.
$notePitch = @{
B0s=16.35; B1s=32.70; B2s=65.41; B3s=130.81; B4s=261.63; B5s=523.25; B6s=1046.50; B7s=2093.00; B8s=4186.01;
C0=16.35; C1=32.70; C2=65.41; C3=130.81; C4=261.63; C5=523.25; C6=1046.50; C7=2093.00; C8=4186.01;
C0s=17.32; C1s=34.65; C2s=69.30; C3s=138.59; C4s=277.18; C5s=554.37; C6s=1108.73; C7s=2217.46; C8s=4434.92;
D0f=17.32; D1f=34.65; D2f=69.30; D3f=138.59; D4f=277.18; D5f=554.37; D6f=1108.73; D7f=2217.46; D8f=4434.92;
D0=18.35; D1=36.71; D2=73.42; D3=146.83; D4=293.66; D5=587.33; D6=1174.66; D7=2349.32; D8=4698.64;
D0s=19.45; D1s=38.89; D2s=77.78; D3s=155.56; D4s=311.13; D5s=622.25; D6s=1244.51; D7s=2489.02; D8s=4978.03;
E0f=19.45; E1f=38.89; E2f=77.78; E3f=155.56; E4f=311.13; E5f=622.25; E6f=1244.51; E7f=2489.02; E8f=4978.03;
E0=20.60; E1=41.20; E2=82.41; E3=164.81; E4=329.63; E5=659.26; E6=1318.51; E7=2637.02; E8=5274.04;
F0f=20.60; F1f=41.20; F2f=82.41; F3f=164.81; F4f=329.63; F5f=659.26; F6f=1318.51; F7f=2637.02; F8f=5274.04;
E0s=21.83; E1s=43.65; E2s=87.31; E3s=174.61; E4s=349.23; E5s=698.46; E6s=1396.91; E7s=2793.83; E8s=5587.65;
F0=21.83; F1=43.65; F2=87.31; F3=174.61; F4=349.23; F5=698.46; F6=1396.91; F7=2793.83; F8=5587.65;
F0s=23.12; F1s=46.25; F2s=92.50; F3s=185.00; F4s=369.99; F5s=739.99; F6s=1479.98; F7s=2959.96; F8s=5919.91;
G0f=23.12; G1f=46.25; G2f=92.50; G3f=185.00; G4f=369.99; G5f=739.99; G6f=1479.98; G7f=2959.96; G8f=5919.91;
G0=24.50; G1=49.00; G2=98.00; G3=196.00; G4=392.00; G5=783.99; G6=1567.99; G7=3135.96; G8=6271.93;
G0s=25.96; G1s=51.91; G2s=103.83; G3s=207.65; G4s=415.30; G5s=830.61; G6s=1661.22; G7s=3322.44; G8s=6644.88;
A0f=25.96; A1f=51.91; A2f=103.83; A3f=207.65; A4f=415.30; A5f=830.61; A6f=1661.22; A7f=3322.44; A8f=6644.88;
A0=27.50; A1=55.00; A2=110.00; A3=220.00; A4=440.00; A5=880.00; A6=1760.00; A7=3520.00; A8=7040.00;
A0s=29.14; A1s=58.27; A2s=116.54; A3s=233.08; A4s=466.16; A5s=932.33; A6s=1864.66; A7s=3729.31; A8s=7458.62;
B0f=29.14; B1f=58.27; B2f=116.54; B3f=233.08; B4f=466.16; B5f=932.33; B6f=1864.66; B7f=3729.31; B8f=7458.62;
B0=30.87; B1=61.74; B2=123.47; B3=246.94; B4=493.88; B5=987.77; B6=1975.53; B7=3951.07; B8=7902.13;
C0f=30.87; C1f=61.74; C2f=123.47; C3f=246.94; C4f=493.88; C5f=987.77; C6f=1975.53; C7f=3951.07; C8f=7902.13;
} 

#parameter $note stands namely for the note, $duration means how long should the sound played.
function Play-Note 
{
    Param([string]$note, [single]$duration)
    [console]::beep($notePitch[$note],$duration)
    switch($note[0])
    {
        C{Write-Host –NoNewLine 'Do '}
        D{Write-Host –NoNewLine 'Re '}
        E{Write-Host –NoNewLine 'Mi '}
        F{Write-Host –NoNewLine 'Fa '}
        G{Write-Host –NoNewLine 'So '}
        A{Write-Host –NoNewLine 'La '}
        B{Write-Host –NoNewLine 'Si '}
    }
}

#The song starts here, Merry Christmas!
Start-Sleep -m 1000
Write-Host –NoNewLine ' | '
Play-Note -note D5 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note A5 -duration 350
Play-Note -note G5 -duration 350
Play-Note -note D5 -duration 350
Start-Sleep -m 1000
Write-Host –NoNewLine ' | '
Play-Note -note D5 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note A5 -duration 350
Play-Note -note G5 -duration 350
Play-Note -note E5 -duration 350
Start-Sleep -m 1000
Write-Host –NoNewLine ' | '
Play-Note -note E5 -duration 350
Play-Note -note C6 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note A5 -duration 350
Play-Note -note F5s -duration 350
Start-Sleep -m 1000
Write-Host –NoNewLine ' | '
Play-Note -note D6 -duration 350
Play-Note -note D6 -duration 350
Play-Note -note C6 -duration 350
Play-Note -note A5 -duration 350
Play-Note -note B5 -duration 700
Play-Note -note G5 -duration 700
Start-Sleep -m 150
Write-Host –NoNewLine ' | '
Play-Note -note D5 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note A5 -duration 350
Play-Note -note G5 -duration 350
Play-Note -note D5 -duration 350
Start-Sleep -m 1000
Write-Host –NoNewLine ' | '
Play-Note -note D5 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note A5 -duration 350
Play-Note -note G5 -duration 350
Play-Note -note E5 -duration 350
Start-Sleep -m 1000
Write-Host –NoNewLine ' | '
Play-Note -note E5 -duration 350
Play-Note -note C6 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note A5 -duration 350
Play-Note -note D6 -duration 350
Play-Note -note D6 -duration 350
Play-Note -note D6 -duration 350
Play-Note -note D6 -duration 350
Play-Note -note E6 -duration 350
Play-Note -note D6 -duration 350
Play-Note -note C6 -duration 350
Play-Note -note A5 -duration 350
Play-Note -note G5 -duration 700
Start-Sleep -m 1000
Write-Host –NoNewLine ' | '
Play-Note -note B5 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note B5 -duration 350
Start-Sleep -m 350
Write-Host –NoNewLine ' | '
Play-Note -note B5 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note B5 -duration 350
Start-Sleep -m 350
Write-Host –NoNewLine ' | '
Play-Note -note B5 -duration 350
Play-Note -note D6 -duration 350
Play-Note -note G5 -duration 350
Play-Note -note A5 -duration 350
Play-Note -note B5 -duration 1050
Start-Sleep -m 350
Write-Host –NoNewLine ' | '
Play-Note -note C6 -duration 350
Play-Note -note C6 -duration 350
Play-Note -note C6 -duration 350
Play-Note -note C6 -duration 350
Play-Note -note C6 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note A5 -duration 350
Play-Note -note A5 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note A5 -duration 700
Play-Note -note D6 -duration 700
Start-Sleep -m 150
Write-Host –NoNewLine ' | '
Play-Note -note B5 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note B5 -duration 350
Start-Sleep -m 350
Write-Host –NoNewLine ' | '
Play-Note -note B5 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note B5 -duration 350
Start-Sleep -m 350
Write-Host –NoNewLine ' | '
Play-Note -note B5 -duration 350
Play-Note -note D6 -duration 350
Play-Note -note G5 -duration 350
Play-Note -note A5 -duration 350
Play-Note -note B5 -duration 1050
Start-Sleep -m 350
Write-Host –NoNewLine ' | '
Play-Note -note C6 -duration 350
Play-Note -note C6 -duration 350
Play-Note -note C6 -duration 350
Play-Note -note C6 -duration 350
Play-Note -note C6 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note B5 -duration 350
Play-Note -note D6 -duration 350
Play-Note -note D6 -duration 350
Play-Note -note C6 -duration 350
Play-Note -note A5 -duration 350
Play-Note -note G5 -duration 1050
Write-Host –NoNewLine ' | '