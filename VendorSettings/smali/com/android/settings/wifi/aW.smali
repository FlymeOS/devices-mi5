.class Lcom/android/settings/wifi/aW;
.super Landroid/net/wifi/WifiManager$WpsCallback;
.source "WpsFragment.java"


# instance fields
.field final synthetic aEY:Lcom/android/settings/wifi/WpsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsFragment;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/wifi/aW;->aEY:Lcom/android/settings/wifi/WpsFragment;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$WpsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/aW;->aEY:Lcom/android/settings/wifi/WpsFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 106
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/aW;->aEY:Lcom/android/settings/wifi/WpsFragment;

    const v1, 0x7f0c0308

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/aW;->aEY:Lcom/android/settings/wifi/WpsFragment;

    sget-object v2, Lcom/android/settings/wifi/WpsFragment$State;->aFg:Lcom/android/settings/wifi/WpsFragment$State;

    invoke-static {v1, v2, v0}, Lcom/android/settings/wifi/WpsFragment;->a(Lcom/android/settings/wifi/WpsFragment;Lcom/android/settings/wifi/WpsFragment$State;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/aW;->aEY:Lcom/android/settings/wifi/WpsFragment;

    const v1, 0x7f0c030c

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 111
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/aW;->aEY:Lcom/android/settings/wifi/WpsFragment;

    const v1, 0x7f0c0309

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 114
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/aW;->aEY:Lcom/android/settings/wifi/WpsFragment;

    const v1, 0x7f0c030a

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 117
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/aW;->aEY:Lcom/android/settings/wifi/WpsFragment;

    const v1, 0x7f0c0307

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 106
    nop

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/aW;->aEY:Lcom/android/settings/wifi/WpsFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_0
    if-eqz p1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/aW;->aEY:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/WpsFragment;->a(Lcom/android/settings/wifi/WpsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/aW;->aEY:Lcom/android/settings/wifi/WpsFragment;

    sget-object v1, Lcom/android/settings/wifi/WpsFragment$State;->aFd:Lcom/android/settings/wifi/WpsFragment$State;

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WpsFragment;->a(Lcom/android/settings/wifi/WpsFragment;Lcom/android/settings/wifi/WpsFragment$State;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/aW;->aEY:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WpsFragment;->a(Lcom/android/settings/wifi/WpsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/aW;->aEY:Lcom/android/settings/wifi/WpsFragment;

    sget-object v1, Lcom/android/settings/wifi/WpsFragment$State;->aFd:Lcom/android/settings/wifi/WpsFragment$State;

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WpsFragment;->a(Lcom/android/settings/wifi/WpsFragment;Lcom/android/settings/wifi/WpsFragment$State;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSucceeded()V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/aW;->aEY:Lcom/android/settings/wifi/WpsFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/aW;->aEY:Lcom/android/settings/wifi/WpsFragment;

    sget-object v1, Lcom/android/settings/wifi/WpsFragment$State;->aFe:Lcom/android/settings/wifi/WpsFragment$State;

    iget-object v2, p0, Lcom/android/settings/wifi/aW;->aEY:Lcom/android/settings/wifi/WpsFragment;

    const v3, 0x7f0c0305

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WpsFragment;->a(Lcom/android/settings/wifi/WpsFragment;Lcom/android/settings/wifi/WpsFragment$State;Ljava/lang/String;)V

    goto :goto_0
.end method
