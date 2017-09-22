.class public Lcom/android/vendorsettings/ResetNetwork;
.super Lcom/android/vendorsettings/InstrumentedFragment;
.source "ResetNetwork.java"


# instance fields
.field private gC:Landroid/view/View;

.field private gH:Landroid/widget/Button;

.field private final gK:Landroid/view/View$OnClickListener;

.field private yh:Ljava/util/List;

.field private yi:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/vendorsettings/InstrumentedFragment;-><init>()V

    .line 119
    new-instance v0, Lcom/android/vendorsettings/gW;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/gW;-><init>(Lcom/android/vendorsettings/ResetNetwork;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->gK:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/ResetNetwork;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/vendorsettings/ResetNetwork;->eD()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/ResetNetwork;I)Z
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/ResetNetwork;->s(I)Z

    move-result v0

    return v0
.end method

.method private eD()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 104
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 105
    iget-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->yh:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->yh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->yi:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/android/vendorsettings/ResetNetwork;->yh:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 108
    const-string v1, "subscription"

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    const-class v1, Lcom/android/vendorsettings/ResetNetworkConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c04cf

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 112
    return-void
.end method

.method private eE()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->gC:Landroid/view/View;

    const v1, 0x7f13027a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->yi:Landroid/widget/Spinner;

    .line 144
    invoke-virtual {p0}, Lcom/android/vendorsettings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->yh:Ljava/util/List;

    .line 145
    iget-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->yh:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->yh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 147
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 148
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    .line 151
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    .line 154
    :cond_1
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 155
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    move v1, v0

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->yh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 160
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 161
    iget-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->yh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 162
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 164
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 166
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 168
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 170
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 171
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 174
    const-string v4, "MCC:%s MNC:%s Slot:%s Id:%s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 177
    :cond_5
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_6
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/vendorsettings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x1090008

    invoke-direct {v0, v1, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 181
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 182
    iget-object v1, p0, Lcom/android/vendorsettings/ResetNetwork;->yi:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 183
    iget-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->yi:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 184
    iget-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->yi:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 188
    :goto_2
    iget-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->gC:Landroid/view/View;

    const v1, 0x7f13027b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->gH:Landroid/widget/Button;

    .line 189
    iget-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->gH:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/vendorsettings/ResetNetwork;->gK:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void

    .line 186
    :cond_7
    iget-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->yi:Landroid/widget/Spinner;

    invoke-virtual {v0, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_2

    :cond_8
    move v1, v0

    goto/16 :goto_0
.end method

.method private s(I)Z
    .locals 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/vendorsettings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/android/vendorsettings/aH;

    invoke-virtual {p0}, Lcom/android/vendorsettings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/vendorsettings/aH;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0c04ca

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/android/vendorsettings/aH;->b(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 90
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/android/vendorsettings/ResetNetwork;->eD()V

    goto :goto_0

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/ResetNetwork;->eE()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    const v0, 0x7f0400bd

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 201
    :cond_1
    const v0, 0x7f04011d

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->gC:Landroid/view/View;

    .line 203
    invoke-direct {p0}, Lcom/android/vendorsettings/ResetNetwork;->eE()V

    .line 204
    iget-object v0, p0, Lcom/android/vendorsettings/ResetNetwork;->gC:Landroid/view/View;

    goto :goto_0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 209
    const/16 v0, 0x53

    return v0
.end method
