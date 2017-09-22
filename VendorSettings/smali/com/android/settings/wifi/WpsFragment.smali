.class public Lcom/android/vendorsettings/wifi/WpsFragment;
.super Lcom/android/vendorsettings/BaseFragment;
.source "WpsFragment.java"


# instance fields
.field private Ah:Landroid/widget/Button;

.field private XR:Landroid/widget/TextView;

.field private aEE:Ljava/util/Timer;

.field private aEF:Landroid/net/wifi/WifiManager$WpsCallback;

.field private aEG:I

.field private aET:Lmiui/widget/ProgressBar;

.field private aEU:Landroid/widget/Button;

.field private aEV:Landroid/widget/ImageView;

.field private aEW:Z

.field aEX:Lcom/android/vendorsettings/wifi/WpsFragment$State;

.field private je:Landroid/net/wifi/WifiManager;

.field private mG:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private oe:Ljava/lang/String;

.field private sP:Lmiui/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/vendorsettings/BaseFragment;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->mHandler:Landroid/os/Handler;

    .line 66
    sget-object v0, Lcom/android/vendorsettings/wifi/WpsFragment$State;->aFc:Lcom/android/vendorsettings/wifi/WpsFragment$State;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEX:Lcom/android/vendorsettings/wifi/WpsFragment$State;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/wifi/WpsFragment;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/wifi/WpsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->oe:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/android/vendorsettings/wifi/WpsFragment$State;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEX:Lcom/android/vendorsettings/wifi/WpsFragment$State;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/WpsFragment$State;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/vendorsettings/wifi/WpsFragment$State;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEX:Lcom/android/vendorsettings/wifi/WpsFragment$State;

    .line 243
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vendorsettings/wifi/bb;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/vendorsettings/wifi/bb;-><init>(Lcom/android/vendorsettings/wifi/WpsFragment;Lcom/android/vendorsettings/wifi/WpsFragment$State;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/wifi/WpsFragment;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/WpsFragment;->yH()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/wifi/WpsFragment;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/wifi/WpsFragment;->g(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/wifi/WpsFragment;Lcom/android/vendorsettings/wifi/WpsFragment$State;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/wifi/WpsFragment;->a(Lcom/android/vendorsettings/wifi/WpsFragment$State;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/wifi/WpsFragment;)Lmiui/widget/ProgressBar;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aET:Lmiui/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/wifi/WpsFragment;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/WpsFragment;->stop()V

    return-void
.end method

.method static synthetic d(Lcom/android/vendorsettings/wifi/WpsFragment;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/WpsFragment;->start()V

    return-void
.end method

.method static synthetic e(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/android/vendorsettings/wifi/WpsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->oe:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->XR:Landroid/widget/TextView;

    return-object v0
.end method

.method private g(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 292
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 295
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 296
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEX:Lcom/android/vendorsettings/wifi/WpsFragment$State;

    sget-object v1, Lcom/android/vendorsettings/wifi/WpsFragment$State;->aFe:Lcom/android/vendorsettings/wifi/WpsFragment$State;

    if-ne v0, v1, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/WpsFragment;->yG()V

    .line 301
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/vendorsettings/wifi/WpsFragment;)Lmiui/widget/ProgressBar;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->sP:Lmiui/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic j(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->Ah:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic k(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEU:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic l(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private start()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 184
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEE:Ljava/util/Timer;

    .line 185
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEE:Ljava/util/Timer;

    new-instance v1, Lcom/android/vendorsettings/wifi/aY;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/wifi/aY;-><init>(Lcom/android/vendorsettings/wifi/WpsFragment;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 198
    new-instance v0, Lcom/android/vendorsettings/wifi/ba;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/wifi/ba;-><init>(Lcom/android/vendorsettings/wifi/WpsFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/WpsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->mG:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    iget-boolean v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEW:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/WpsFragment;->yG()V

    .line 213
    :goto_0
    return-void

    .line 209
    :cond_0
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 210
    iget v1, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEG:I

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 211
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->je:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEF:Landroid/net/wifi/WifiManager$WpsCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    goto :goto_0
.end method

.method private stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEX:Lcom/android/vendorsettings/wifi/WpsFragment$State;

    sget-object v1, Lcom/android/vendorsettings/wifi/WpsFragment$State;->aFe:Lcom/android/vendorsettings/wifi/WpsFragment$State;

    if-eq v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEE:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEE:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 222
    iput-object v2, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEE:Ljava/util/Timer;

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/WpsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 226
    iput-object v2, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    :cond_2
    return-void
.end method

.method private yG()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 304
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    invoke-static {v0}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_0
    const v1, 0x7f0c0306

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 312
    iput-boolean v4, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEW:Z

    .line 313
    sget-object v1, Lcom/android/vendorsettings/wifi/WpsFragment$State;->aFf:Lcom/android/vendorsettings/wifi/WpsFragment$State;

    invoke-direct {p0, v1, v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->a(Lcom/android/vendorsettings/wifi/WpsFragment$State;Ljava/lang/String;)V

    .line 315
    :cond_1
    return-void
.end method

.method private yH()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 318
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->oe:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->XR:Landroid/widget/TextView;

    const v1, 0x7f0c0304

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->oe:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEV:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->XR:Landroid/widget/TextView;

    const v1, 0x7f0c0303

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 138
    const v0, 0x7f0401b0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 139
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/WpsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 73
    iput v2, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEG:I

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/WpsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->je:Landroid/net/wifi/WifiManager;

    .line 127
    new-instance v0, Lcom/android/vendorsettings/wifi/aW;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/wifi/aW;-><init>(Lcom/android/vendorsettings/wifi/WpsFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEF:Landroid/net/wifi/WifiManager$WpsCallback;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->mG:Landroid/content/IntentFilter;

    .line 129
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->mG:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    if-eqz p1, :cond_0

    .line 132
    const-string v0, "wps_setup_finish"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEW:Z

    .line 134
    :cond_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/WpsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "wps_setup"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEG:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/WpsFragment;->stop()V

    .line 233
    invoke-super {p0}, Lcom/android/vendorsettings/BaseFragment;->onDestroy()V

    .line 234
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 330
    const-string v0, "wps_setup_finish"

    iget-boolean v1, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEW:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 331
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 332
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 146
    const v0, 0x7f130374

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->XR:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f130375

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEV:Landroid/widget/ImageView;

    .line 148
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/WpsFragment;->yH()V

    .line 149
    const v0, 0x7f130376

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aET:Lmiui/widget/ProgressBar;

    .line 150
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aET:Lmiui/widget/ProgressBar;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setMax(I)V

    .line 151
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aET:Lmiui/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setProgress(I)V

    .line 153
    const v0, 0x7f130377

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->sP:Lmiui/widget/ProgressBar;

    .line 154
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->sP:Lmiui/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 156
    const v0, 0x7f130378

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEU:Landroid/widget/Button;

    .line 157
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->aEU:Landroid/widget/Button;

    new-instance v1, Lcom/android/vendorsettings/wifi/aV;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/wifi/aV;-><init>(Lcom/android/vendorsettings/wifi/WpsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v0, 0x7f130379

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->Ah:Landroid/widget/Button;

    .line 165
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WpsFragment;->Ah:Landroid/widget/Button;

    new-instance v1, Lcom/android/vendorsettings/wifi/aX;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/wifi/aX;-><init>(Lcom/android/vendorsettings/wifi/WpsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/WpsFragment;->start()V

    .line 178
    return-void
.end method
