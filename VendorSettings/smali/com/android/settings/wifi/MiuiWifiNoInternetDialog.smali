.class public final Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;
.super Lmiui/app/AlertActivity;
.source "MiuiWifiNoInternetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private WL:Landroid/net/ConnectivityManager;

.field private aAT:Landroid/net/Network;

.field private aAU:Ljava/lang/String;

.field private aAV:Landroid/widget/CheckBox;

.field private avR:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lmiui/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;)Landroid/net/Network;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->aAT:Landroid/net/Network;

    return-object v0
.end method

.method private nY()V
    .locals 5

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 117
    const v1, 0x10403a8

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 118
    const v1, 0x7f0c0330

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->aAU:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 119
    const v1, 0x7f0c0e32

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 120
    const v1, 0x7f0c0e31

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 121
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 122
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 124
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 125
    const v2, 0x1090031

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 127
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 129
    const v0, 0x1020305

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->aAV:Landroid/widget/CheckBox;

    .line 130
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->aAV:Landroid/widget/CheckBox;

    const v1, 0x7f0c0331

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->setupAlert()V

    .line 133
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 145
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 146
    :goto_0
    if-eqz v1, :cond_1

    const-string v0, "Connect"

    .line 147
    :goto_1
    iget-object v2, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->aAV:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 149
    packed-switch p2, :pswitch_data_0

    .line 158
    :goto_2
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 146
    :cond_1
    const-string v0, "Ignore"

    goto :goto_1

    .line 152
    :pswitch_0
    iget-object v3, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->WL:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->aAT:Landroid/net/Network;

    invoke-virtual {v3, v4, v1, v2}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 153
    const-string v1, "WifiNoInternetDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " network="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->aAT:Landroid/net/Network;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_2

    const-string v0, " and remember"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v0, ""

    goto :goto_3

    .line 149
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 53
    invoke-super {p0, p1}, Lmiui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.PROMPT_UNVALIDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "netId"

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    :cond_0
    const-string v1, "WifiNoInternetDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", exiting"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->finish()V

    .line 113
    :goto_0
    return-void

    .line 65
    :cond_1
    :try_start_0
    new-instance v1, Landroid/net/Network;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/net/Network;-><init>(I)V

    iput-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->aAT:Landroid/net/Network;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_1
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->aAT:Landroid/net/Network;

    if-nez v1, :cond_2

    .line 71
    const-string v1, "WifiNoInternetDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t determine network from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' , exiting"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->finish()V

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->aAT:Landroid/net/Network;

    goto :goto_1

    .line 78
    :cond_2
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 79
    new-instance v0, Lcom/android/vendorsettings/wifi/D;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/wifi/D;-><init>(Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;)V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->avR:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 98
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->WL:Landroid/net/ConnectivityManager;

    .line 99
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->WL:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->avR:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 101
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->WL:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->aAT:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_4

    .line 103
    :cond_3
    const-string v1, "WifiNoInternetDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->aAT:Landroid/net/Network;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->finish()V

    goto/16 :goto_0

    .line 107
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->aAU:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->aAU:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->aAU:Ljava/lang/String;

    const-string v1, "^\"|\"$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->aAU:Ljava/lang/String;

    .line 112
    :cond_5
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->nY()V

    goto/16 :goto_0

    .line 66
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->avR:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->WL:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->avR:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiNoInternetDialog;->avR:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 141
    :cond_0
    invoke-super {p0}, Lmiui/app/AlertActivity;->onDestroy()V

    .line 142
    return-void
.end method
