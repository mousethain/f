import subprocess
import sys
import os
import re
import asyncio

def install(package):
    subprocess.check_call([sys.executable, "-m", "pip", "install", package])

required_packages = ["telethon", "pyfiglet", "asyncio"]

for package in required_packages:
    try:
        __import__(package)
    except ImportError:
        print(f"Modul '{package}' belum terinstal. Melakukan instalasi...")
        install(package)
        os.system('cls' if os.name == 'nt' else 'clear')

from telethon.sync import TelegramClient
from pyfiglet import Figlet

try:
    import telethon
    import asyncio
    from pyfiglet import Figlet
except ImportError:
    print("Modul yang diperlukan belum terinstal. Silakan coba lagi setelah instalasi.")
    sys.exit(1)

f = Figlet(font='slant')
ascii_text = f.renderText('SXTCP')
color_start = '\033[96m'
color_end = '\033[0m'
credit_text = 'Chanel Telegram : t.me/proxyscraperlive'

name = 'anon'   # isi bebas
api_id = ''  # ambil dari my.telegram.org
api_hash = "" # ambil dari my.telegram.org
chat = 'https://t.me/proxyscraperlive'  # JANGAN DI GANTI

pola_proxy = r'PROXY: (\d+\.\d+\.\d+\.\d+:\d+)'

async def main():
    try:
        print(f"{color_start}{ascii_text}{color_end}")
        print(f"{color_start}{credit_text}{color_end}\n")
        
        jumlah_proxy = int(input("Masukkan jumlah proxy yang ingin diambil: "))
    except ValueError:
        print("Input tidak valid. Masukkan angka.")
        return
    
    proxies = []
    
    async with TelegramClient(name, api_id, api_hash) as client:
        async for message in client.iter_messages(chat):
            if len(proxies) >= jumlah_proxy:
                break
            
            pesan = message.text
            
            hasil_cocok = re.search(pola_proxy, pesan)
            
            if hasil_cocok:
                proxy_hidup = hasil_cocok.group(1)
                proxies.append(proxy_hidup)
                if len(proxies) >= jumlah_proxy:
                    break

    with open('proxyscraperlive.txt', 'w') as file:
        for proxy in proxies:
            file.write(proxy + '\n')

    print(f"{len(proxies)} proxy telah disimpan dalam proxyscraperlive.txt")

if __name__ == '__main__':
    loop = asyncio.get_event_loop()
    loop.run_until_complete(main())
