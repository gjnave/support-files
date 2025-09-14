@echo off
setlocal enabledelayedexpansion

:: Base URL for wheels
set BASE_URL=https://huggingface.co/MonsterMMORPG/Wan_GGUF/resolve/main
set DEST=support\wheels

:: Make sure folders exist
for %%V in (310 311 312 313) do (
    if not exist "%DEST%\py%%V" mkdir "%DEST%\py%%V"
)

echo ============================================
echo Downloading wheels into %DEST%
echo ============================================

:: ---------- Python 3.10 ----------
curl -L -o %DEST%\py310\flash_attn-2.8.2-cp310-cp310-win_amd64.whl %BASE_URL%/flash_attn-2.8.2-cp310-cp310-win_amd64.whl
curl -L -o %DEST%\py310\sageattention-2.2.0+cu128torch2.8.0.post2-cp39-abi3-win_amd64.whl %BASE_URL%/sageattention-2.2.0+cu128torch2.8.0.post2-cp39-abi3-win_amd64.whl
curl -L -o %DEST%\py310\insightface-0.7.3-cp310-cp310-win_amd64.whl %BASE_URL%/insightface-0.7.3-cp310-cp310-win_amd64.whl
curl -L -o %DEST%\py310\deepspeed-0.16.5-cp310-cp310-win_amd64.whl %BASE_URL%/deepspeed-0.16.5-cp310-cp310-win_amd64.whl
curl -L -o %DEST%\py310\xformers-0.0.33-cp39-abi3-win_amd64.whl %BASE_URL%/xformers-0.0.33-cp39-abi3-win_amd64.whl

:: ---------- Python 3.11 ----------
curl -L -o %DEST%\py311\flash_attn-2.8.2-cp311-cp311-win_amd64.whl %BASE_URL%/flash_attn-2.8.2-cp311-cp311-win_amd64.whl
curl -L -o %DEST%\py311\sageattention-2.2.0+cu128torch2.8.0.post2-cp39-abi3-win_amd64.whl %BASE_URL%/sageattention-2.2.0+cu128torch2.8.0.post2-cp39-abi3-win_amd64.whl
curl -L -o %DEST%\py311\insightface-0.7.3-cp311-cp311-win_amd64.whl %BASE_URL%/insightface-0.7.3-cp311-cp311-win_amd64.whl
curl -L -o %DEST%\py311\deepspeed-0.16.5-cp311-cp311-win_amd64.whl %BASE_URL%/deepspeed-0.16.5-cp311-cp311-win_amd64.whl
curl -L -o %DEST%\py311\xformers-0.0.33-cp39-abi3-win_amd64.whl %BASE_URL%/xformers-0.0.33-cp39-abi3-win_amd64.whl

:: ---------- Python 3.12 ----------
curl -L -o %DEST%\py312\flash_attn-2.8.2-cp312-cp312-win_amd64.whl %BASE_URL%/flash_attn-2.8.2-cp312-cp312-win_amd64.whl
curl -L -o %DEST%\py312\sageattention-2.2.0+cu128torch2.8.0.post2-cp39-abi3-win_amd64.whl %BASE_URL%/sageattention-2.2.0+cu128torch2.8.0.post2-cp39-abi3-win_amd64.whl
curl -L -o %DEST%\py312\insightface-0.7.3-cp312-cp312-win_amd64.whl %BASE_URL%/insightface-0.7.3-cp312-cp312-win_amd64.whl
curl -L -o %DEST%\py312\deepspeed-0.16.5-cp312-cp312-win_amd64.whl %BASE_URL%/deepspeed-0.16.5-cp312-cp312-win_amd64.whl
curl -L -o %DEST%\py312\xformers-0.0.33-cp39-abi3-win_amd64.whl %BASE_URL%/xformers-0.0.33-cp39-abi3-win_amd64.whl

:: ---------- Python 3.13 ----------
curl -L -o %DEST%\py313\flash_attn-2.8.2-cp313-cp313-win_amd64.whl %BASE_URL%/flash_attn-2.8.2-cp313-cp313-win_amd64.whl
curl -L -o %DEST%\py313\sageattention-2.2.0+cu128torch2.8.0.post2-cp39-abi3-win_amd64.whl %BASE_URL%/sageattention-2.2.0+cu128torch2.8.0.post2-cp39-abi3-win_amd64.whl
curl -L -o %DEST%\py313\insightface-0.7.3-cp313-cp313-win_amd64.whl %BASE_URL%/insightface-0.7.3-cp313-cp313-win_amd64.whl
curl -L -o %DEST%\py313\xformers-0.0.33-cp39-abi3-win_amd64.whl %BASE_URL%/xformers-0.0.33-cp39-abi3-win_amd64.whl

echo.
echo All wheels downloaded to %DEST%.
pause
