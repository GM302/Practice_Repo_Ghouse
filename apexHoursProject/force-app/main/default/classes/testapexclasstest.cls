public class testapexclasstest{
    
    
    
/* CSV2JSON: function (component,event,helper,csv) {
        try{
            //  console.log('Incoming csv = ' + csv);
            
            //var array = [];
            var arr = []; 
            
            arr =  csv.split('\n');
            console.log('Array  = '+arr);
            //arr.pop();
            var jsonObj = [];
            var headers = arr[0].split(',');
            console.log('headers' + arr[0]);
            var columnsValue = 'PRODUCT,Case_ID,EPDB_PIN,NPI,PHYS_NAME,PHYS_ST,DT_CLOSED,Disposition,FINAL_CASE_DISPOSITION,IND_DESCRIPTION';
            console.log('headers' + columnsValue);
            columnsValue = columnsValue.toUpperCase();
            arr[0] = arr[0].toUpperCase();
            if(arr[0].includes(columnsValue)){
                for(var i = 1; i < arr.length; i++) {
                    var csvLine = arr[i];
                    var startIndex;
                    var endIndex;
                    
                    while(csvLine.indexOf('"') > -1){
                    
                        if(startIndex == null){
                            startIndex = csvLine.indexOf('"');
                            csvLine = csvLine.substring(0, startIndex) + ':quotes:' + csvLine.substring(startIndex+1, csvLine.length);
                        }else{
                            if(endIndex == null){
                                endIndex = csvLine.indexOf('"');
                                csvLine = csvLine.substring(0, endIndex) + ':quotes:' + csvLine.substring(endIndex+1, csvLine.length);
                            }
                        }
                        
                        if(startIndex != null && endIndex != null){
                            var sub = csvLine.substring(startIndex, endIndex);
                            sub = sub.replaceAll(',', ':comma:');
                            csvLine = csvLine.substring(0, startIndex) + sub + csvLine.substring(endIndex, csvLine.length);
                            startIndex = null;
                            endIndex = null;
                        }
                    }
                    var data = csvLine.split(',');
                    console.log('data above loop ' + data);
                    var obj = {};
                    for(var j = 0; j < data.length; j++) {
                        data[j] = data[j].replaceAll(':quotes:', '').replaceAll(':comma:', ',');
                        obj[headers[j].trim()] = data[j].trim();
                        console.log('obj headers = ' + obj[headers[j].trim()]);
                    }
                    jsonObj.push(obj);
                }
                console.log('jsonObj Size = '+jsonObj.length);
                var json = JSON.stringify(jsonObj);
                console.log('json = '+ json);
                return json;
            }
            else{
                var message = 'Please validate the file or contact System Administrator';
                helper.showToast(component, event, helper,'error','', message);
                return;
            }
        }
        catch(error){
            var message = 'Please validate the file or contact System Administrator';
            helper.showToast(component, event, helper,'error','', message);
            return;
        }
        
        
 }*/
    
    /*
    CSV2JSON: function (component, event, helper, csv) {
    try {
        var arr = csv.split('\n');
        var columnsValue = 'PRODUCT,Case_ID,EPBB_PIN,NPI,PHYS_NAME,PHYS_ST,DT_CLOSED,Disposition,FINAL_CASE_DISPOSITION,IND_DESCRIPTION';

        if (arr[0].toUpperCase().includes(columnsValue)) {
            var headers = arr[0].split(',');
            var jsonObj = [];

            for (var i = 1; i < arr.length; i++) {
                var csvLine = arr[i];

                // Escape commas inside quotes with ":comma:"
                while (csvLine.indexOf('"') > -1) {
                    var startIndex = csvLine.indexOf('"');
                    var endIndex = csvLine.indexOf('"', startIndex + 1);
                    var sub = csvLine.substring(startIndex + 1, endIndex);
                    sub = sub.replaceAll(',', ':comma:');
                    csvLine = csvLine.substring(0, startIndex) + sub + csvLine.substring(endIndex + 1);
                }

                var data = csvLine.split(',');

                // ✅ SAFELY map headers to data using minimal updated loop
                var obj = {};
                var loopLen = Math.min(headers.length, data.length);

                for (var j = 0; j < loopLen; j++) {
                    var header = headers[j] ? headers[j].trim().replaceAll('"', '') : null;
                    var value = data[j] ? data[j].trim().replaceAll('"', '').replaceAll(':comma:', ',') : '';

                    if (header) {
                        obj[header] = value;
                    }
                }

                jsonObj.push(obj);
            }

            component.set('v.jsonData', jsonObj);
        }

    } catch (error) {
        var message = 'Please validate the file or contact System Administrator';
        helper.showToast(component, event, helper, 'error', message);
        return;
    }
}*/
}