#!/bin/bash
echo "🚀 Optimized Go LoadTester"
echo "Bangladesh Cyber Squad"
echo "Bae Max || loadTester || BCS"
echo "=========================================="

BINARY="./loadtester"   # তোমার binary নাম এখানে বসাও (যেমন ./loadtester-linux-arm64)

if [[ ! -f "$BINARY" ]]; then
    echo "❌ Binary not found: $BINARY"
    echo "Make sure you placed the compiled binary in this folder."
    exit 1
fi

# Website
read -p "Enter website [Demo: https://httpbin.org/get]: " website
website=${website:-https://httpbin.org/get}
echo $website > targets.txt
echo "✅ Saved target into targets.txt"

# Duration
read -p "Enter duration [Demo: 1m]: " duration
duration=${duration:-1m}

# Workers
read -p "Enter workers (min:10 max:200) [Demo: 100]: " conns
conns=${conns:-100}

# RPS
read -p "Enter starting RPS (min:50 max:500) [Demo: 200]: " rps
rps=${rps:-200}

# RPS step
read -p "Enter RPS step (min:50 max:200) [Demo: 50]: " step
step=${step:-50}

# Step interval
read -p "Enter step interval [Demo: 10s]: " stepEvery
stepEvery=${stepEvery:-10s}

# Timeout
timeout=10s

# CSV export
read -p "Export CSV? (y/n) [Default: n]: " exportChoice
exportChoice=${exportChoice:-n}

echo "-------------------------------------"
echo "✅ Starting test with binary:"
echo "  Target: $website"
echo "  Duration: $duration"
echo "  Workers: $conns"
echo "  RPS: $rps"
echo "  Step: +$step every $stepEvery"
echo "  Timeout: $timeout"
echo "  CSV Export: $exportChoice"
echo "-------------------------------------"

CMD="$BINARY -targets targets.txt -duration $duration -conns $conns -rps $rps -rps-step $step -step-every $stepEvery -timeout $timeout"

if [[ "$exportChoice" == "y" || "$exportChoice" == "Y" ]]; then
    CMD="$CMD -export results.csv"
fi

eval $CMD
