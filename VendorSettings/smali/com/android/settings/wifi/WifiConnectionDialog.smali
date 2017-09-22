.class public Lcom/android/settings/wifi/WifiConnectionDialog;
.super Lmiui/app/Activity;
.source "WifiConnectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private aDn:I

.field private aDo:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method private bJ(Z)V
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_dialog_remind_type"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static cA(Landroid/content/Context;)Z
    .locals 6

    .prologue
    .line 126
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v1, "donot_remind_switch_to_wifi_dialog"

    const-wide/32 v4, 0x7fffffff

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static cB(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_dialog_remind_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static cC(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connect_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getDialogTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDn:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 80
    const v0, 0x7f0c10cd

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0c0f51

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMessage()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const v0, 0x7f0c0f53

    const/4 v2, 0x1

    .line 84
    iget v1, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDn:I

    if-ne v2, v1, :cond_1

    .line 85
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->cC(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0c0f52

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiConnectionDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_1
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDn:I

    if-ne v1, v2, :cond_3

    .line 87
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0c10ce

    goto :goto_1

    .line 89
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nY()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 68
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v1, v0}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    .line 70
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 72
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->cB(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const v2, 0x7f0c10cf

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiConnectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 73
    const v0, 0x1040009

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 74
    const v0, 0x1040013

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    .line 76
    return-void
.end method

.method private y(J)V
    .locals 3

    .prologue
    .line 131
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "donot_remind_switch_to_wifi_dialog"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    return-void
.end method

.method private ym()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConnectionDialog;->startActivity(Landroid/content/Intent;)V

    .line 152
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 95
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 96
    iget v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDn:I

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_3

    .line 97
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->cC(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->ym()V

    :cond_0
    :goto_0
    move-object v0, p1

    .line 111
    check-cast v0, Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConnectionDialog;->bJ(Z)V

    .line 121
    :cond_1
    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->finish()V

    .line 123
    return-void

    .line 100
    :cond_2
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 101
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v3, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 102
    const-wide/32 v0, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConnectionDialog;->y(J)V

    goto :goto_0

    .line 104
    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDn:I

    if-ne v3, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_4

    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->ym()V

    goto :goto_0

    .line 108
    :cond_4
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_0

    .line 111
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 112
    :cond_6
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 113
    iget v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDn:I

    if-ne v2, v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->cC(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConnectionDialog;->y(J)V

    goto :goto_2

    .line 115
    :cond_7
    iget v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDn:I

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 116
    new-instance v2, Landroid/content/Intent;

    const-string v0, "miui.intent.action.SELECT_WIFI_AP"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v3, "extra_best_ap"

    move-object v0, v1

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiConnectionDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 43
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 46
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "miui.intent.action.SWITCH_TO_WIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iput v2, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDn:I

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_best_ap"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDo:Landroid/net/wifi/WifiConfiguration;

    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_1

    .line 52
    const-string v0, "SwitchToWifiDialog"

    const-string v1, "config is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->finish()V

    .line 66
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v1, "miui.intent.action.SELECT_WIFI_AP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDn:I

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_best_ap"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->aDo:Landroid/net/wifi/WifiConfiguration;

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->nY()V

    goto :goto_0

    .line 60
    :cond_2
    const-string v1, "SwitchToWifiDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->finish()V

    goto :goto_0
.end method
