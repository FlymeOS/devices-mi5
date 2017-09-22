.class public final Lcom/android/vendorsettings/ActiveNetworkScorerDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "ActiveNetworkScorerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private j()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 73
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const-string v1, "ActiveNetScorerDlg"

    const-string v2, "Can only set scorer for owner user."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return v0

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->w:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v2

    .line 78
    if-nez v2, :cond_1

    .line 79
    const-string v1, "ActiveNetScorerDlg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid scorer."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {p0}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v3

    .line 84
    if-eqz v3, :cond_2

    iget-object v4, v3, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->w:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    const-string v1, "ActiveNetScorerDlg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already the active scorer."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->setResult(I)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v2, v2, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScorerName:Ljava/lang/CharSequence;

    .line 93
    iget-object v4, p0, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 94
    const v5, 0x7f0c0502

    invoke-virtual {p0, v5}, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 95
    if-eqz v3, :cond_3

    .line 96
    const v5, 0x7f0c0503

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v0

    iget-object v0, v3, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScorerName:Ljava/lang/CharSequence;

    aput-object v0, v6, v1

    invoke-virtual {p0, v5, v6}, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 102
    :goto_1
    const v0, 0x7f0c00d2

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 103
    const v0, 0x7f0c00d3

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 104
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 105
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 106
    invoke-virtual {p0}, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->setupAlert()V

    move v0, v1

    .line 108
    goto/16 :goto_0

    .line 99
    :cond_3
    const v3, 0x7f0c0504

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-virtual {p0, v3, v5}, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 59
    packed-switch p2, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_0
    const-string v0, "network_score"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 63
    iget-object v1, p0, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->setResult(I)V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->w:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/vendorsettings/ActiveNetworkScorerDialog;->finish()V

    .line 55
    :cond_0
    return-void
.end method
