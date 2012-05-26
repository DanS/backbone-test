beforeEach(function () {
  this.addMatchers({
    toBePlaying:function (expectedSong) {
      var player = this.actual;
      return player.currentlyPlayingSong === expectedSong &&
          player.isPlaying;
    }
  });

  this.validResponse = function (responseText) {
    return [
      200,
      {"Content-Type":"application/json"},
      JSON.stringify(responseText)
    ];
  };

});
