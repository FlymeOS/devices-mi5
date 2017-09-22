.class public Lcom/android/settings/wifi/WifiStatusTest;
.super Lmiui/app/Activity;
.source "WifiStatusTest.java"


# instance fields
.field aEA:Landroid/view/View$OnClickListener;

.field private aEl:Landroid/widget/Button;

.field private aEm:Landroid/widget/TextView;

.field private aEn:Landroid/widget/TextView;

.field private aEo:Landroid/widget/TextView;

.field private aEp:Landroid/widget/TextView;

.field private aEq:Landroid/widget/TextView;

.field private aEr:Landroid/widget/TextView;

.field private aEs:Landroid/widget/TextView;

.field private aEt:Landroid/widget/TextView;

.field private aEu:Landroid/widget/TextView;

.field private aEv:Landroid/widget/TextView;

.field private aEw:Landroid/widget/TextView;

.field private aEx:Landroid/widget/TextView;

.field private aEy:Landroid/content/IntentFilter;

.field private final aEz:Landroid/content/BroadcastReceiver;

.field private je:Landroid/net/wifi/WifiManager;

.field xU:Landroid/view/View$OnClickListener;

.field private xh:Landroid/widget/TextView;

.field private xi:Landroid/widget/TextView;

.field private xj:Landroid/widget/TextView;

.field private xp:Landroid/widget/Button;

.field private xw:Ljava/lang/String;

.field private xx:Ljava/lang/String;

.field private xy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 90
    new-instance v0, Lcom/android/settings/wifi/aF;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/aF;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEz:Landroid/content/BroadcastReceiver;

    .line 172
    new-instance v0, Lcom/android/settings/wifi/aG;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/aG;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xU:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v0, Lcom/android/settings/wifi/aH;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/aH;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEA:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(Landroid/net/NetworkInfo;)V
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v0, v3}, Lcom/android/b/e/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_0
    return-void

    .line 301
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/net/wifi/SupplicantState;)V
    .locals 2

    .prologue
    .line 205
    sget-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEo:Landroid/widget/TextView;

    const-string v1, "FOUR WAY HANDSHAKE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :goto_0
    return-void

    .line 207
    :cond_0
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEo:Landroid/widget/TextView;

    const-string v1, "ASSOCIATED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    :cond_1
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEo:Landroid/widget/TextView;

    const-string v1, "ASSOCIATING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :cond_2
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEo:Landroid/widget/TextView;

    const-string v1, "COMPLETED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 213
    :cond_3
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEo:Landroid/widget/TextView;

    const-string v1, "DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 215
    :cond_4
    sget-object v0, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEo:Landroid/widget/TextView;

    const-string v1, "DORMANT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 217
    :cond_5
    sget-object v0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEo:Landroid/widget/TextView;

    const-string v1, "GROUP HANDSHAKE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :cond_6
    sget-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEo:Landroid/widget/TextView;

    const-string v1, "INACTIVE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    :cond_7
    sget-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEo:Landroid/widget/TextView;

    const-string v1, "INVALID"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 223
    :cond_8
    sget-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEo:Landroid/widget/TextView;

    const-string v1, "SCANNING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 225
    :cond_9
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 226
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEo:Landroid/widget/TextView;

    const-string v1, "UNINITIALIZED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 228
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEo:Landroid/widget/TextView;

    const-string v1, "BAD"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const-string v0, "WifiStatusTest"

    const-string v1, "supplicant state is bad"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private a(Landroid/net/wifi/SupplicantState;ZI)V
    .locals 2

    .prologue
    .line 291
    if-eqz p2, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEo:Landroid/widget/TextView;

    const-string v1, "ERROR AUTHENTICATING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->a(Landroid/net/wifi/SupplicantState;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->yA()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->dA(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/NetworkInfo;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->a(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->a(Landroid/net/wifi/SupplicantState;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;ZI)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiStatusTest;->a(Landroid/net/wifi/SupplicantState;ZI)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->gU()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->dO(I)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->je:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->dN(I)V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEq:Landroid/widget/TextView;

    return-object v0
.end method

.method private dA(I)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->dN(I)V

    .line 266
    return-void
.end method

.method private dN(I)V
    .locals 3

    .prologue
    .line 235
    packed-switch p1, :pswitch_data_0

    .line 252
    const-string v0, "BAD"

    .line 253
    const-string v1, "WifiStatusTest"

    const-string v2, "wifi state is bad"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    return-void

    .line 237
    :pswitch_0
    const v0, 0x7f0c0386

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 240
    :pswitch_1
    const v0, 0x7f0c0387

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 243
    :pswitch_2
    const v0, 0x7f0c0388

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 246
    :pswitch_3
    const v0, 0x7f0c0389

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :pswitch_4
    const v0, 0x7f0c038a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private dO(I)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEp:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-void
.end method

.method static synthetic e(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEs:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEw:Landroid/widget/TextView;

    return-object v0
.end method

.method private final gQ()V
    .locals 4

    .prologue
    .line 361
    :try_start_0
    const-string v0, "74.125.47.104"

    .line 362
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -c 1 -w 100 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 364
    if-nez v0, :cond_0

    .line 365
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xw:Ljava/lang/String;

    .line 374
    :goto_0
    return-void

    .line 367
    :cond_0
    const-string v0, "Fail: IP addr not reachable"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xw:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xw:Ljava/lang/String;

    goto :goto_0

    .line 371
    :catch_1
    move-exception v0

    .line 372
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xw:Ljava/lang/String;

    goto :goto_0
.end method

.method private final gR()V
    .locals 2

    .prologue
    .line 379
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "ping -c 1 -w 100 www.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 381
    if-nez v0, :cond_0

    .line 382
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xx:Ljava/lang/String;

    .line 393
    :goto_0
    return-void

    .line 384
    :cond_0
    const-string v0, "Fail: Host unreachable"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xx:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    const-string v0, "Fail: Unknown Host"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xx:Ljava/lang/String;

    goto :goto_0

    .line 388
    :catch_1
    move-exception v0

    .line 389
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xx:Ljava/lang/String;

    goto :goto_0

    .line 390
    :catch_2
    move-exception v0

    .line 391
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xx:Ljava/lang/String;

    goto :goto_0
.end method

.method private gS()V
    .locals 4

    .prologue
    .line 396
    const/4 v1, 0x0

    .line 399
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v2, "https://www.google.com"

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 402
    const-string v1, "Pass"

    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->xy:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 409
    :goto_0
    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 413
    :cond_0
    :goto_1
    return-void

    .line 404
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail: Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->xy:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 406
    :catch_0
    move-exception v1

    .line 407
    :goto_2
    :try_start_3
    const-string v1, "Fail: IOException"

    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->xy:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 409
    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 409
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_2

    .line 410
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0

    .line 409
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    .line 406
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private final gU()V
    .locals 3

    .prologue
    const v2, 0x7f0c00fd

    .line 309
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->xw:Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->xx:Ljava/lang/String;

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->xy:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->xh:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusTest;->xw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->xi:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusTest;->xx:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->xj:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusTest;->xy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    new-instance v1, Lcom/android/settings/wifi/aI;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/aI;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    .line 326
    new-instance v2, Lcom/android/settings/wifi/aJ;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/wifi/aJ;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 333
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 335
    new-instance v2, Lcom/android/settings/wifi/aK;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/wifi/aK;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 342
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 344
    new-instance v2, Lcom/android/settings/wifi/aL;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/wifi/aL;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 351
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 352
    return-void
.end method

.method static synthetic h(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEu:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xh:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xi:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xj:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->gQ()V

    return-void
.end method

.method static synthetic s(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->gR()V

    return-void
.end method

.method static synthetic t(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->gS()V

    return-void
.end method

.method private yA()V
    .locals 5

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 271
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 272
    if-eqz v2, :cond_2

    .line 273
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 274
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 276
    if-nez v0, :cond_1

    .line 273
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 280
    :cond_1
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEx:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->je:Landroid/net/wifi/WifiManager;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEy:Landroid/content/IntentFilter;

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEy:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEy:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEy:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEy:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEy:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEz:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEy:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    const v0, 0x7f0401ad

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->setContentView(I)V

    .line 135
    const v0, 0x7f130361

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEl:Landroid/widget/Button;

    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEl:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEA:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v0, 0x7f130362

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEm:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f130363

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEn:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f130364

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEo:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f130365

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEp:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f130366

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEq:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f130204

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEr:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f130367

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEs:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f130368

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEt:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f130369

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEu:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f13036a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEv:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f13036b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEw:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f13036c

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEx:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f13024c

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xh:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f13024d

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xi:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f13024e

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xj:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f13024b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xp:Landroid/widget/Button;

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->xp:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->xU:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 169
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEz:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 163
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEz:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->aEy:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    return-void
.end method
