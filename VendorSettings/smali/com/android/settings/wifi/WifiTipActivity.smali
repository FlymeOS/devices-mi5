.class public Lcom/android/settings/wifi/WifiTipActivity;
.super Lmiui/app/Activity;
.source "WifiTipActivity.java"


# instance fields
.field private aDn:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiTipActivity;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/android/settings/wifi/WifiTipActivity;->aDn:I

    return v0
.end method

.method public static cE(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 149
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 150
    const-string v1, "donot_remind_wifi_cmcc_connected_dialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static dP(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, ""

    .line 137
    packed-switch p0, :pswitch_data_0

    .line 145
    :goto_0
    return-object v0

    .line 139
    :pswitch_0
    const-string v0, "donot_remind_wifi_off_airplane_on_dialog"

    goto :goto_0

    .line 142
    :pswitch_1
    const-string v0, "donot_remind_wifi_cmcc_connected_dialog"

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    const-string v0, ""

    .line 85
    iget v1, p0, Lcom/android/settings/wifi/WifiTipActivity;->aDn:I

    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_0
    return-object v0

    .line 87
    :pswitch_0
    const v0, 0x7f0c10c2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_1
    const v0, 0x7f0c10c7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static r(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 154
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "donot_remind_wifi_cmcc_connected_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    return-void
.end method

.method private yB()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    .line 37
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTipActivity;->yC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 38
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTipActivity;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 39
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTipActivity;->yD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 40
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTipActivity;->yE()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/aM;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/aM;-><init>(Lcom/android/settings/wifi/WifiTipActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 53
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTipActivity;->yF()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/aN;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/aN;-><init>(Lcom/android/settings/wifi/WifiTipActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    .line 68
    return-void
.end method

.method private yC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    const-string v0, ""

    .line 72
    iget v1, p0, Lcom/android/settings/wifi/WifiTipActivity;->aDn:I

    packed-switch v1, :pswitch_data_0

    .line 80
    :goto_0
    return-object v0

    .line 74
    :pswitch_0
    const v0, 0x7f0c10c1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :pswitch_1
    const v0, 0x7f0c10c6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private yD()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    const-string v0, ""

    .line 98
    iget v1, p0, Lcom/android/settings/wifi/WifiTipActivity;->aDn:I

    packed-switch v1, :pswitch_data_0

    .line 106
    :goto_0
    return-object v0

    .line 100
    :pswitch_0
    const v0, 0x7f0c10c3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :pswitch_1
    const v0, 0x7f0c10c8

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private yE()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    const-string v0, ""

    .line 111
    iget v1, p0, Lcom/android/settings/wifi/WifiTipActivity;->aDn:I

    packed-switch v1, :pswitch_data_0

    .line 119
    :goto_0
    return-object v0

    .line 113
    :pswitch_0
    const v0, 0x7f0c10c4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_1
    const v0, 0x7f0c10c9

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private yF()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    const-string v0, ""

    .line 124
    iget v1, p0, Lcom/android/settings/wifi/WifiTipActivity;->aDn:I

    packed-switch v1, :pswitch_data_0

    .line 132
    :goto_0
    return-object v0

    .line 126
    :pswitch_0
    const v0, 0x7f0c10c5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :pswitch_1
    const v0, 0x7f0c10ca

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_dialog_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiTipActivity;->aDn:I

    .line 31
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTipActivity;->yB()V

    .line 32
    return-void
.end method
