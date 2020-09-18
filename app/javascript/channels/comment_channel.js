import consumer from "./consumer"

consumer.subscriptions.create("CommentChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const html =    
    `<div class="upper-message">
     <div class="message-user">
       ${data.user.nickname}
     </div>
     <div class="message-date">
       ${data.content.created_at}
      </div>
   </div>
   <div class="lower-message">
     <div class="message-content">
       ${data.content.text}
     </div>
    </div>`;
    const messages = document.getElementById('messages');
    const newMessage = document.getElementById('comment_text');
    messages.insertAdjacentHTML('afterbegin', html);
    newMessage.value='';
  }
});

