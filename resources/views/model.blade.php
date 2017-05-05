<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <div class="container" id="app">
        <sarp-layout title='{{ $model }}'>
        
            <sarp-panel slot="left" title="Data">
            
                {!!
                    component('SarpDatatable', [
                        'rows' => $rows, 'fields' => $fields
                    ])
                !!}

                <!--sarp-datatable
                    :search='""'
                    :rows='{{ $rows }}'
                    :fields='{{ $fields }}'
                ></sarp-datatable-->

            </sarp-panel>

            <sarp-panel slot="right" title="Edit">
                
                <sarp-form></sarp-form>

            </sarp-panel>

        </sarp-layout>
    </div>
    <script src="/js/main.js"></script>
  </body>
</html>
