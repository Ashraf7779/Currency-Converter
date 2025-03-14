<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Currency Converter</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .form-border {
            border: 2px solid black;
            padding: 20px;
            border-radius: 10px;
        }
        .form-label{font-size:20px;}
        .btn-primary:hover{transition: transform 0.3s ease;transform: scale(1.09);}
    </style>
  </head>
  <body class="bg-gray-100 min-vh-100 d-flex align-items-center justify-content-center">
  <div class="bg-white p-4 rounded-lg shadow-md w-50">
    <form action="Currency" method="post" class="form form-border 2px solid black">
           <label for="amount" class="form-label">Amount: </label> 
           <input type="text" id="amount" name="amount"  class="form-control mb-3" required placeholder="Enter your amount">
           
           <label for="from-currency" class="form-label">From Currency: </label> 
           <select id="from-currency" name="from-currency" required class="form-select mb-3">
               <option value="INR">INR(INDIA: INDIA RUPEE)</option>
               <option value="USD">USD(USA: UNITED STATES DOLLAR)</option>
               <option value="EUR">EUR(EUROPE: EURO)</option>
               <option value="GBP">GBP(UK: GREAT BRITAIN POUND)</option>
               <option value="JPY">JPY(JAPAN: JAPANESE YEN)</option>
               <option value="AUD">AUD(AUSTRALIA: AUSTRALIAN DOLLAR)</option>
               <option value="CAD">CAD(CANADA: CANADIAN DOLLAR)</option>
               <option value="CNY">CNY(CHINA: CHINESE YUAN)</option>
               <option value="RUB">RUB(RUSSIA: RUSSIAN RUBLE)</option>
               <option value="BRL">BRL(BRAZIL: BRAZILIAN REAL)</option>
               <option value="MXN">MXN(MEXICO: MEXICAN PESO)</option>
               <option value="ZAR">ZAR(SOUTH AFRICA: SOUTH AFRICAN RAND)</option>
               <option value="SAR">SAR(SAUDI ARABIA: SAUDI RIYAL )</option>
               <option value="KRW">KRW(SOUTH KOREA: SOUTH KOREAN WON)</option>
               <option value="CHF">CHF(SWITZERLAND: SWISS FRANC)</option>
               <option value="TRY">TRY(TURKEY: TURKISH LIRA)</option>
               <option value="SGD">SGD(SINGAPORE: SINGAPORE DOLLAR)</option>
               <option value="NZD">NZD(NEW ZEALAND: NEW ZEALAND DOLLAR)</option>
               <option value="SEK">SEK(SWEDEN: SWEDISH KRONA)</option>
               <option value="NOK">NOK(NORWAY: NORWEGIAN KRONE)</option>
               <option value="DKK">DKK(DENMARK: DANISH KRONE)</option>
               <option value="MYR">MYR(MALAYSIA: MALAYSIAN RINGGIT)</option>
               <option value="THB">THB(THAILAND: THAI BAHT)</option>
               <option value="IDR">IDR(INDONESIA: INDONESIAN RUPIAH)</option>
               <option value="PHP">PHP(PHILIPPINES: PHILIPPINE PESO)</option>
               <option value="NGN">NGN(NIGERIA: NIGERIAN NAIRA)</option>
               <option value="EGP">EGP(EGYPT: EGYPTIAN POUND)</option>
               <option value="ARS">ARS(ARGENTINA: ARGENTINE PESO)</option>
               <option value="CLP">CLP(CHILE: CHILEAN PESO)</option>
               <option value="VND">VND(VIETNAM: VIETNAMESE DONG)</option>
               <option value="PKR">PKR(PAKISTAN: PAKISTANI RUPEE)</option>
               <option value="BDT">BDT(BANGLADESH: BANGLADESHI TAKA)</option>
               <option value="AED">AED(UNITED ARAB EMIRATES: UAE DIRHAM)</option>
               <option value="QAR">QAR(QATAR: QATARI RIYAL)</option>
               <option value="ILS">ILS(ISRAEL: ISRAELI NEW SHEKEL)</option>
           </select>
           
           <label for="to-currency" class="form-label">To Currency: </label> 
           <select id="to-currency" name="to-currency" required class="form-select mb-3">
               <option value="INR">INR(INDIA: INDIA RUPEE)</option>
               <option value="USD">USD(USA: UNITED STATES DOLLAR)</option>
               <option value="EUR">EUR(EUROPE: EURO)</option>
               <option value="GBP">GBP(UK: GREAT BRITAIN POUND)</option>
               <option value="JPY">JPY(JAPAN: JAPANESE YEN)</option>
               <option value="AUD">AUD(AUSTRALIA: AUSTRALIAN DOLLAR)</option>
               <option value="CAD">CAD(CANADA: CANADIAN DOLLAR)</option>
               <option value="CNY">CNY(CHINA: CHINESE YUAN)</option>
               <option value="RUB">RUB(RUSSIA: RUSSIAN RUBLE)</option>
               <option value="BRL">BRL(BRAZIL: BRAZILIAN REAL)</option>
               <option value="MXN">MXN(MEXICO: MEXICAN PESO)</option>
               <option value="ZAR">ZAR(SOUTH AFRICA: SOUTH AFRICAN RAND)</option>
               <option value="SAR">SAR(SAUDI ARABIA: SAUDI RIYAL )</option>
               <option value="KRW">KRW(SOUTH KOREA: SOUTH KOREAN WON)</option>
               <option value="CHF">CHF(SWITZERLAND: SWISS FRANC)</option>
               <option value="TRY">TRY(TURKEY: TURKISH LIRA)</option>
               <option value="SGD">SGD(SINGAPORE: SINGAPORE DOLLAR)</option>
               <option value="NZD">NZD(NEW ZEALAND: NEW ZEALAND DOLLAR)</option>
               <option value="SEK">SEK(SWEDEN: SWEDISH KRONA)</option>
               <option value="NOK">NOK(NORWAY: NORWEGIAN KRONE)</option>
               <option value="DKK">DKK(DENMARK: DANISH KRONE)</option>
               <option value="MYR">MYR(MALAYSIA: MALAYSIAN RINGGIT)</option>
               <option value="THB">THB(THAILAND: THAI BAHT)</option>
               <option value="IDR">IDR(INDONESIA: INDONESIAN RUPIAH)</option>
               <option value="PHP">PHP(PHILIPPINES: PHILIPPINE PESO)</option>
               <option value="NGN">NGN(NIGERIA: NIGERIAN NAIRA)</option>
               <option value="EGP">EGP(EGYPT: EGYPTIAN POUND)</option>
               <option value="ARS">ARS(ARGENTINA: ARGENTINE PESO)</option>
               <option value="CLP">CLP(CHILE: CHILEAN PESO)</option>
               <option value="VND">VND(VIETNAM: VIETNAMESE DONG)</option>
               <option value="PKR">PKR(PAKISTAN: PAKISTANI RUPEE)</option>
               <option value="BDT">BDT(BANGLADESH: BANGLADESHI TAKA)</option>
               <option value="AED">AED(UNITED ARAB EMIRATES: UAE DIRHAM)</option>
               <option value="QAR">QAR(QATAR: QATARI RIYAL)</option>
               <option value="ILS">ILS(ISRAEL: ISRAELI NEW SHEKEL)</option>
           </select>
           
           <button type="submit" class="btn btn-primary">CONVERT</button>
    </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>