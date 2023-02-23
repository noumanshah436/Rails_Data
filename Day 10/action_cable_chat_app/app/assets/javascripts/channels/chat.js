App.chat = App.cable.subscriptions.create("ChatChannel", {
  connected: function () {
    console.log("connected to chat channel");
  },
  disconnected: function () {
    console.log("Disconnected to chat channel");
  },
  received: function (data) {
    var messages = $('#chatbox');
    messages.append(data['message']);
    messages.scrollTop(messages[0].scrollHeight);
  },
});
