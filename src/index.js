exports.handler = async (event) => {
    return {
        statusCode: 200,
        headers: { 'Content-Type': 'application/json' },
        body: "Hello World!"
    };
}
