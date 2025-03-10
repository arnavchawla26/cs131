Stock Price Fetcher

📌 What This Script Does

The stockprice script is a simple command-line tool that fetches real-time stock prices and answers to the user. It allows users to quickly check the latest stock prices directly from their terminal.

📌 Why This Script is Useful

Quick & Easy: No need to open a browser or a stock app.

Lightweight: Runs instantly with no extra software needed.

Automated: Fetches live stock prices in one command.

Customizable: Can be modified to add more features.

📌 How to Use

Open the terminal and run the script with a stock ticker:

stockprice AAPL

The output will look like this:

-----------------------------------
Stock Symbol: AAPL
Current Time: Thu Mar 6 03:20:00 UTC 2025
Current Price: 235.74 USD
-----------------------------------

To check another stock, just replace AAPL with another ticker, such as:

stockprice TSLA

📌 Installation (For Personal Use)

To make stockprice available from anywhere:

Move the script to a system-wide location:

sudo mv stockprice /usr/local/bin/

Grant execution permission:

sudo chmod +x /usr/local/bin/stockprice

Run it from anywhere:

stockprice MSFT

📌 Technical Details

API Used: Alpha Vantage

Commands Used: Bash, curl, grep, sed

📌 Notes

The script is case-insensitive for stock symbols (e.g., aapl or AAPL both work).

The script can be modified to support additional data like volume, market cap, etc.
