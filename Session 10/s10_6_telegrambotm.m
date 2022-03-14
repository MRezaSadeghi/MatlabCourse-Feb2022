tx = sprintf('Done!\n The answer was %2.3f.', 12.963);
sendme(tx)

function ret = sendme(messages)
    token = 'TOKEN';
    chat_id = 'CHAT_ID';
    
    str = sprintf(messages);
    sendstr1 = urlencode(str);
    sendstr = ['https://api.telegram.org/bot',token,'/sendMessage?chat_id=',chat_id,'&text=',sendstr1];
    ret = web(sendstr);
end