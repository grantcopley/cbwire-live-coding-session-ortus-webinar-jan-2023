component extends="cbwire.models.Component" {

    // Listeners
    listeners = {
        "tweetSent": "refresh",
        "tweetDeleted": "refresh"
    };

    // Computed properties
    computed = {
        "isValidTweet": function() {
            return data.tweet.len() ? true : false;
        },
        "tweets": function() {
            return session.tweets;
        }
    }

    // Actions
    function clearTweets() {

        sleep( 1200 ); // simulate long process

        session.tweets = [];
    }
}