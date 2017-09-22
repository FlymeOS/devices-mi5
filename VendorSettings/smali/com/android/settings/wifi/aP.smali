.class Lcom/android/vendorsettings/wifi/aP;
.super Landroid/net/wifi/WifiManager$WpsCallback;
.source "WpsDialog.java"


# instance fields
.field final synthetic aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/WpsDialog;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/aP;->aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$WpsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3

    .prologue
    .line 103
    packed-switch p1, :pswitch_data_0

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aP;->aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsDialog;->a(Lcom/android/vendorsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0308

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/aP;->aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;

    sget-object v2, Lcom/android/vendorsettings/wifi/WpsDialog$DialogState;->aER:Lcom/android/vendorsettings/wifi/WpsDialog$DialogState;

    invoke-static {v1, v2, v0}, Lcom/android/vendorsettings/wifi/WpsDialog;->a(Lcom/android/vendorsettings/wifi/WpsDialog;Lcom/android/vendorsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 121
    return-void

    .line 105
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aP;->aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsDialog;->a(Lcom/android/vendorsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c030c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aP;->aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsDialog;->a(Lcom/android/vendorsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0309

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_3
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aP;->aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsDialog;->a(Lcom/android/vendorsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c030a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :pswitch_4
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aP;->aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsDialog;->a(Lcom/android/vendorsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0307

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aP;->aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;

    sget-object v1, Lcom/android/vendorsettings/wifi/WpsDialog$DialogState;->aEO:Lcom/android/vendorsettings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/vendorsettings/wifi/aP;->aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;

    invoke-static {v2}, Lcom/android/vendorsettings/wifi/WpsDialog;->a(Lcom/android/vendorsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0304

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/wifi/WpsDialog;->a(Lcom/android/vendorsettings/wifi/WpsDialog;Lcom/android/vendorsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aP;->aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;

    sget-object v1, Lcom/android/vendorsettings/wifi/WpsDialog$DialogState;->aEO:Lcom/android/vendorsettings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/vendorsettings/wifi/aP;->aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;

    invoke-static {v2}, Lcom/android/vendorsettings/wifi/WpsDialog;->a(Lcom/android/vendorsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0303

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/wifi/WpsDialog;->a(Lcom/android/vendorsettings/wifi/WpsDialog;Lcom/android/vendorsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSucceeded()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aP;->aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;

    sget-object v1, Lcom/android/vendorsettings/wifi/WpsDialog$DialogState;->aEP:Lcom/android/vendorsettings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/vendorsettings/wifi/aP;->aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;

    invoke-static {v2}, Lcom/android/vendorsettings/wifi/WpsDialog;->a(Lcom/android/vendorsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0305

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/wifi/WpsDialog;->a(Lcom/android/vendorsettings/wifi/WpsDialog;Lcom/android/vendorsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 99
    return-void
.end method
