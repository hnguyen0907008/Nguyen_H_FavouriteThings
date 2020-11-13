let errorCodes = {
    404: "Not Found!",
    500: "Broke Server",
    403: "Doesn't Work",
    503: "Unavailable!"
}

async function fetchData(sourceURL) {
    let resource = await fetch(sourceURL).then(response => {
        if (response.status !== 200) {
            throw new Error(`Error ${response.status}: ${errorCodes[response.status]}`);
        } 
        return response;           
    });
    let dataset = await resource.json();

    return dataset[0];
    
    debugger;
}

async function postData(sourceURL) {
    return "You are using the postData API endpoint";
}

export { fetchData, postData };