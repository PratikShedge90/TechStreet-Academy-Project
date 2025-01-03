const chatInput = document.querySelector(".chat-input textarea");
const sendChatBtn = document.querySelector(".chat-input span");
const chatbox = document.querySelector(".chatbox");
const chatbotToggler = document.querySelector(".chatbot-toggler");

let userMessage;
const API_KEY = "AIzaSyDUt9o3ISQyk4YRX1qoMbWXM-zySr0iW54";


const createChatLi = (message, className) => {
    const chatLi = document.createElement("li");
    chatLi.classList.add("chat", className);
    let chatContent = className === "outgoing" ? `<p>${message}</p>` : `  <span class="material-symbols-outlined">smart_toy</span><p>${message}</p>`;
    chatLi.innerHTML = chatContent;
    return chatLi;
}
const generateResponse = (incomingChatLi) => {
    const API_URL = `https://generativelanguage.googleapis.com/v1/models/gemini-pro:generateContent?key=${API_KEY}`;
    const messageElement = incomingChatLi.querySelector("p");
    
    const requestOptions = {
        method: "POST",
        headers: {
            "Content-Type": "application/json"

        },
        body: JSON.stringify({
            contents: [{
                role: "user",
                parts: [{ text: userMessage }]
            }]
        }),
    }
    fetch(API_URL, requestOptions).then(res => res.json()).then(data => {
        messageElement.textContent = data.candidates[0].content.parts[0].text;


    }).catch((error) => {
        messageElement.textContent = "Oops ! Something went wrong . Please try again .";
    }).finally(() => chatbox.scrollTo(0,chatbox.scrollHeight));
}
const handleChat = () => {
    userMessage = chatInput.value.trim();
    if (!userMessage) return;

    chatbox.appendChild(createChatLi(userMessage, "outgoing"));
    chatbox.scrollTo(0 , chatbox.scrollHeight);

    setTimeout(() => {

        const incomingChatLi = createChatLi("Thinking...", "incoming")
        chatbox.appendChild(incomingChatLi);
        chatbox.scrollTo(0 , chatbox.scrollHeight);
        generateResponse(incomingChatLi);
    }, 600);
}

sendChatBtn.addEventListener("click", handleChat); 
chatbotToggler.addEventListener("click" , () => document.body.classList.toggle("show-chatbot"));