REM 1. Repara a imagem do sistema do Windows usada pelo sfc, baixando arquivos íntegros do Windows Update ou de uma imagem local.
DISM /Online /Cleanup-image /Restorehealth

REM 2. Verifica e repara arquivos de sistema corrompidos ou alterados no Windows, comparando com uma cópia protegida.
sfc /scannow

REM 3. Verifica a integridade do disco rígido (HD ou SSD), procurando setores defeituosos e tenta recuperar os dados desses setores.
CHKDSK /R
chkdsk C: /R

REM Após executar cada um, reiniciar o computador