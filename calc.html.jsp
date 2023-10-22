<!DOCTYPE html>
<html lang="zh">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="css/cal.css">
</head>
<body>
    <div class="center">
        <form name="Calculator">
            <input type="button" id="clear" class="btn other" value="AC"/>
            <input type="text" id="display"/>
            <input type="button" class="btn other" value="SCI"/>
            <br />
            <input
                type="button"
                class="btn number"
                value="7"
                onclick="get(this.value);"
            />
            <input
                type="button"
                class="btn number"
                value="8"
                onclick="get(this.value);"
            />
            <input
                type="button"
                class="btn number"
                value="9"
                onclick="get(this.value);"
            />
            <input
                type="button"
                class="btn operator"
                value="+"
                onclick="get(this.value);"
            />
            <input
                type="button"
                class="btn operator"
                value="tan()"
                onclick="get(this.value);"
            />
            <br/>
            <input
                type="button"
                class="btn number"
                value="4"
                onclick="get(this.value);"
            />
            <input
                type="button"
                class="btn number"
                value="5"
                onclick="get(this.value);"
            />
            <input
                type="button"
                class="btn number"
                value="6"
                onclick="get(this.value);"
            />
            <input
            type="button"
            class="btn operator"
            value="-"
            onclick="get(this.value);"
            />
            
            <input
                type="button"
                class="btn operator"
                value="sin()"
                onclick="get(this.value);"
            />
            <br/>
            <input
                type="button"
                class="btn number"
                value="1"
                onclick="get(this.value);"
            />
            <input
                type="button"
                class="btn number"
                value="2"
                onclick="get(this.value);"
            />
            <input
                type="button"
                class="btn number"
                value="3"
                onclick="get(this.value);"
            />
            <input
                type="button"
                class="btn operator"
                value="*"
                onclick="get(this.value);"
            />
            <input
                type="button"
                class="btn operator"
                value="cos()"
                onclick="get(this.value);"
            />
            <br/>
            <input
                type="button"
                class="btn operator"
                value="."
                onclick="get(this.value);"
            />
            <input
                type="button"
                class="btn number"
                value="0"
                onclick="get(this.value);"
            />
            <input
                type="button"
                class="btn other"
                value="="
                onclick="calculates();"
            />
            <input
                type="button"
                class="btn operator"
                value="/"
                onclick="get(this.value);"
            />
            <input type="button" id="history" class="btn operator" value="ANS">
            <br/>
            <input type="text" id="find"/>
        </form>
    </div>
  </main>
  <!-- History Box -->
  <div class="history-box">
    <header class="history-header">History</header>
    <ul class="history-list"></ul>
  </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="js/math.js" type="text/javascript"></script>
<script src="js/cal.js"></script>
</body>
</html>