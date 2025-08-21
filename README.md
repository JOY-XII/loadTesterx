
# 🚀 LoadTesterX

```
      _                _______         _            
     | |              |__   __|       | |           
     | |     ___  ___     | | ___  ___| |_ ___  ___ 
     | |    / _ \/ _ \    | |/ _ \/ __| __/ _ \/ __|
     | |___|  __/  __/    | |  __/\__ \ ||  __/\__ \
     |______\___|\___|     |_|\___||___/\__\___||___/
```

**LoadTesterX** is a high-performance load and stress testing tool built with Go, packaged with an interactive Bash runner (`load.sh`).  
It is designed to run seamlessly on **Linux** and **Termux (Android)**, making it easy for developers and website owners to evaluate the stability, performance, and concurrency handling capabilities of their own servers.

> ⚡ This project is strictly for **educational** and **self-testing** purposes. Do not use it against websites you do not own or do not have explicit permission to test.

---

## ✨ Features
- 🔹 Interactive CLI runner (`load.sh`) for easy setup  
- 🔹 Customizable test duration, RPS, concurrency, and step intervals  
- 🔹 Randomized User-Agent rotation for realistic traffic simulation  
- 🔹 Automatic saving of target websites into `targets.txt`  
- 🔹 CSV export option for advanced analytics  
- 🔹 Works smoothly in **Termux** without root access  

---

## 📦 Installation

Clone this repository:

```bash
git clone https://github.com/JOY-XII/loadTesterx.git
cd loadTesterx
```

Make the script executable:

```bash
chmod +x load.sh
```

---

## ▶️ Usage

Run the script:

```bash
./load.sh
```

You will be prompted for:

- Website (default: https://httpbin.org/get)  
- Duration (e.g. 1m, 30s)  
- Workers (10–200)  
- RPS (Requests Per Second, 50–500)  
- RPS Step & Interval  
- CSV Export (y/n)  

Example session:

```bash
./load.sh
🚀 Optimized Go LoadTester (Max OK results)
=====================================
Enter website [Demo: https://httpbin.org/get]:
Enter duration [Demo: 1m]:
Enter workers (min:10 max:200) [Demo: 100]:
Enter starting RPS (min:50 max:500) [Demo: 200]:
...
✅ Starting test:
  Target: https://httpbin.org/get
  Duration: 1m
  Workers: 100
  RPS: 200
  Step: +50 every 10s
  Timeout: 10s
```

---

## 📊 Exporting Results

If you enable CSV export, results will be saved in `results.csv` for further analysis in tools like Excel, Google Sheets, or Grafana.

---

## ⚙️ Go Binary Usage (Optional)

If you prefer to run the compiled Go binary:

```bash
go build loadtester.go
./loadtester -targets targets.txt -duration 1m -conns 100 -rps 200
```

This avoids compiling at runtime and increases speed, especially on Termux.

---

## ⚠️ Disclaimer

This tool is intended for **educational and self-testing purposes only**. Using it to stress test servers you do not own or have explicit permission to test is **illegal** and can lead to serious consequences. Use responsibly.
