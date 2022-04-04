/**
* This is executed as stored procedure check the complexity of the draft.
*
 * @param {string} draftId - The draft id for your document.
 * @param {string} subscriptionId - The subscription id for your document.
 * @param {string} documentId - The id for your document.
*/
// IS SIMPLE STORED PROCEDURE
function isSimpleFunc(draftId, subscriptionId, documentId) {
    var collection = getContext().getCollection();
    var collectionLink = collection.getSelfLink();
    // // Validate input.
    if (!draftId) throw new Error("The draftId is undefined or null.");
    if (!subscriptionId) throw new Error("The subscriptionId is undefined or null.");
    if (!documentId) throw new Error("The rootId is undefined or documentId.");
    var query = {
        query: "select COUNT(r.documentType) as count from root r where r.draftId = @draftId and r.rootId = @documentId and r.subscriptionId = @subscriptionId GROUP BY r.documentType",
        parameters: [{ name: "@draftId", value: draftId }, { name: "@documentId", value: documentId }, { name: "@subscriptionId", value: subscriptionId }]
    };
    // Query documents and take 1st item.
    var isAccepted = collection.queryDocuments(
        collectionLink,
        query,
        function (err, feed, options) {
            if (err) throw err;
            var response = getContext().getResponse();
            // Check the feed and if empty, set the body to 'no docs found', 
            // else take 1st element from feed
            if (!feed || !feed.length) {
                response.setBody(true);
            }
            else {
                var isSingle = true;
                for (i = 0; i < feed.length; i++) {
                    if (feed[i]["count"] > 1) {
                        isSingle = false;
                        break;
                    }
                }
                response.setBody(isSingle);
            }
        });
    if (!isAccepted) throw new Error('No documents found.');
}
