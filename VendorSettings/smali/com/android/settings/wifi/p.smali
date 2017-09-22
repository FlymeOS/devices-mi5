.class public Lcom/android/settings/wifi/p;
.super Lcom/android/settings/wifi/ag;
.source "MiuiWifiConfigController.java"


# instance fields
.field private final aAD:Lcom/android/settings/wifi/q;

.field private aAE:Z

.field private aAF:Z

.field private final azP:Lcom/android/b/e/a;

.field private final mActivity:Landroid/app/Activity;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/b/e/a;ZLcom/android/settings/wifi/q;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p2, p3}, Lcom/android/settings/wifi/ag;-><init>(Landroid/view/View;Lcom/android/b/e/a;)V

    .line 62
    iput-object p1, p0, Lcom/android/settings/wifi/p;->mActivity:Landroid/app/Activity;

    .line 63
    iput-object p5, p0, Lcom/android/settings/wifi/p;->aAD:Lcom/android/settings/wifi/q;

    .line 65
    iput-object p2, p0, Lcom/android/settings/wifi/p;->mView:Landroid/view/View;

    .line 66
    iput-object p3, p0, Lcom/android/settings/wifi/p;->azP:Lcom/android/b/e/a;

    .line 67
    if-nez p3, :cond_1

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/p;->aCn:I

    .line 69
    iput-boolean p4, p0, Lcom/android/settings/wifi/p;->aAE:Z

    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/p;->azP:Lcom/android/b/e/a;

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/p;->mView:Landroid/view/View;

    const v1, 0x7f130204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p;->aDf:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/p;->aDf:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/p;->mView:Landroid/view/View;

    const v1, 0x7f13014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_0
    :goto_1
    return-void

    .line 67
    :cond_1
    iget v0, p3, Lcom/android/b/e/a;->aKG:I

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p;->mView:Landroid/view/View;

    const v1, 0x7f130230

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/p;->aCz:Landroid/widget/Spinner;

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/p;->mView:Landroid/view/View;

    const v1, 0x7f130229

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/p;->aCF:Landroid/widget/Spinner;

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/p;->mView:Landroid/view/View;

    const v1, 0x7f130200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 83
    iget-object v1, p0, Lcom/android/settings/wifi/p;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    .line 84
    if-eqz v5, :cond_3

    .line 85
    iget-object v1, p0, Lcom/android/settings/wifi/p;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->isEphemeral()Z

    move-result v6

    .line 86
    iget-object v1, p0, Lcom/android/settings/wifi/p;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 89
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 91
    :goto_2
    iget-object v7, p0, Lcom/android/settings/wifi/p;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v5, v6, v1}, Lcom/android/b/e/a;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    const v5, 0x7f0c0311

    invoke-direct {p0, v0, v5, v1}, Lcom/android/settings/wifi/p;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 98
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/p;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->getLevel()I

    move-result v1

    .line 99
    if-eq v1, v9, :cond_5

    .line 100
    const v5, 0x7f0a001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 101
    array-length v5, v4

    if-lt v1, v5, :cond_4

    .line 102
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    .line 104
    :cond_4
    const v5, 0x7f0c0310

    aget-object v1, v4, v1

    invoke-direct {p0, v0, v5, v1}, Lcom/android/settings/wifi/p;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 107
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/p;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->Ax()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    if-eq v4, v9, :cond_6

    .line 109
    const v4, 0x7f0c0312

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "Mbps"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v4, v1}, Lcom/android/settings/wifi/p;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 112
    :cond_6
    const v1, 0x7f0c030f

    iget-object v4, p0, Lcom/android/settings/wifi/p;->azP:Lcom/android/b/e/a;

    invoke-virtual {v4, v2}, Lcom/android/b/e/a;->bT(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/wifi/p;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/android/settings/wifi/p;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 115
    if-eqz v4, :cond_7

    .line 116
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v5, :cond_8

    .line 117
    iget-object v1, p0, Lcom/android/settings/wifi/p;->aCz:Landroid/widget/Spinner;

    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 118
    iput-boolean v8, p0, Lcom/android/settings/wifi/p;->aAF:Z

    .line 122
    :goto_3
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v5, :cond_9

    .line 123
    iget-object v1, p0, Lcom/android/settings/wifi/p;->aCF:Landroid/widget/Spinner;

    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 124
    iput-boolean v8, p0, Lcom/android/settings/wifi/p;->aAF:Z

    .line 131
    :goto_4
    iget-object v1, p0, Lcom/android/settings/wifi/p;->azP:Lcom/android/b/e/a;

    iget v1, v1, Lcom/android/b/e/a;->networkId:I

    if-eq v1, v9, :cond_7

    .line 132
    iget-object v1, p0, Lcom/android/settings/wifi/p;->mActivity:Landroid/app/Activity;

    const-string v5, "connectivity"

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 135
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 136
    const-string v5, ""

    .line 137
    iget-object v5, p0, Lcom/android/settings/wifi/p;->azP:Lcom/android/b/e/a;

    invoke-virtual {v5}, Lcom/android/b/e/a;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 138
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/p;->a(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v5

    .line 139
    const v1, 0x7f0c0314

    invoke-direct {p0, v0, v1, v5}, Lcom/android/settings/wifi/p;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 141
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    sget-object v6, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v6, :cond_b

    .line 142
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    .line 143
    if-eqz v4, :cond_c

    iget-object v1, v4, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_c

    .line 144
    iget-object v1, v4, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/p;->dz(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-object v3, v4, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 156
    :goto_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 158
    const v4, 0x7f0c104b

    invoke-direct {p0, v0, v4, v1}, Lcom/android/settings/wifi/p;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 160
    const v1, 0x7f0c0351

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/wifi/p;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 166
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/wifi/p;->aAE:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/p;->mView:Landroid/view/View;

    const v1, 0x7f130207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/p;->mView:Landroid/view/View;

    const v1, 0x7f130226

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/wifi/p;->mView:Landroid/view/View;

    const v1, 0x7f13022c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p;->aCG:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/p;->aCG:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/p;->mView:Landroid/view/View;

    const v1, 0x7f13022d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p;->aCH:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/p;->aCH:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/p;->mView:Landroid/view/View;

    const v1, 0x7f13022e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p;->aCI:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/p;->aCI:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/wifi/p;->yb()V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/wifi/p;->ya()V

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/p;->aCz:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/p;->aCF:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_1

    .line 120
    :cond_8
    iget-object v1, p0, Lcom/android/settings/wifi/p;->aCz:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 125
    :cond_9
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v5, :cond_a

    .line 126
    iget-object v1, p0, Lcom/android/settings/wifi/p;->aCF:Landroid/widget/Spinner;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 127
    iput-boolean v8, p0, Lcom/android/settings/wifi/p;->aAF:Z

    goto/16 :goto_4

    .line 129
    :cond_a
    iget-object v1, p0, Lcom/android/settings/wifi/p;->aCF:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    .line 148
    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/p;->mActivity:Landroid/app/Activity;

    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 149
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 150
    if-eqz v4, :cond_c

    .line 151
    iget v1, v4, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 152
    iget v3, v4, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v3}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_c
    move-object v1, v3

    goto/16 :goto_5

    :cond_d
    move-object v1, v3

    goto/16 :goto_2
.end method

.method private a(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 319
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 328
    :cond_0
    return-object v1

    .line 320
    :cond_1
    const-string v1, ""

    .line 321
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    move-result-object v0

    .line 322
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 323
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4

    .prologue
    const v3, 0x1020010

    .line 220
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04019d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 224
    const v0, 0x1020016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 225
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 227
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private dz(I)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    const/4 v0, 0x4

    .line 189
    const/16 v1, 0x20

    if-le p1, v1, :cond_0

    .line 190
    const/16 v0, 0x10

    .line 193
    :cond_0
    const/16 v3, 0x8

    move v6, v4

    move v2, p1

    .line 194
    :goto_0
    if-ge v6, v0, :cond_5

    .line 195
    if-ge v2, v3, :cond_1

    move v1, v2

    .line 196
    :goto_1
    sub-int v8, v3, v1

    .line 197
    add-int/lit8 v1, v1, -0x1

    move v5, v1

    move v1, v4

    .line 199
    :goto_2
    if-ltz v5, :cond_2

    .line 200
    const/4 v9, 0x1

    shl-int/2addr v9, v5

    add-int/2addr v1, v9

    .line 201
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_1
    move v1, v3

    .line 195
    goto :goto_1

    .line 203
    :cond_2
    if-lez v8, :cond_3

    .line 204
    shl-int/2addr v1, v8

    .line 207
    :cond_3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, "."

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    if-lt v2, v3, :cond_4

    .line 210
    sub-int v1, v2, v3

    .line 194
    :goto_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v4

    .line 212
    goto :goto_3

    .line 216
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v4, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method wX()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/settings/wifi/p;->azP:Lcom/android/b/e/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/p;->azP:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 254
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/p;->aAE:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p;->bI(Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0

    .line 253
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method xh()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 232
    .line 235
    iget-object v0, p0, Lcom/android/settings/wifi/p;->aDf:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/p;->aDf:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/p;->aDf:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_5

    move v0, v2

    .line 238
    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/p;->aCo:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/settings/wifi/p;->aCn:I

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/p;->aCo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/settings/wifi/p;->aCn:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/p;->aCo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-ge v2, v4, :cond_2

    :cond_1
    move v0, v1

    .line 244
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/wifi/p;->aAE:Z

    if-eqz v1, :cond_3

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/wifi/p;->xi()Z

    move-result v0

    .line 247
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/p;->aAD:Lcom/android/settings/wifi/q;

    if-eqz v1, :cond_4

    .line 248
    iget-object v1, p0, Lcom/android/settings/wifi/p;->aAD:Lcom/android/settings/wifi/q;

    invoke-interface {v1, v0}, Lcom/android/settings/wifi/q;->bz(Z)V

    .line 250
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 235
    goto :goto_0
.end method

.method protected xi()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 259
    .line 260
    iget-object v0, p0, Lcom/android/settings/wifi/p;->aCz:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/p;->aCz:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/p;->aCK:Landroid/net/IpConfiguration$IpAssignment;

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/p;->aCK:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v3, :cond_7

    .line 265
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p;->aCN:Landroid/net/StaticIpConfiguration;

    .line 266
    iget-object v0, p0, Lcom/android/settings/wifi/p;->aCN:Landroid/net/StaticIpConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p;->a(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    .line 267
    if-eqz v0, :cond_2

    .line 311
    :cond_0
    :goto_1
    return v2

    .line 260
    :cond_1
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 273
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/p;->aCF:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 274
    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v4, p0, Lcom/android/settings/wifi/p;->aCL:Landroid/net/IpConfiguration$ProxySettings;

    .line 275
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/wifi/p;->aCM:Landroid/net/ProxyInfo;

    .line 276
    if-ne v3, v1, :cond_6

    iget-object v4, p0, Lcom/android/settings/wifi/p;->aCG:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    .line 277
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/p;->aCL:Landroid/net/IpConfiguration$ProxySettings;

    .line 278
    iget-object v0, p0, Lcom/android/settings/wifi/p;->aCG:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    iget-object v0, p0, Lcom/android/settings/wifi/p;->aCH:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    iget-object v0, p0, Lcom/android/settings/wifi/p;->aCI:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 284
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 285
    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    .line 289
    :goto_3
    if-nez v0, :cond_3

    .line 290
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p;->aCM:Landroid/net/ProxyInfo;

    move v2, v1

    :cond_3
    move v0, v2

    .line 308
    :cond_4
    :goto_4
    iget-boolean v2, p0, Lcom/android/settings/wifi/p;->aAF:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/p;->aCL:Landroid/net/IpConfiguration$ProxySettings;

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v2, v3, :cond_5

    move v0, v1

    :cond_5
    move v2, v0

    .line 311
    goto :goto_1

    .line 286
    :catch_0
    move-exception v0

    move v0, v2

    .line 287
    :goto_5
    const v3, 0x7f0c0166

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_3

    .line 295
    :cond_6
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/p;->aCJ:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 296
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/p;->aCL:Landroid/net/IpConfiguration$ProxySettings;

    .line 297
    iget-object v0, p0, Lcom/android/settings/wifi/p;->aCJ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 301
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_0

    .line 305
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/settings/wifi/p;->aCM:Landroid/net/ProxyInfo;

    move v0, v1

    .line 306
    goto :goto_4

    .line 286
    :catch_1
    move-exception v3

    goto :goto_5

    :cond_7
    move v0, v2

    goto/16 :goto_2
.end method
