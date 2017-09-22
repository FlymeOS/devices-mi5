.class Lcom/android/settings/o;
.super Landroid/os/Handler;
.source "AirplaneModeEnabler.java"


# instance fields
.field final synthetic O:Lcom/android/settings/n;


# direct methods
.method constructor <init>(Lcom/android/settings/n;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/o;->O:Lcom/android/settings/n;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/o;->O:Lcom/android/settings/n;

    invoke-static {v0}, Lcom/android/settings/n;->a(Lcom/android/settings/n;)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
