<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <div class="container" id="app">

            @foreach ($models as $model) 
                <h4><a href="{{ $model }}">{{ $model}}</a></h4>
            @endforeach

    </div>
    <script src="/js/main.js"></script>
  </body>
</html>
