.class Lcom/android/settings/hp;
.super Landroid/os/Handler;
.source "SettingsActivity.java"


# instance fields
.field final synthetic zB:Lcom/android/settings/hn;


# direct methods
.method constructor <init>(Lcom/android/settings/hn;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/settings/hp;->zB:Lcom/android/settings/hn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 431
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 433
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg_data_force_refresh"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 434
    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/settings/hp;->zB:Lcom/android/settings/hn;

    iget-object v1, p0, Lcom/android/settings/hp;->zB:Lcom/android/settings/hn;

    invoke-static {v1}, Lcom/android/settings/hn;->b(Lcom/android/settings/hn;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/hn;->a(Lcom/android/settings/hn;Ljava/util/List;)V

    goto :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
