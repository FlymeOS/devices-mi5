.class public Lcom/android/settings/wifi/openwifi/FreeWifiLogin;
.super Lmiui/app/Activity;
.source "FreeWifiLogin.java"

# interfaces
.implements Lcom/android/settings/wifi/openwifi/n;


# instance fields
.field private aFA:Landroid/widget/TextView;

.field private aFB:Landroid/widget/Button;

.field private aFC:Landroid/widget/Button;

.field private aFD:Landroid/widget/LinearLayout;

.field private aFE:Landroid/widget/LinearLayout;

.field private aFF:Landroid/graphics/drawable/AnimationDrawable;

.field private aFG:J

.field private aFH:Landroid/content/BroadcastReceiver;

.field private aFI:Landroid/content/BroadcastReceiver;

.field private aFJ:Z

.field private aFK:Ljava/lang/Runnable;

.field private aFL:Lcom/android/settings/wifi/MiuiWifiService;

.field private aFM:Landroid/content/ServiceConnection;

.field private aFy:Landroid/widget/ImageView;

.field private aFz:Landroid/widget/TextView;

.field private je:Landroid/net/wifi/WifiManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 245
    new-instance v0, Lcom/android/settings/wifi/openwifi/g;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/openwifi/g;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFH:Landroid/content/BroadcastReceiver;

    .line 252
    new-instance v0, Lcom/android/settings/wifi/openwifi/h;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/openwifi/h;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFI:Landroid/content/BroadcastReceiver;

    .line 298
    new-instance v0, Lcom/android/settings/wifi/openwifi/i;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/openwifi/i;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFK:Ljava/lang/Runnable;

    .line 329
    new-instance v0, Lcom/android/settings/wifi/openwifi/j;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/openwifi/j;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFM:Landroid/content/ServiceConnection;

    .line 368
    new-instance v0, Lcom/android/settings/wifi/openwifi/k;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/openwifi/k;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)Lcom/android/settings/wifi/MiuiWifiService;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFL:Lcom/android/settings/wifi/MiuiWifiService;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;Lcom/android/settings/wifi/MiuiWifiService;)Lcom/android/settings/wifi/MiuiWifiService;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFL:Lcom/android/settings/wifi/MiuiWifiService;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->dM(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->g(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFA:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->je:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->yN()V

    .line 116
    return-void
.end method

.method static synthetic d(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFK:Ljava/lang/Runnable;

    return-object v0
.end method

.method private dM(I)V
    .locals 7

    .prologue
    const v6, 0x7f0e0075

    const/16 v5, 0x7d0

    const/16 v4, 0x3e8

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFF:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    packed-switch p1, :pswitch_data_0

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->onBackPressed()V

    .line 243
    :goto_0
    return-void

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFB:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->yK()V

    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFA:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFE:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 217
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->xq()V

    goto :goto_0

    .line 221
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFB:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFz:Landroid/widget/TextView;

    const v1, 0x7f0c0fc2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFA:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFE:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 229
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFy:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFF:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFF:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFB:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFz:Landroid/widget/TextView;

    const v1, 0x7f0c0fbf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFA:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFE:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 236
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->xq()V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static dQ(I)I
    .locals 3

    .prologue
    .line 165
    const/16 v0, -0x64

    if-gt p0, v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    .line 167
    :cond_0
    const/16 v0, -0x40

    if-lt p0, v0, :cond_1

    .line 168
    const/4 v0, 0x4

    goto :goto_0

    .line 170
    :cond_1
    const/high16 v0, 0x42100000    # 36.0f

    .line 171
    const/high16 v1, 0x40800000    # 4.0f

    .line 172
    add-int/lit8 v2, p0, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float v0, v1, v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->yK()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->yL()V

    return-void
.end method

.method private g(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 262
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 266
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->finish()V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 271
    :cond_2
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->xu()V

    goto :goto_0
.end method

.method private xq()V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Lcom/android/settings/wifi/openwifi/f;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/openwifi/f;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/openwifi/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 205
    return-void
.end method

.method private xu()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->isWifiConnected()Z

    move-result v1

    .line 280
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFJ:Z

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->finish()V

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFJ:Z

    goto :goto_0
.end method

.method private yJ()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 137
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x7f04008a

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 139
    const v0, 0x7f13010e

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 140
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method private yK()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v2, 0x0

    .line 147
    iget-wide v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFG:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/android/settings/wifi/openwifi/l;->yS()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 149
    invoke-static {}, Lcom/android/settings/wifi/openwifi/l;->yS()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFG:J

    .line 154
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFG:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 155
    const v1, 0x7f0c0fc6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFz:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 158
    return-void

    .line 151
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFG:J

    goto :goto_0
.end method

.method private yL()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFF:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 181
    invoke-static {v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->dQ(I)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFy:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFF:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public dR(I)V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    return-void
.end method

.method public isWifiConnected()Z
    .locals 2

    .prologue
    .line 290
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 292
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->yM()V

    .line 65
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->je:Landroid/net/wifi/WifiManager;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    const v0, 0x7f040089

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->setContentView(I)V

    .line 70
    const v0, 0x7f130108

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFy:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFy:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFF:Landroid/graphics/drawable/AnimationDrawable;

    .line 72
    const v0, 0x7f130109

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFz:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f13010a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFA:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f13010b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFB:Landroid/widget/Button;

    .line 75
    const v0, 0x7f13010d

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFC:Landroid/widget/Button;

    .line 76
    const v0, 0x7f13010c

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFD:Landroid/widget/LinearLayout;

    .line 77
    const v0, 0x7f130107

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFE:Landroid/widget/LinearLayout;

    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFC:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/openwifi/d;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/openwifi/d;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFB:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/openwifi/e;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/openwifi/e;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->yJ()V

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFI:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFI:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->cleanup()V

    .line 109
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 110
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0, p1}, Lmiui/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->setIntent(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFH:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 133
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFH:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 126
    return-void
.end method

.method yM()V
    .locals 3

    .prologue
    .line 353
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/MiuiWifiService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFM:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 355
    return-void
.end method

.method yN()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFL:Lcom/android/settings/wifi/MiuiWifiService;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFL:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/MiuiWifiService;->b(Lcom/android/settings/wifi/openwifi/n;)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aFM:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->unbindService(Landroid/content/ServiceConnection;)V

    .line 363
    :cond_0
    return-void
.end method
