public class soaCallout {
  public static HttpResponse makeGetCallout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://postman-echo.com/get?foo1=bar1&foo2=bar2');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        if(response.getStatusCode() == 200) {
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            List<Object> content = (List<Object>) results.get('headers');
            System.debug('Data:');
            for(Object getcontent: content) {
                System.debug(getcontent);
            }
        }
        return response;
  }}