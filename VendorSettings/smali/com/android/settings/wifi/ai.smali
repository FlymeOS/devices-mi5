.class public Lcom/android/vendorsettings/wifi/ai;
.super Ljava/lang/Object;
.source "WifiConfigForSupplicant.java"


# static fields
.field private static aDh:Lcom/android/vendorsettings/wifi/ai;


# instance fields
.field private aDi:Lcom/android/internal/util/AsyncChannel;

.field private mService:Landroid/net/wifi/IWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vendorsettings/wifi/ai;->aDh:Lcom/android/vendorsettings/wifi/ai;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    :try_start_0
    const-string v0, "wifi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/ai;->mService:Landroid/net/wifi/IWifiManager;

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiConfigForSupplicantThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Lcom/android/vendorsettings/wifi/ai;->aDi:Lcom/android/internal/util/AsyncChannel;

    .line 53
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/ai;->aDi:Lcom/android/internal/util/AsyncChannel;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/android/vendorsettings/wifi/ai;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "SupplicantManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build WifiConfigForSupplicant failed exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 124
    invoke-static {p1, v0}, Lcom/android/vendorsettings/wifi/ak;->f(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-nez v3, :cond_0

    .line 125
    invoke-static {v1, v0}, Lcom/android/vendorsettings/wifi/ak;->a(Ljava/util/ArrayList;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 128
    :cond_1
    const/4 v0, 0x3

    invoke-static {p1, v1, v0, v4, v4}, Lcom/android/vendorsettings/wifi/ak;->a(Landroid/content/Context;Ljava/util/ArrayList;IZI)V

    .line 129
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v1, "ssid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 171
    :cond_2
    const-string v1, "bssid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_3
    const-string v1, "psk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_4
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_0

    .line 177
    :cond_5
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 178
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    goto :goto_0

    .line 179
    :cond_6
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 180
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    goto :goto_0

    .line 181
    :cond_7
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 182
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    goto :goto_0

    .line 183
    :cond_8
    const-string v1, "wep_tx_keyidx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 184
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto/16 :goto_0

    .line 185
    :cond_9
    const-string v1, "priority"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 186
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_0

    .line 187
    :cond_a
    const-string v1, "scan_ssid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 188
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_0

    .line 189
    :cond_b
    const-string v1, "key_mgmt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 190
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vendorsettings/wifi/ai;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V

    goto/16 :goto_0

    .line 192
    :cond_c
    const-string v1, "proto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 193
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    sget-object v1, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vendorsettings/wifi/ai;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V

    goto/16 :goto_0

    .line 195
    :cond_d
    const-string v1, "auth_alg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 196
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    sget-object v1, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vendorsettings/wifi/ai;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V

    goto/16 :goto_0

    .line 198
    :cond_e
    const-string v1, "pairwise"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 199
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    sget-object v1, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vendorsettings/wifi/ai;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V

    goto/16 :goto_0

    .line 201
    :cond_f
    const-string v1, "group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 202
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    sget-object v1, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vendorsettings/wifi/ai;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V

    goto/16 :goto_0

    .line 204
    :cond_10
    const-string v1, "eap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 205
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/vendorsettings/wifi/ai;->b([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 208
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 210
    :cond_11
    const-string v1, "phase2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 211
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/vendorsettings/wifi/ai;->b([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 214
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_0

    .line 216
    :cond_12
    const-string v1, "identity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 217
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_13
    const-string v1, "anonymous_identity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 220
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :cond_14
    const-string v1, "password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 223
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :cond_15
    const-string v1, "client_cert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 226
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :cond_16
    const-string v1, "key_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 229
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    :cond_17
    const-string v1, "ca_cert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 232
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    :cond_18
    const-string v1, "priority"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 238
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/BitSet;)V
    .locals 3

    .prologue
    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    return-void

    .line 261
    :cond_1
    const/16 v0, 0x2d

    const/16 v1, 0x5f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 262
    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 263
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    invoke-virtual {p3, v0}, Ljava/util/BitSet;->set(I)V

    .line 262
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 270
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 271
    aget-object v2, p1, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    :goto_1
    return v0

    .line 270
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 275
    goto :goto_1
.end method

.method private cc(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    .line 70
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    .line 74
    :cond_1
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 75
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 76
    if-eqz v2, :cond_2

    .line 77
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 78
    aget-object v3, v2, v0

    invoke-direct {p0, v3, v1}, Lcom/android/vendorsettings/wifi/ai;->a(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 81
    goto :goto_0
.end method

.method private cd(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 90
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 91
    const-string v1, "ssid"

    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wifi/ai;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    const v1, 0x25fa1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 93
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/ai;->aDi:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 94
    const/4 v1, 0x0

    .line 95
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 96
    iget v3, v2, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-eqz v0, :cond_0

    .line 97
    const-string v1, "config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 100
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private cf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wifi/ai;->cg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_0
    return-object v0
.end method

.method private cg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 254
    return-object v0
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    const/4 p1, 0x0

    .line 287
    :cond_0
    :goto_0
    return-object p1

    .line 282
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 283
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 285
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static yg()Lcom/android/vendorsettings/wifi/ai;
    .locals 2

    .prologue
    .line 61
    const-class v1, Lcom/android/vendorsettings/wifi/ai;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/android/vendorsettings/wifi/ai;->aDh:Lcom/android/vendorsettings/wifi/ai;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/vendorsettings/wifi/ai;

    invoke-direct {v0}, Lcom/android/vendorsettings/wifi/ai;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/wifi/ai;->aDh:Lcom/android/vendorsettings/wifi/ai;

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    sget-object v0, Lcom/android/vendorsettings/wifi/ai;->aDh:Lcom/android/vendorsettings/wifi/ai;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/io/FileDescriptor;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 132
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 135
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p2}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 138
    const-string v5, "[ \\t]*network=\\{"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 139
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 144
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 145
    invoke-direct {p0, v0, v3}, Lcom/android/vendorsettings/wifi/ai;->a(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 137
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_2
    const-string v5, "[ \\t]*\\}"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v2

    .line 142
    goto :goto_1

    .line 154
    :cond_3
    if-eqz v1, :cond_4

    .line 155
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 161
    :cond_4
    :goto_2
    invoke-direct {p0, p1, v4}, Lcom/android/vendorsettings/wifi/ai;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 162
    return-void

    .line 148
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 149
    :goto_3
    :try_start_3
    const-string v2, "SupplicantManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not open "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    if-eqz v1, :cond_4

    .line 155
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 157
    :catch_1
    move-exception v0

    goto :goto_2

    .line 150
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 151
    :goto_4
    :try_start_5
    const-string v2, "SupplicantManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 154
    if-eqz v1, :cond_4

    .line 155
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 157
    :catch_3
    move-exception v0

    goto :goto_2

    .line 153
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 154
    :goto_5
    if-eqz v1, :cond_5

    .line 155
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 159
    :cond_5
    :goto_6
    throw v0

    .line 157
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_6

    .line 153
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 150
    :catch_6
    move-exception v0

    goto :goto_4

    .line 148
    :catch_7
    move-exception v0

    goto :goto_3
.end method

.method public ce(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wifi/ai;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cc(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 3

    .prologue
    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/ai;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 113
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/ai;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string v0, "SupplicantManager"

    const-string v2, "getConfiguredNetworks Failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    return-object v1
.end method
