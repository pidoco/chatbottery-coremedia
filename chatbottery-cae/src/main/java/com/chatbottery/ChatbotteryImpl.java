package com.chatbottery;

import com.coremedia.blueprint.cae.contentbeans.CMTeasableImpl;

public class ChatbotteryImpl extends CMTeasableImpl implements Chatbottery {


    @Override
    public String getSrc() {
        return getContent().getString("src");
    }

    @Override
    public String getDataObject() {
        return getContent().getString("dataObject");
    }

    @Override
    public int getOpenOnLoad() {
        return getContent().getInt("openOnLoad");
    }

    @Override
    public String getRenderPosition() {
        return getContent().getString("renderPosition");
    }
}
