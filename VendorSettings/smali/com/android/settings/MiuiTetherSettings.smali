.class public Lcom/android/settings/MiuiTetherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private aN:Landroid/os/UserManager;

.field private aR:Z

.field private je:Landroid/net/wifi/WifiManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private tS:Lcom/android/settings/wifi/ad;

.field private tT:Landroid/preference/CheckBoxPreference;

.field private tU:[Ljava/lang/String;

.field private tV:[Ljava/lang/String;

.field private tW:Landroid/preference/Preference;

.field private tX:Landroid/preference/Preference;

.field private tY:Landroid/preference/PreferenceCategory;

.field private tZ:Lmiui/preference/ValuePreference;

.field private ua:Lcom/android/settings/wifi/ac;

.field private ub:Landroid/net/wifi/WifiConfiguration;

.field private uc:I

.field private ud:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/MiuiTetherSettings;->uc:I

    .line 135
    new-instance v0, Lcom/android/settings/fv;

    invoke-direct {v0, p0}, Lcom/android/settings/fv;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private N(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-static {}, Lcom/android/settings/fy;->gg()Lcom/android/settings/fy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fy;->q(Landroid/content/Context;)I

    move-result v0

    .line 171
    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->tZ:Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110014

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tZ:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v7}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tZ:Lmiui/preference/ValuePreference;

    const v1, 0x7f0c0f83

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiTetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tZ:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v6}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private Y(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 409
    iput p1, p0, Lcom/android/settings/MiuiTetherSettings;->uc:I

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/g;->cL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->ud:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->ud:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/settings/MiuiTetherSettings;->uc:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/MiuiTetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->gd()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/net/ConnectivityManager;)V
    .locals 3

    .prologue
    .line 384
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c103e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/fx;

    invoke-direct {v2, p0}, Lcom/android/settings/fx;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/fw;

    invoke-direct {v2, p0}, Lcom/android/settings/fw;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 405
    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiTetherSettings;I)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->Y(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiTetherSettings;Z)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->N(Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiTetherSettings;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tU:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/MiuiTetherSettings;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tX:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/MiuiTetherSettings;)Z
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->gb()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/android/settings/MiuiTetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tT:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private gb()Z
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/ac;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->tV:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 183
    const v1, 0x7f0c0007

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiTetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private gc()V
    .locals 8

    .prologue
    const v7, 0x7f0c036f

    const v4, 0x11070045

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 267
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->je:Landroid/net/wifi/WifiManager;

    .line 268
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tV:[Ljava/lang/String;

    .line 271
    const-string v0, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tW:Landroid/preference/Preference;

    .line 273
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->tW:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tV:[Ljava/lang/String;

    aget-object v0, v0, v5

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_2

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    :goto_1
    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->gf()V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/ac;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 291
    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->tW:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->tV:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 285
    :cond_2
    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private gd()V
    .locals 2

    .prologue
    .line 438
    iget v0, p0, Lcom/android/settings/MiuiTetherSettings;->uc:I

    packed-switch v0, :pswitch_data_0

    .line 446
    :goto_0
    return-void

    .line 440
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tS:Lcom/android/settings/wifi/ad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/ad;->bH(Z)V

    goto :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private ge()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/R;->e(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 468
    if-nez v1, :cond_0

    .line 481
    :goto_0
    return-void

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0401a7

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 472
    const v0, 0x7f130359

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 473
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 474
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v3, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v0, v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c0f7b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0f7d

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 544
    const-string v0, "config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    .line 545
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->gf()V

    .line 547
    :cond_0
    return-void
.end method

.method public ay()I
    .locals 1

    .prologue
    .line 524
    const v0, 0x7f0c09ba

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const-class v0, Lcom/android/settings/TetherSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gf()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 508
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->je:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 511
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/ac;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 516
    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->tW:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c036f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->tV:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 520
    :cond_0
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 421
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 422
    if-nez p1, :cond_2

    .line 423
    if-ne p2, v0, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/MiuiTetherSettings;->uc:I

    invoke-static {v0, v1}, Lcom/android/settings/TetherService;->f(Landroid/content/Context;I)V

    .line 425
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->gd()V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iput v0, p0, Lcom/android/settings/MiuiTetherSettings;->uc:I

    goto :goto_0

    .line 431
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 432
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/MiuiTetherSettings;->a(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 484
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->ua:Lcom/android/settings/wifi/ac;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ac;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    .line 486
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 493
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->je:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 494
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/ac;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 499
    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->tW:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c036f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->tV:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 504
    :cond_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 198
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 200
    if-eqz p1, :cond_0

    .line 201
    const-string v0, "TETHER_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/MiuiTetherSettings;->uc:I

    .line 203
    :cond_0
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->addPreferencesFromResource(I)V

    .line 205
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->aN:Landroid/os/UserManager;

    .line 207
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->aN:Landroid/os/UserManager;

    const-string v2, "no_config_tethering"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/MiuiTetherSettings;->aR:Z

    .line 210
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 257
    :goto_0
    return-void

    .line 214
    :cond_2
    const-string v0, "enable_wifi_ap"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tT:Landroid/preference/CheckBoxPreference;

    .line 216
    const-string v0, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 217
    const-string v0, "tether_share_qrcode"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tX:Landroid/preference/Preference;

    .line 218
    const-string v0, "tether_device_management"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tY:Landroid/preference/PreferenceCategory;

    .line 219
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tY:Landroid/preference/PreferenceCategory;

    const-string v3, "show_connected_devices"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tZ:Lmiui/preference/ValuePreference;

    .line 221
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 223
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tU:[Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tU:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 226
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 227
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/settings/iC;->iu()Z

    move-result v0

    if-nez v0, :cond_6

    .line 228
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->gc()V

    .line 229
    new-instance v0, Lcom/android/settings/wifi/ad;

    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->tT:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/ad;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tS:Lcom/android/settings/wifi/ad;

    .line 232
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->gb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->tX:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->N(Z)V

    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 240
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-static {}, Lcom/android/settings/fy;->gg()Lcom/android/settings/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fy;->dv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11080005

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->ud:[Ljava/lang/String;

    goto/16 :goto_0

    .line 225
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 247
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->tT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->tX:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->tY:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 299
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 301
    new-instance v1, Lcom/android/settings/wifi/ac;

    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/ac;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->ua:Lcom/android/settings/wifi/ac;

    .line 302
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->ua:Lcom/android/settings/wifi/ac;

    .line 305
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 340
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 341
    if-eqz v0, :cond_2

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 344
    const-string v0, "connectivity"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 345
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    .line 346
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_0

    move v1, v2

    .line 347
    :goto_0
    sget-boolean v6, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v6, :cond_1

    if-nez v5, :cond_1

    if-eqz v1, :cond_1

    .line 348
    invoke-direct {p0, v4, v0}, Lcom/android/settings/MiuiTetherSettings;->a(Landroid/content/Context;Landroid/net/ConnectivityManager;)V

    .line 363
    :goto_1
    return v3

    :cond_0
    move v1, v3

    .line 346
    goto :goto_0

    .line 351
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/MiuiTetherSettings;->Y(I)V

    :goto_2
    move v3, v2

    .line 363
    goto :goto_1

    .line 356
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/g;->cL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/settings/TetherService;->g(Landroid/content/Context;I)V

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tS:Lcom/android/settings/wifi/ad;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/ad;->bH(Z)V

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tW:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 453
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 454
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 455
    const-string v0, "config"

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->ub:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 457
    :cond_0
    const-class v0, Lcom/android/settings/wifi/EditTetherFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiTetherSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 463
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tX:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 460
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->ge()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 261
    const-string v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/settings/MiuiTetherSettings;->uc:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 263
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 310
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 311
    iget-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->aR:Z

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 314
    if-eqz v0, :cond_0

    .line 315
    const v1, 0x7f0c0652

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tS:Lcom/android/settings/wifi/ad;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tS:Lcom/android/settings/wifi/ad;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ad;->resume()V

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 328
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 329
    iget-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->aR:Z

    if-eqz v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tS:Lcom/android/settings/wifi/ad;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tT:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 334
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->tS:Lcom/android/settings/wifi/ad;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ad;->pause()V

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 193
    const/16 v0, 0x5a

    return v0
.end method
