.class public Lcom/android/settings/wifi/MiuiWifiDetailFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/q;


# instance fields
.field private aAG:I

.field private aAH:Landroid/net/wifi/WifiConfiguration;

.field aAI:I

.field aAJ:Lcom/android/settings/wifi/openwifi/l;

.field private aAK:Lcom/android/settings/wifi/am;

.field private aAL:Landroid/content/DialogInterface$OnClickListener;

.field private aAv:Lcom/android/settings/wifi/p;

.field private azP:Lcom/android/b/e/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAI:I

    .line 196
    new-instance v0, Lcom/android/settings/wifi/x;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/x;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAL:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAH:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->xl()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAG:I

    return v0
.end method

.method static synthetic c(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/settings/wifi/am;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAK:Lcom/android/settings/wifi/am;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/b/e/a;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->xn()V

    return-void
.end method

.method private xj()V
    .locals 9

    .prologue
    const/16 v5, 0x8

    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 116
    const v0, 0x7f130239

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 117
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAG:I

    if-eq v1, v8, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    invoke-virtual {v2}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiSettings;->j(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    .line 119
    const v1, 0x7f130237

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 120
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    if-nez v7, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    if-nez v7, :cond_0

    .line 123
    new-instance v2, Lcom/android/settings/wifi/r;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/r;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget-object v1, v1, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_4

    const-string v1, "CMCC"

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 132
    :goto_1
    if-eqz v1, :cond_5

    move v1, v5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    if-nez v7, :cond_7

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    if-nez v7, :cond_1

    .line 138
    new-instance v1, Lcom/android/settings/wifi/s;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/s;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    :cond_1
    const v0, 0x7f130238

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 164
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAG:I

    if-eq v1, v8, :cond_2

    if-eqz v0, :cond_2

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 167
    new-instance v1, Lcom/android/settings/wifi/v;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/v;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 121
    goto :goto_0

    :cond_4
    move v1, v4

    .line 130
    goto :goto_1

    .line 132
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v5

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_2

    :cond_7
    move v3, v4

    .line 136
    goto :goto_3
.end method

.method private xk()V
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAG:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->aKI:Landroid/net/wifi/ScanResult;

    invoke-static {v0}, Lcom/android/settings/wifi/bi;->d(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130343

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 182
    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    new-instance v1, Lcom/android/settings/wifi/w;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/w;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private xl()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 207
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->xm()V

    .line 208
    new-instance v0, Lcom/android/settings/wifi/am;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAL:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    move v5, v4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/wifi/am;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/b/e/a;ZZZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAK:Lcom/android/settings/wifi/am;

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAK:Lcom/android/settings/wifi/am;

    const v1, 0x1040013

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/am;->j(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAK:Lcom/android/settings/wifi/am;

    invoke-virtual {v0}, Lcom/android/settings/wifi/am;->show()V

    .line 211
    return-void
.end method

.method private xm()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAK:Lcom/android/settings/wifi/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAK:Lcom/android/settings/wifi/am;

    invoke-virtual {v0}, Lcom/android/settings/wifi/am;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAK:Lcom/android/settings/wifi/am;

    invoke-virtual {v0}, Lcom/android/settings/wifi/am;->dismiss()V

    .line 217
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAK:Lcom/android/settings/wifi/am;

    .line 218
    return-void
.end method

.method private xn()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAJ:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 223
    const v1, 0x7f1301fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 224
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    const v1, 0x7f0c0fb6

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAJ:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v3}, Lcom/android/settings/wifi/openwifi/l;->getProviderName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 226
    iget v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAI:I

    if-ltz v2, :cond_0

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c0fc4

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAI:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_1
    return-void
.end method

.method private xo()V
    .locals 5

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 239
    invoke-static {v1}, Lcom/android/settings/wifi/e;->cv(Landroid/content/Context;)Lcom/android/settings/wifi/e;

    move-result-object v2

    .line 240
    const v3, 0x7f1301fe

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 241
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 242
    const v3, 0x7f1301ff

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    .line 243
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget-object v3, v3, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/e;->bW(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 244
    new-instance v3, Lcom/android/settings/wifi/y;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/settings/wifi/y;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Lcom/android/settings/wifi/e;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private xp()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 258
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 262
    new-instance v1, Lcom/android/settings/d/f;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/settings/d/f;-><init>(Landroid/net/NetworkPolicyManager;)V

    .line 263
    invoke-virtual {v1}, Lcom/android/settings/d/f;->read()V

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 265
    invoke-virtual {v1, v2}, Lcom/android/settings/d/f;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 267
    const v4, 0x7f130201

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 268
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 269
    const v4, 0x7f130202

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    .line 270
    if-eqz v3, :cond_2

    .line 271
    iget-wide v4, v3, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 272
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 279
    :goto_1
    new-instance v3, Lcom/android/settings/wifi/z;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/settings/wifi/z;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Lcom/android/settings/d/f;Landroid/net/NetworkTemplate;)V

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 274
    :cond_1
    iget-boolean v3, v3, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_1

    .line 277
    :cond_2
    invoke-virtual {v0, v5}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_1
.end method

.method private xq()V
    .locals 2

    .prologue
    .line 355
    new-instance v0, Lcom/android/settings/wifi/A;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/A;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/A;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 370
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 72
    const v0, 0x7f0401a0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    return-object v0
.end method

.method public bz(Z)V
    .locals 0

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->h(Z)V

    .line 318
    return-void
.end method

.method public g(Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 328
    .line 329
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    .line 331
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAH:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAH:Landroid/net/wifi/WifiConfiguration;

    new-instance v3, Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAH:Landroid/net/wifi/WifiConfiguration;

    .line 337
    :cond_0
    if-eqz v0, :cond_1

    .line 338
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 339
    const-string v2, "network_id"

    iget v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAG:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    const-string v2, "is_delete"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    const-string v2, "config"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 342
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    .line 343
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget-object v2, v2, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 351
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->b(Landroid/os/Bundle;)V

    .line 352
    return-void

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAv:Lcom/android/settings/wifi/p;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAv:Lcom/android/settings/wifi/p;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ssid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    const v1, 0x7f0c0de6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    iput v7, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAG:I

    .line 83
    new-instance v1, Lcom/android/b/e/a;

    invoke-direct {v1, v6, v0}, Lcom/android/b/e/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    .line 84
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setHasOptionsMenu(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget v0, v0, Lcom/android/b/e/a;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAG:I

    .line 87
    new-instance v0, Lcom/android/settings/wifi/p;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/p;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/b/e/a;ZLcom/android/settings/wifi/q;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAv:Lcom/android/settings/wifi/p;

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget-object v0, v0, Lcom/android/b/e/a;->bssid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->azP:Lcom/android/b/e/a;

    iget-object v1, v1, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-static {v6, v0, v1}, Lcom/android/settings/wifi/openwifi/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/openwifi/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAJ:Lcom/android/settings/wifi/openwifi/l;

    .line 90
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->xj()V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->xn()V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->xk()V

    .line 94
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAG:I

    if-eq v0, v7, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAJ:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAJ:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/l;->yW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->xq()V

    .line 98
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->xm()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->aAJ:Lcom/android/settings/wifi/openwifi/l;

    .line 111
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onDestroy()V

    .line 112
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onResume()V

    .line 103
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->xo()V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->xp()V

    .line 105
    return-void
.end method
